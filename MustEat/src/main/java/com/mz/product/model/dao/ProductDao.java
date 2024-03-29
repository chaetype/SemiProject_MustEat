package com.mz.product.model.dao;

import static com.mz.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.mz.common.model.vo.PageInfo;
import com.mz.member.model.dao.MemberDao;
import com.mz.product.model.vo.Basket;
import com.mz.product.model.vo.OrderDetail;
import com.mz.product.model.vo.OrderList;
import com.mz.product.model.vo.OrderPro;
import com.mz.product.model.vo.Product;
import com.mz.product.model.vo.ProductReview;

public class ProductDao {
	//메소드 위에 주석으로 이름 달아두기!!!
	
	// 은영 (xml 파일 연결)
	private Properties prop = new Properties();
	
	public ProductDao() {
		
		String filePath = MemberDao.class.getResource("/db/sql/product-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	
	}
	
	// 은영
	/**
	 * 장바구니, 상품준비중, 배송중, 배송완료, 상품취소, 구매확정 주문 수량 조회하는 Dao
	 * @param memId : 로그인한 회원 아이디
	 * @return : 배송현황에 따른 주문 수량 정보가 담긴 OrderPro 객체
	 */
	public OrderPro countOrder(Connection conn, String memId) {
		
		// select => 주문현황에 따른 주문수량 => ResultSet => int
		OrderPro op = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("countOrder");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				op = new OrderPro( rset.getString("MEM_ID")
								 , rset.getInt("BASKET")
								 , rset.getInt("CONFIRM")
								 , rset.getInt("CANCEL")
								 , rset.getInt("READY")
								 , rset.getInt("TRANSIT")
								 , rset.getInt("DELIVERED")
						);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return op;
		
	}
	
	// 은영
	/**
	 * 마이페이지에서 밀키트 리뷰 중 최신 2개글 조회하는 Dao
	 * @param memId : 로그인한 회원 아이디
	 * @return : 조회된 밀키트 리뷰가 담긴 ArrayList<ProductReview> 객체
	 */
	public ArrayList<ProductReview> selectNewProductReview(Connection conn, String memId) {
		
		// 조회된 행 수 반환 => ResultSet => ArrayList
		ArrayList<ProductReview> proList = new  ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectNewProductReview");
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memId);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				proList.add(new ProductReview(rset.getDate("REVIEW_ENROLLDATE")
				                             ,rset.getInt("SCRAP_COUNT")
				                             ,rset.getString("PRODUCT_NAME")
				                             ));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return proList;
		
	}
	
