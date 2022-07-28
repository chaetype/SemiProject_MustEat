package com.mz.member.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import static com.mz.common.JDBCTemplate.*;

import com.mz.member.model.vo.Member;

public class MemberDao {
	//메소드 위에 주석으로 이름 달아두기!!!
	
	// 태민 (xml파일 연결)
	private Properties prop = new Properties();
	
	public MemberDao() {
		
		String filePath = MemberDao.class.getResource("/db/sql/member-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	// 태민 (로그인관련 / LoginController2랑 연결)
	public Member loginMember(Connection conn, String userId, String userPwd) {
		
		Member m = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("loginMember");
		
		try {
			pstmt = conn.prepareStatement(sql); 
			pstmt.setString(1, userId);
			pstmt.setString(2, userPwd);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				m = new Member(rset.getInt("MEM_NO"),
							   rset.getString("MEM_ID"),
							   rset.getString("MEM_PWD"),
							   rset.getString("MEM_NAME"),
							   rset.getString("MEM_PHONE"),
							   rset.getString("MEM_EMAIL"),
							   rset.getDate("MEM_ENROLLDATE"),
							   rset.getDate("MEM_MODIFYDATE"),
							   rset.getString("MEM_STATUS"),
							   rset.getString("MEM_NICKNAME"),
							   rset.getString("MEM_GRADE"),
							   rset.getInt("ADDRESS_CODE"),
							   rset.getString("ADDRESS"),
							   rset.getString("ADDRESS_DETAIL"),
							   rset.getString("ADDRESS_REF"),
							   rset.getString("MEM_IMGPATH"),
							   rset.getString("WITHDRAW")
							  );
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return m;
		
	}
	
	
}
