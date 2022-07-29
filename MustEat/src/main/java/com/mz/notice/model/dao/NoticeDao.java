package com.mz.notice.model.dao;

import static com.mz.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.mz.notice.model.vo.Notice;
import com.mz.notice.model.vo.Tos;

public class NoticeDao {
	
	private Properties prop = new Properties();
	
	public NoticeDao() {
		try {
			prop.loadFromXML(new FileInputStream( NoticeDao.class.getResource("/db/sql/notice-mapper.xml").getPath() ));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	

	// 혜림
	
	
	
	
	
	
	// 서원
	// 관리자 이용약관 조회
	public ArrayList<Tos> selectAdminTosList(Connection conn) {
		// select문 => ResultSet (여러행) => ArrayList<Notice>객체 
		ArrayList<Tos> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectAdminTosList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Tos(rset.getInt("tos_no"),
									rset.getString("tos_title"),
									rset.getDate("enroll_date"),
									rset.getDate("modify_date"),
									rset.getString("tos_note")
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
	
	
}