	// 은영
	/**
	 * 마이페이지 주문상세 리스트 중 최신 2개 조회하는 Dao
	 * @param memId : 로그인한 회원 아이디
	 * @return : 주문상세 리스트가 들어간 ArrayList<OrderPro> 객체
	 */
	public ArrayList<OrderPro> selectNewOrder(Connection conn, String memId) {
		
		// 조회된 행 수 반환 => ResultSet => ArrayList
		ArrayList<OrderPro> opList = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectNewOrder");
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memId);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				opList.add(new OrderPro( rset.getDate("ORDER_DATE")
									   , rset.getInt("ORDER_STATUS")
									   , rset.getInt("TOTAL_PRICE")
									   , rset.getString("DELIVERY_STATUS")
									   , rset.getString("PRODUCT_NAME")
									   ));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return opList;
		
	}
	
	// 성범
	public ArrayList<Product> selectList(Connection conn){
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new Product(rset.getInt("product_code"),
									 rset.getString("product_name"),
									 rset.getInt("price"),
									 rset.getString("img_path")));
				
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
		
	}
	
	
	
	// 은영
	/**
	 * 장바구니 목록에서 '월'만 조회하는 Dao
	 * @param memId : 로그인한 회원 아이디
	 * @return : 장바구니 담은 '월'이 담긴 ArrayList<Basket> 객체
	 */
	public ArrayList<Basket> selectMonth(Connection conn, String memId) {
		
		// select => 여러행 조회 => ArrayList
		ArrayList<Basket> month = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMonth");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memId);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				month.add(new Basket(rset.getString("MONTH")));
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return month;
		
	}
	
	// 은영
	/**
	 * 장바구니에 담긴 상품 목록들을 조회하는 Dao
	 * @param memId : 로그인한 회원 아이디
	 * @return : 장바구니에 담긴 상품 목록이 담긴 ArrayList<Basket> 객체
	 */
	public ArrayList<Basket> selectBasketList(Connection conn, String memId) {
		
		// select => 여러행 조회 => ArrayList
		ArrayList<Basket> bList = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectBasketList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memId);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				bList.add(new Basket(rset.getString("MEM_ID")
						           , rset.getString("PRODUCT_CODE")
						           , rset.getInt("AMOUNT")
						           , rset.getDate("BASKET_DATE")
						           , rset.getInt("BASKET_NO")
						           , rset.getString("MONTH")
						           , rset.getInt("PRICE")
						           , rset.getString("SELLER")
						           , rset.getString("SELLER_PHONE")
						           , rset.getString("PRODUCT_NAME")
						           ));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return bList;
		
	}
	
	// 성범
	/*
	 * 밀키트 상세페이지
	 */
	public Product detailProduct(Connection conn, int productNo) {
		Product p = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("detailProduct");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, productNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				p = new Product(rset.getInt("product_code"),
						    rset.getString("product_name"),
						    rset.getInt("price"),
						    rset.getDate("enroll_date"),
						    rset.getString("seller"),
						    rset.getString("seller_phone"),
						    rset.getString("sales_unit"),
						    rset.getString("capacity"),
						    rset.getString("packing"),
						    rset.getString("allergy"),
						    rset.getString("expiration_date"),
						    rset.getString("img_path"));	
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return p;
	}

	// 은영
	/**
	 * 상품준비중, 배송중, 배송완료에서 '월'만 조회하는 Dao
	 * @param str : 배송현황이 담긴 문자열 (상품준비중, 배송중, 배송완료)
	 * @param memId : 로그인한 회원 아이디
	 * @return : 배송현황에 따라 진행된 '월'이 담긴 ArrayList<OrderPro> 객체
	 */
	public ArrayList<OrderPro> selectOrderMonth(Connection conn, String str, String memId) {
		
		// select => 여러행 조회 => ArrayList
		ArrayList<OrderPro> month = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectOrderMonth");
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memId);
			pstmt.setString(2, str);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				month.add(new OrderPro(rset.getString("MONTH")));
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally { 
			close(rset);
			close(pstmt);
		}
		
		return month;
		
	}
	
	// 은영
	/**
	 * 상품준비중, 배송중, 배송완료에서 상품 목록을 조회하는 Service
	 * @param str : 배송현황이 담긴 문자열 (상품준비중, 배송중, 배송완료)
	 * @param memId : 로그인한 회원 아이디
	 * @return : 배송현황에 따라 담긴 상품 목록들이 담긴 ArrayList<OrderPro> 객체
	 */
	public ArrayList<OrderPro> selectOrderList(Connection conn, String str, String memId) {
		
		// select => 여러행 조회 => ArrayList
		ArrayList<OrderPro> opList = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectOrderList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memId);
			pstmt.setString(2, str);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {

				opList.add(new OrderPro(
									   rset.getInt("ORDER_NO")
									 , rset.getInt("ORDER_QUENTITY")
						 			 , rset.getDate("ORDER_DATE")
						 			 , rset.getInt("ORDER_STATUS")
									 , rset.getInt("TOTAL_PRICE")
									 , rset.getString("DELIVERY_STATUS")
									 , rset.getString("PRODUCT_NAME")
									 , rset.getString("PRODUCT_CODE")
									 , rset.getString("SELLER")
									 , rset.getString("SELLER_PHONE")
									 , rset.getString("MONTH")
									 ));
			}
		}catch(SQLException e)	{
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
			
		
		return opList;
		
	}
	
	// 은영
	/**
	 * 상품준비중, 배송중, 배송완료에서 '구매확정'처리하는 Dao
	 * @param orderNo : 사용자가 선택한 주문번호
	 * @return : 구매확정 성공여부가 담긴 int형 변수(성공 : 1 | 실패 : 0)
	 */
	public int updatePurchaseConfirm(Connection conn, int orderNo) {
		
		// update => 처리된 행 수 반환 => int형 변수
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updatePurchaseConfirm");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, orderNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
		
	}
	
	// 은영
	/**
	 * 상품준비중, 배송중, 배송완료에서 '구매취소'처리하는 Service
	 * @param orderNo : 사용자가 선택한 주문번호
	 * @return : 구매취소 성공여부가 담긴 int형 변수(성공 : 1 | 실패 : 0)
	 */
	 public int updatePurchaseCancel(Connection conn, int orderNo) {
	      
	      // update => 처리된 행 수 반환 => int형 변수
	      int result = 0;
	      
	      PreparedStatement pstmt = null;
	      String sql = prop.getProperty("updatePurchaseCancel");
	      
	      try {
	         pstmt = conn.prepareStatement(sql);
	         
	         pstmt.setInt(1, orderNo);
	         
	         result = pstmt.executeUpdate();
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         close(pstmt);
	      }
	      
	      return result;
	      
	   }
	
	// 성범
	/*
	 * 밀키트 상세페이지 리뷰 insert
	 */
	public int insertReview(Connection conn, ProductReview pr) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertReview");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pr.getPrReviewContent());
			pstmt.setInt(2, pr.getProductCode());
			pstmt.setString(3, pr.getReviewWriter());
			pstmt.setInt(4, pr.getPrReviewRate());

			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
				
	}
	
	// 성범
	/*
	 * 밀키트 상세페이지 리뷰 select ajax
	 */
	public ArrayList<ProductReview> selectReview(Connection conn, int productCode){
		ArrayList<ProductReview> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectReview");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, productCode);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new ProductReview(rset.getInt("review_no"),
										   rset.getString("mem_id"),
										   rset.getString("pr_review_content"),
										   rset.getInt("pr_review_rate")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}


	// 은영
	/**
	 * 주문 전체 목록 요청하는 Service
	 * @param memId : 로그인한 회원 아이디
	 * @return : 주문 목록이 들어가있는 ArrayList<OrderPro> 객체
	 */
	public ArrayList<OrderPro> selectAllOrderList(Connection conn, String memId) {
		
		// select => 주문현황에 따른 주문수량 => ResultSet => ArrayList
		ArrayList<OrderPro> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectAllOrderList");
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memId);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new OrderPro(
									   rset.getInt("ORDER_NO")
									 , rset.getInt("ORDER_QUENTITY")
						 			 , rset.getDate("ORDER_DATE")
						 			 , rset.getInt("ORDER_STATUS")
									 , rset.getInt("TOTAL_PRICE")
									 , rset.getString("DELIVERY_STATUS")
									 , rset.getString("PRODUCT_NAME")
									 , rset.getString("PRODUCT_CODE")
									 , rset.getString("SELLER")
									 , rset.getString("SELLER_PHONE")
									 , rset.getString("MONTH")
									 ));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
	// 은영
	/**
	 * 주문 전체 '월'만 조회 요청하는 Service
	 * @param memId : 로그인한 회원 아이디
	 * @return : 주문한 '월'이 들어가있는 ArrayList<OrderPro> 객체
	 */
	public ArrayList<OrderPro> selectAllOrderMonth(Connection conn, String memId) {
		
		// select => 주문현황에 따른 주문수량 => ResultSet => ArrayList
		ArrayList<OrderPro> month = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectAllOrderMonth");
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memId);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				month.add(new OrderPro(rset.getString("MONTH")));
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return month;
		
	}
	

	
	// 성범
	/*
	 * 밀키트 주문시 배송지 입력 insert
	 */
	public int insertAddress(Connection conn, OrderPro op) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertAddress");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, op.getMemNo());
			pstmt.setInt(2, op.getOrderQuentity());
			pstmt.setString(3, op.getMemo());
			pstmt.setInt(4, op.getTotalPrice());
			pstmt.setString(5, op.getDeliverType());
			pstmt.setString(6, op.getDelName());
			pstmt.setString(7, op.getDelPhone());
			pstmt.setString(8, op.getDelEmail());
			pstmt.setString(9, op.getDelAddress());
			pstmt.setString(10, op.getDelAddressCode());
			pstmt.setString(11, op.getDelAddressDetail());
			pstmt.setString(12, op.getDelAddressRef());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	// 은영
	/**
	 * 주문 상세 페이지에서 주문 페이지에 담긴 정보들을 조회하는 Service
	 * @param memId : 로그인한 회원 아이디
	 * @param orderNo : 주문 번호 (해당 번호의 주문 상세페이지로 이동)
	 * @return : 해당 주문 번호에 속해있는 주문 페이지 정보가 담겨있는 OrderDetail객체
	 */
	public OrderDetail selectOrderDetail(Connection conn, String memId, int orderNo) {
		
		// 조회 => 한 행 => ResultSet => OrderDetail
		OrderDetail op = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectOrderDetail");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memId);
			pstmt.setInt(2, orderNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				
				op = new OrderDetail( rset.getInt("ORDER_NO")
									, rset.getDate("ORDER_DATE")
						            , rset.getInt("TOTAL_PRICE")
						            , rset.getInt("DELIVERY_PRICE")
						            , rset.getInt("DISCOUNT_FEE")
						            , rset.getInt("TOTAL")
						            , rset.getString("DEL_NAME")
						            , rset.getString("DEL_PHONE")
						            , rset.getString("DEL_EMAIL")
						            , rset.getInt("DEL_ADDRESS_CODE")
						            , rset.getString("DEL_ADDRESS")
						            , rset.getString("DEL_ADDRESS_DETAIL")
						            , rset.getString("DEL_ADDRESS_REF")
						            , rset.getString("MEMO")
						            , rset.getString("MEM_NAME")
						            , rset.getString("MEM_PHONE"));
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return op;

	}

	// 은영
	/**
	 * 주문 상세 페이지 조회처리하는 Service
	 * @param memId : 로그인한 회원 아이디
	 * @param orderNo : 주문 번호 (해당 번호의 주문 상세페이지로 이동)
	 * @return : 해당 주문 번호에 속해있는 주문 상세 정보가 담겨있는 ArrayList<OrderDetail>객체
	 */
	public ArrayList<OrderDetail> selectOrderDetailList(Connection conn, String memId, int orderNo) {
		
		// 조회 => 한 행 또는 여러행 => ResultSet => ArrayList<OrderDetail>
		ArrayList<OrderDetail> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectOrderDetail");
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memId);
			pstmt.setInt(2, orderNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new OrderDetail( rset.getInt("ORDER_NO")
							            , rset.getString("PRODUCT_NAME")
							            , rset.getInt("ORDER_QUENTITY")
							            , rset.getInt("TOTAL_PRICE")
							            , rset.getInt("DELIVERY_PRICE")
							            , rset.getString("SELLER")
							            , rset.getString("SELLER_PHONE")
							            , rset.getString("DELIVERY_STATUS")
							            ));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}

	// 성범
		/*
		 * 밀키트 상세페이지에서 장바구니로 insert
		 */
	public int insertCart(Connection conn, Basket bs) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertCart");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bs.getMemNo());
			pstmt.setString(2, bs.getProductCode());
			pstmt.setInt(3, bs.getCount());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	public int selectListCount(Connection conn) {
		int listCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt("COUNT");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return listCount;
		
	}
	public ArrayList<Product> selectList(Connection conn, PageInfo pi){
		ArrayList<Product> listP = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectmealkit");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() - 1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				listP.add(new Product(rset.getInt("product_code"),
								     rset.getString("product_name"),
								     rset.getInt("price"),
								     rset.getString("img_path")
					      		   ));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return listP;
		
		
	}
	
	// 성범
		/*
		 * 관리자페이지 상품 insert
		 */
	public int insertProduct(Connection conn, Product p) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertProduct");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, p.getProductName());
			pstmt.setInt(2, p.getPrice());
			pstmt.setString(3,p.getSeller());
			pstmt.setString(4,p.getSellerPhone());
			pstmt.setString(5, p.getSalesUnit());
			pstmt.setString(6, p.getCapacity());
			pstmt.setString(7, p.getPacking());
			pstmt.setString(8, p.getAllergy());
			pstmt.setString(9, p.getExpirationDate());
			pstmt.setString(10, p.getImgPath());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	// 혜림
	/** 밀키트 리뷰 삭제 메소드
	 * @param conn Connection 객체
	 * @param delStr 삭제하고자 하는 글번호배열
	 * @return 성공/실패 결과
	 */
	public int deleteReview(Connection conn, String delStr) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteReview") + "WHERE REVIEW_NO IN (" + delStr + ")";
		
		try {
			pstmt = conn.prepareStatement(sql);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
		
	}
	
	// 은영
	/**
	 * 장바구니 상품 삭제처리하는 Dao
	 * @param memNo : 로그인한 회원 번호
	 * @param no : 삭제처리하고자하는 장바구니 번호
	 * @return : 장바구니 삭제여부가 담긴 int형 변수
	 */
	public int deleteBasket(Connection conn, String no) {
		
		// delete => 처리된 행 수 반환 => int형 변수
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteBasket") + "WHERE BASKET_NO IN (" + no + ")";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
		
	}
	
	// 성범
    /*
     * 장바구니 밀키트 구매
     */
    public Basket cartPay(Connection conn, int basNo) {
       Basket bs = null;
       PreparedStatement pstmt = null;
       ResultSet rset = null;
       String sql = prop.getProperty("cartPay");
       try {
          pstmt = conn.prepareStatement(sql);
          pstmt.setInt(1, basNo);
          
          rset = pstmt.executeQuery();
          if(rset.next()) {
             bs = new Basket(rset.getString("mem_no"),
                           rset.getString("product_code"),
                           rset.getInt("amount"),
                           rset.getDate("basket_date"),
                           rset.getInt("price"),
                           rset.getString("product_name"));
          }
       } catch (SQLException e) {
          e.printStackTrace();
       } finally {
          close(rset);
          close(pstmt);
       }
       
       return bs;
    }
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
