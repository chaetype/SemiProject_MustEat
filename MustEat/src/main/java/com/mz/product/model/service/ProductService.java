package com.mz.product.model.service;

import static com.mz.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.mz.product.model.dao.ProductDao;
import com.mz.product.model.vo.OrderPro;

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
	 * 로그인한 회원의 '상품준비중'인 주문 갯수를 조회하는 Service
	 * @param memId : 로그인한 회원 아이디
	 * @return : '상품준비중'인 주문 갯수가 담긴 int형 변수
	 */
	public int countReadyDelivery(String memId) {
		
		Connection conn = getConnection();
	
		// 배송 준바 중인 주문 수량
		int result = new ProductDao().countReadyDelivery(conn, memId);
		
		close(conn);
		
		return result;
		
	}
	
	
	// 은영
	/**
	 * 로그인한 회원의 '배송중'인 주문 갯수를 조회하는 Service
	 * @param memId : 로그인한 회원 아이디
	 * @return : '배송중'인 주문 갯수가 담긴 int형 변수
	 */
	public int countInTransit(String memId) {
		
		Connection conn = getConnection();
		
		// 배송중인 주문 수량
		int result = new ProductDao().countInTransit(conn, memId);
		
		close(conn);
		
		return result;
		
	}
	
	// 은영
	/**
	 * 로그인한 회원의 '배송완료'인 주문 갯수를 조회하는 Service
	 * @param memId : 로그인한 회원 아이디
	 * @return : '배송완료'인 주문 갯수가 담긴 int형 변수
	 */
	public int countDelivered(String memId) {
		
		Connection conn = getConnection();
		
		// 배송완료된 주문 수량
		int result = new ProductDao().countDelivered(conn, memId);
		
		close(conn);
		
		return result;
		
	}
	
	// 은영
	/**
	 * 로그인한 회원의 '상품취소'인 주문 갯수를 조회하는 Service
	 * @param memId : 로그인한 회원 아이디
	 * @return : '상품취소'인 주문 갯수가 담긴 int형 변수
	 */
	public int countCancel(String memId) {
		
		Connection conn = getConnection();
		
		// 상품취소된 주문 수량
		int result = new ProductDao().countCancel(conn, memId);
		
		close(conn);
		
		return result;
		
	}
	
	// 은영
	/**
	 * 로그인한 회원의 '장바구니'인 주문 갯수를 조회하는 Service
	 * @param memId : 로그인한 회원 아이디
	 * @return : '장바구니'인 주문 갯수가 담긴 int형 변수
	 */
	public int countBasket(String memId) {
		
		Connection conn = getConnection();
		
		// 장바구니 물품 수량
		int result = new ProductDao().countBasket(conn, memId);
		
		close(conn);
		
		return result;
		
	}
	
	public int countOrder(String status, String memId) {
		
		Connection conn = getConnection();
		
		int result = new ProductDao().countOrder(conn, status, memId);
		
		close(conn);
		
		return result;
	}
 	
}

