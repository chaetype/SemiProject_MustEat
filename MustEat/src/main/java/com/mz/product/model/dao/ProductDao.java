package com.mz.product.model.dao;

import static com.mz.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.Month;
import java.util.ArrayList;
import java.util.Properties;

import com.mz.member.model.dao.MemberDao;
import com.mz.product.model.vo.AddressPayment;
import com.mz.product.model.vo.Basket;
import com.mz.product.model.vo.OrderPro;
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
	 * 배송현황 리스트 조회하는 Dao
	 * @param delivery : 배송현황 정보가 담긴 문자열 (상품준비중, 배송중, 배송완료)
	 * @param memId : 로그인한 회원 아이디
	 * @return : 배송현황 리스트 정보가 담긴 ArrayList<OrderPro>
	 */
	public ArrayList<OrderPro> deliveryStatusList(Connection conn, String delivery, String memId) {
		
		// 배송현황 조회 => ArrayList<OrderPro> => ResultSet
		ArrayList<OrderPro> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("deliveryStatusList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, delivery);
			pstmt.setString(2, memId);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new OrderPro(rset.getInt("order_no")
						      		, rset.getInt("order_quentity")
						      		, rset.getDate("order_date")
						      		, rset.getInt("total_price")
						      		, rset.getString("delivery_status")
						      		, rset.getString("mem_id")
						      		, rset.getString("product_name")
						      		, rset.getString("seller")
						      		, rset.getString("seller_phone")
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
	public int insertAp(Connection conn, AddressPayment ap) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertAp");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ap.getMemName());
			pstmt.setString(2, ap.getMemPhone());
			pstmt.setString(3, ap.getMemEmail());
			pstmt.setString(4, ap.getAddress());
			pstmt.setString(5, ap.getRequest());
			
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
						           , rset.getString("PRODUCT_NAME")
						           , rset.getInt("AMOUNT")
						           , rset.getDate("BASKET_DATE")
						           , rset.getString("MONTH")
						           , rset.getInt("PRICE")
						           , rset.getString("SELLER")
						           , rset.getString("SELLER_PHONE")
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
	
}
