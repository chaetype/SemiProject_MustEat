package com.mz.notice.model.dao;

import static com.mz.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.mz.notice.model.vo.Tos;

public class TosDao {
	
	private Properties prop = new Properties();

	public TosDao() {
		try {
			prop.loadFromXML(new FileInputStream( NoticeDao.class.getResource("/db/sql/notice-mapper.xml").getPath() ));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}	
	
		// 서원
		// 관리자 이용약관 조회
		public ArrayList<Tos> selectAdminTosList(Connection conn) {

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
