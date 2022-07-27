package com.mz.common;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class JDBCTemplate {
	
	// 1. Connection객체 생성 후 해당 Connection을 반환 (getConnection)
	public static Connection getConnection() {
		
		Connection conn = null;
		
		Properties prop = new Properties(); // Map 계열 컬렉션
		
		// 읽어들이고자 하는 파일 : driver.properties (src/main/webapp/WEB-INF/classes 폴더내)
		// 해당 파일 찾아서 물리적인 경로를 알아내야됨
		String filePath = JDBCTemplate.class.getResource("/db/driver/driver.properties").getPath();
		//System.out.println(filePath);

		try {
			prop.load(new FileInputStream(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		try {
			// 1) jdbc driver 등록
			Class.forName(prop.getProperty("driver"));
			
			// 2) 접속하고자하는 db의 url, 계정명, 비밀번호 제시해서 Connection 생성
			conn = DriverManager.getConnection(prop.getProperty("url"), prop.getProperty("username"), prop.getProperty("password"));
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return conn;
		
	}
	
	// 2. Connection 객체 전달받아서 commit시켜주는 (commit)
	public static void commit(Connection conn) {
		
		try {
			if(conn != null && !conn.isClosed()) {
				conn.commit();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	
	// 3. Connection 객체 전달받아서 rollback시켜주는 (rollback)
	public static void rollback(Connection conn) {
		
		try {
			if(conn != null && !conn.isClosed()) {
				conn.rollback();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// 4. Connection 객체 전달 받아서 close 시켜주는
	public static void close(Connection conn) {
		try {
			if(conn != null && !conn.isClosed()) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// 5. Statement 객체 전달받아서 close 시켜주는
	public static void close(Statement stmt) {
		try {
			if(stmt != null && !stmt.isClosed()) {
				stmt.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// 6. ResultSet 객체 전달받아서 close 시켜주는
	public static void close(ResultSet rset) {
		try {
			if(rset != null && !rset.isClosed()) {
				rset.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
