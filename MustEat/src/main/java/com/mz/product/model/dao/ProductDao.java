package com.mz.product.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import static com.mz.common.JDBCTemplate.*;
import com.mz.member.model.dao.MemberDao;
import com.mz.product.model.vo.OrderPro;

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
	
}
