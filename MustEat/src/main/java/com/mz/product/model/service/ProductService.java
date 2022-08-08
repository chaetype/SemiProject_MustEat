package com.mz.product.model.service;

import static com.mz.common.JDBCTemplate.close;
import static com.mz.common.JDBCTemplate.commit;
import static com.mz.common.JDBCTemplate.getConnection;
import static com.mz.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.mz.common.model.vo.PageInfo;
import com.mz.product.model.dao.ProductDao;
import com.mz.product.model.vo.Basket;
import com.mz.product.model.vo.OrderDetail;
import com.mz.product.model.vo.OrderList;
import com.mz.product.model.vo.OrderPro;
import com.mz.product.model.vo.Product;
import com.mz.product.model.vo.ProductReview;

public class ProductService {
	//메소드 위에 주석으로 이름 달아두기!!!
	
	// 은영
	/**
	 * 장바구니, 상품준비중, 배송중, 배송완료, 상품취소, 구매확정 주문 수량 조회하는 Service
	 * @param memId : 로그인한 회원 아이디
	 * @return : 배송현황에 따른 주문 수량 정보가 담긴 OrderPro 객체
	 */
	public OrderPro countOrder(String memId) {
		
		Connection conn = getConnection();
		
		OrderPro op = new ProductDao().countOrder(conn, memId);
		
		close(conn);
		
		return op;
	}
	

	// 은영
	/**
	 * 마이페이지에서 밀키트 리뷰 중 최신 2개글 조회하는 Dao
	 * @param memId : 로그인한 회원 아이디
	 * @return : 조회된 밀키트 리뷰가 담긴 ArrayList<ProductReview> 객체
	 */
	public ArrayList<ProductReview> selectNewProductReview(String memId) {
		
		Connection conn = getConnection();

		ArrayList<ProductReview> proList = new ProductDao().selectNewProductReview(conn, memId);
		
		close(conn);
		
		return proList;
		
	}
	
	// 은영
	/**
	 * 마이페이지 주문상세 리스트 중 최신 2개 조회하는 Dao
	 * @param memId : 로그인한 회원 아이디
	 * @return : 주문상세 리스트가 들어간 ArrayList<OrderPro> 객체
	 */
	public ArrayList<OrderPro> selectNewOrder(String memId) {
		
		Connection conn = getConnection();
		
		ArrayList<OrderPro> opList = new ProductDao().selectNewOrder(conn, memId);
		
		close(conn);
		
		return opList;
		
	}
	
	// 성범
	public ArrayList<Product> selectList(){
		
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectList(conn);
		
		close(conn);
		
		return list;
		
	}
	
	
	// 은영
	/**
	 * 장바구니 목록에서 '월'만 조회하는 Service
	 * @param memId : 로그인한 회원 아이디
	 * @return : 장바구니 담은 '월'이 담긴 ArrayList<Basket> 객체
	 */
	public ArrayList<Basket> selectMonth(String memId){
		
		Connection conn = getConnection();
		
		ArrayList<Basket> month = new ProductDao().selectMonth(conn, memId);
		
		close(conn);
		
		return month;
		
	}
	
	// 은영
	/**
	 * 장바구니에 담긴 상품 목록들을 조회하는 Service
	 * @param memId : 로그인한 회원 아이디
	 * @return : 장바구니에 담긴 상품 목록이 담긴 ArrayList<Basket> 객체
	 */
	public ArrayList<Basket> selectBasketList(String memId) {
		
		Connection conn = getConnection();
		
		ArrayList<Basket> bList = new ProductDao().selectBasketList(conn, memId);
		
		close(conn);
		
		return bList;
		
	}
	
	// 성범
	public Product detailProduct(int productNo) {
		
		Connection conn = getConnection();
		
		Product p = new ProductDao().detailProduct(conn, productNo);
		
		close(conn);
		
		return p;
	}
	
	// 은영
	/**
	 * 상품준비중, 배송중, 배송완료에서 '월'만 조회하는 Service
	 * @param str : 배송현황이 담긴 문자열 (상품준비중, 배송중, 배송완료)
	 * @param memId : 로그인한 회원 아이디
	 * @return : 배송현황에 따라 진행된 '월'이 담긴 ArrayList<OrderPro> 객체
	 */
	public ArrayList<OrderPro> selectOrderMonth(String str, String memId) {
		
		Connection conn = getConnection();
		
		ArrayList<OrderPro> month = new ProductDao().selectOrderMonth(conn, str, memId);
		
		close(conn);
		
		return month;
		
	}
	
	// 은영
	/**
	 * 상품준비중, 배송중, 배송완료에서 상품 목록을 조회하는 Service
	 * @param str : 배송현황이 담긴 문자열 (상품준비중, 배송중, 배송완료)
	 * @param memId : 로그인한 회원 아이디
	 * @return : 배송현황에 따라 담긴 상품 목록들이 담긴 ArrayList<OrderPro> 객체
	 */
	public ArrayList<OrderPro> selectOrderList(String str, String memId) {
		
		Connection conn = getConnection();
		
		ArrayList<OrderPro> opList = new ProductDao().selectOrderList(conn, str, memId);
		
		close(conn);
		
		return opList;
		
	}
	
	// 은영
	/**
	 * 상품준비중, 배송중, 배송완료에서 '구매확정'처리하는 Service
	 * @param orderNo : 사용자가 선택한 주문번호
	 * @return : 구매확정 성공여부가 담긴 int형 변수(성공 : 1 | 실패 : 0)
	 */
	public int updatePurchaseConfirm(int orderNo) {
		
		Connection conn = getConnection();
		
		int result = new ProductDao().updatePurchaseConfirm(conn, orderNo);
		
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		 
		return result;
		
	}
	
