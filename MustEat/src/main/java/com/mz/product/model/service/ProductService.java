package com.mz.product.model.service;

import static com.mz.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.mz.product.model.dao.ProductDao;
import com.mz.product.model.vo.OrderPro;
import com.mz.product.model.vo.ProductReview;

public class ProductService {
	//메소드 위에 주석으로 이름 달아두기!!!
	
	// 은영
	/**
	 * 배송현황 리스트 조회하는 Service
	 * @param delivery : 배송현황 정보가 담긴 문자열 (상품준비중, 배송중, 배송완료)
	 * @param memId : 로그인한 회원 아이디
	 * @return : 배송현황 리스트 정보가 담긴 ArrayList<OrderPro>
	 */
	public ArrayList<OrderPro> deliveryStatusList(String delivery, String memId) {
		
		Connection conn = getConnection();
		
		// 배송 현황 조회
		ArrayList<OrderPro> list = new ProductDao().deliveryStatusList(conn, delivery, memId);
		
		close(conn);
		
		return list;
		
	}

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

	
}

