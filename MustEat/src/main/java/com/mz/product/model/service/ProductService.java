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

	
}

