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
		
		
		// 관리자 이용약관 등록
		
		public int insertTos(Connection conn, Tos t) {
			int result = 0;
			PreparedStatement pstmt = null;
			String sql = prop.getProperty("insertTos");
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, t.getTosTitle());
				pstmt.setString(2, t.getTosContent());
				pstmt.setString(3, t.getTosNote());
				
				result = pstmt.executeUpdate();
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
			
			return result;
			
		}
		
		
		// 등록한 이용약관 상세 조회
		public Tos selectTos(Connection conn, int tosNo) {
			Tos t = null;
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			String sql = prop.getProperty("selectTos");
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, tosNo);
				
				rset = pstmt.executeQuery();
				
				if(rset.next()) {
					t = new Tos(rset.getInt("tos_no"),
								rset.getString("tos_title"),
								rset.getString("tos_note"),
								rset.getString("tos_content")							
							);
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}
			
			return t;
			
		}
		
		
		// 이용약관 수정
		public int updateTos(Connection conn, Tos t) {
			int result = 0;
			PreparedStatement pstmt = null;
			String sql = prop.getProperty("updateTos");
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, t.getTosTitle());
				pstmt.setString(2, t.getTosNote());
				pstmt.setString(3, t.getTosContent());
				pstmt.setInt(4, t.getTosNo());
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
			
			return result;					
			
		}
		
		
		// 이용약관 삭제
		public int deleteTos(Connection conn, int tosNo) {
			
			int result = 0;
			PreparedStatement pstmt = null;
			String sql = prop.getProperty("deleteTos");
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, tosNo);
				
				result = pstmt.executeUpdate();
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
			
			return result;
			
			
		}
		
		
		
		

}