	// 은영
	/**
	 * 상품준비중, 배송중, 배송완료에서 '구매취소'처리하는 Service
	 * @param orderNo : 사용자가 선택한 주문번호
	 * @return : 구매취소 성공여부가 담긴 int형 변수(성공 : 1 | 실패 : 0)
	 */
	public int updatePurchaseCancel(int orderNo) {
		
		Connection conn = getConnection();
		
		int result = new ProductDao().updatePurchaseCancel(conn, orderNo);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		return result;
		}
		

	// 성범
	/*
	 * 밀키트 상세페이지 리뷰 insert ajax
	 */
	public int insertReview(ProductReview pr) {
		
		Connection conn = getConnection();
		
		int result = new ProductDao().insertReview(conn, pr);

		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}

		
		return result;
	}
	

		 
	
	// 성범
	/*
	 * 밀키트 상세페이지 리뷰 select ajax
	 */
	public ArrayList<ProductReview> selectReview(int productCode){
		
		Connection conn = getConnection();
		
		ArrayList<ProductReview> list = new ProductDao().selectReview(conn, productCode);
		
		close(conn);
		
		return list;
		
	}


	// 은영
	/**
	 * 주문 전체 목록 요청하는 Service
	 * @param memId : 로그인한 회원 아이디
	 * @return : 주문 목록이 들어가있는 ArrayList<OrderPro> 객체
	 */
	public ArrayList<OrderPro> selectAllOrderList(String memId){
		
		Connection conn = getConnection();
		
		ArrayList<OrderPro> list = new ProductDao().selectAllOrderList(conn, memId);
		
		close(conn);
		
		return list;
		
	}
	
	// 은영
	/**
	 * 주문 전체 '월'만 조회 요청하는 Service
	 * @param memId : 로그인한 회원 아이디
	 * @return : 주문한 '월'이 들어가있는 ArrayList<OrderPro> 객체
	 */
	public ArrayList<OrderPro> selectAllOrderMonth(String memId) {
		
		Connection conn = getConnection();
		
		ArrayList<OrderPro> month = new ProductDao().selectAllOrderMonth(conn, memId);
		
		close(conn);
		
		return month;
		
	}
	

	// 성범
	/*
	 * 밀키트 주문시 배송지 입력 insert
	 */
	public int insertAddress(OrderPro op) {
		
		Connection conn = getConnection();
		
		int result = new ProductDao().insertAddress(conn, op);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
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
	public OrderDetail selectOrderDetail(String memId, int orderNo) {
		
		Connection conn = getConnection();
		
		OrderDetail op = new ProductDao().selectOrderDetail(conn, memId, orderNo);
		
		close(conn);
		
		return op;
	}
	
	// 은영
	/**
	 * 주문 상세 페이지에서 주문 상품들을 조회하는 Service
	 * @param memId : 로그인한 회원 아이디
	 * @param orderNo : 주문 번호 (해당 번호의 주문 상세페이지로 이동)
	 * @return : 해당 주문 번호에 속해있는 주문 상품 정보가 담겨있는 ArrayList<OrderDetail>객체
	 */
	public ArrayList<OrderDetail> selectOrderDetailList(String memId, int orderNo) {
		
		Connection conn = getConnection();
		
		ArrayList<OrderDetail> list = new ProductDao().selectOrderDetailList(conn, memId, orderNo);
		
		close(conn);
		
		return list;
		
	}

	// 성범
	/*
	 * 밀키트 상세페이지에서 장바구니로 insert
	 */
	public int insertCart(Basket bs) {
		
		Connection conn = getConnection();
		
		int result = new ProductDao().insertCart(conn, bs);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}
	
	public int selectListCount() {
		Connection conn = getConnection();
		int listCount = new ProductDao().selectListCount(conn);
		close(conn);
		return listCount;
	}
	
	public ArrayList<Product> selectList(PageInfo pi){
		Connection conn = getConnection();
		ArrayList<Product> listP = new ProductDao().selectList(conn, pi);
		close(conn);
		return listP;
	}
	
	// 성범
	/*
	 * 관리자페이지 상품 insert
	 */
	
	public int insertProduct(Product p) {
		
		Connection conn = getConnection();
		
		int result = new ProductDao().insertProduct(conn, p);
		

		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}
	
	// 혜림
	/** 밀키트 리뷰 삭제 메소드
	 * @param delStr 삭제하고자 하는 리뷰 번호를 담은 문자열
	 * @return 성공/실패 결과
	 */
	public int deleteReview(String delStr) {
		Connection conn = getConnection();
		int result = new ProductDao().deleteReview(conn, delStr);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	// 은영
	/**
	 * 장바구니 상품 삭제처리하는 Dao
	 * @param memNo : 로그인한 회원 번호
	 * @param no : 삭제처리하고자하는 장바구니 번호
	 * @return : 장바구니 삭제여부가 담긴 int형 변수
	 */
	public int deleteBasket(String no) {
		
		Connection conn = getConnection();
		
		int result = new ProductDao().deleteBasket(conn, no);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		return result;
	}
	
	// 성범
	   /*
	    * 장바구니 밀키트 구매
	    */
	   public Basket cartPay(int basNo) {
	      
	      Connection conn = getConnection();
	      
	      Basket bs = new ProductDao().cartPay(conn, basNo);
	      
	      close(conn);
	      
	      return bs;
	   }
	   
	   public int insertOrderList(OrderList or) {
		   
		   Connection conn = getConnection();
			
			int result2 = new ProductDao().insertOrderList(conn, or);
			
			if(result2 > 0) {
				commit(conn);
			} else {
				rollback(conn);
			}
			
			return result2;
	   }
	
}

