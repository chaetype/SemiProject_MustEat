package com.mz.product.model.service;

import static com.mz.common.JDBCTemplate.*;
import static com.mz.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.mz.product.model.dao.ProductDao;
import com.mz.product.model.vo.AddressPayment;
import com.mz.product.model.vo.Basket;
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
	
	// 성범
	/*
	 * 배송지입력 페이지
	 */
	public int insertAp(AddressPayment ap) {
		
		Connection conn = getConnection();
		
		int result = new ProductDao().insertAp(conn, ap);
		
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


	
}

