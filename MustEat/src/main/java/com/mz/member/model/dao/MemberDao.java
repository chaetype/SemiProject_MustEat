package com.mz.member.model.dao;

import static com.mz.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.mz.member.model.vo.Member;
import com.mz.member.model.vo.MyPage;
import com.mz.member.model.vo.Point;
import com.mz.member.model.vo.Report;

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
	
	// 태민 (아이디찾기 / FindIdController2랑 연결)
	public Member findId(Connection conn, String userName, String userEmail) {
	
		Member m = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("findId");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userName);
			pstmt.setString(2, userEmail);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				m = new Member(rset.getString("MEM_ID"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return m;
	}
	
	
	// 은영
	/**
	 * 회원 정보 수정 처리하는 Service
	 * @param m : 수정하고자하는 회원 정보가 담긴 Member 객체
	 * @return : 수정 성공여부가 담긴 int형 변수 (성공 : 1 | 실패 : 0)
	 */
	public int updateMember(Connection conn, Member m) {
		
		// update => 처리된 행 수 반환
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, m.getMemPwd());
			pstmt.setString(2, m.getMemName());
			pstmt.setString(3, m.getMemPhone());
			pstmt.setString(4, m.getMemEmail());
			pstmt.setString(5, m.getMemNickname());
			pstmt.setInt(6, m.getAddressCode());
			pstmt.setString(7, m.getAddress());
			pstmt.setString(8, m.getAddressDetail());
			pstmt.setString(9, m.getAddressRef());
			pstmt.setString(10, m.getMemId());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
		
	}
	
	// 은영
	/**
	 * 수정된 회원정보 조회하는 Dao
	 * @param memId : 조회하고자하는 회원 아이디
	 * @return : 수정된 회원 정보가 담긴 Member 객체
	 */
	public Member selectUpdateMember(Connection conn, String memId) {
		
		// select => 조회된 행 반환(한 행) => ResultSet
		Member updateMem = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectUpdateMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				
				updateMem = new Member(rset.getString("mem_id")
									 , rset.getString("mem_pwd")
									 , rset.getString("mem_name")
									 , rset.getString("mem_phone")
									 , rset.getString("mem_email")
									 , rset.getString("mem_nickname")
									 , rset.getInt("address_code")
									 , rset.getString("address")
									 , rset.getString("address_detail")
									 , rset.getString("address_ref")
									 );
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return updateMem;
		
	}
	
	
	//채윤
	/**
	 * 신고목록 조회
	 * @param conn
	 * @return
	 */
	public ArrayList<Report> selectReportList(Connection conn){
		
		ArrayList<Report> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectReportList");
		
		try {
			pstmt=conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Report(rset.getInt("report_no"),
									rset.getString("mem_nickname"),
									rset.getString("mem_id"),
									rset.getString("review_title"),
									rset.getString("report_content"),
									rset.getDate("report_date")
									));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
		
	}
	
	// 은영
	/**
	 * 회원 탈퇴 요청 처리하는 Dao
	 * @param withdraw : 탈퇴 사유
	 * @param memId : 탈퇴할 회원 아이디
	 * @param deletePwd : 탈퇴시 확인할 회원 비밀번호
	 * @return : 탈퇴 성공여부가 담긴 int형 변수 (성공 : 1 | 실패 : 0)
	 */
	public int deleteMember(Connection conn, String withdraw, String memId, String deletePwd) {
		
		// update => 처리된 행 수 반환
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteMember");
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, withdraw);
			pstmt.setString(2, memId);
			pstmt.setString(3, deletePwd);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
		
	}
	
	// 은영
	/**
	 * 마이페이지 리뷰, 적립금, 가고싶다, 팔로우 횟수 조회하는 Service
	 * @param memId : 로그인한 회원 아이디
	 * @return : 마이페이지 정보가 담긴 MyPage 객체
	 */
	public MyPage selectMyPage(Connection conn, String memId) {
		
		// select => ResultSet => 한 행 조회
		MyPage my = null; 
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMyPage");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				
				my = new MyPage(rset.getString("MEM_ID")
							  , rset.getInt("STORE_REVIEW")
							  , rset.getInt("PRODUCT_REVIEW")
							  , rset.getInt("MPS_POINT")
							  , rset.getInt("STORE_SCRAP")
							  , rset.getInt("FOLLOW"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return my;
		
	}
	
	// 은영
	/**
	 * 마이페이지에서 적립금 내역 중 최신 2개 조회하는 Dao
	 * @param memId : 로그인한 회원아이디 
	 * @return : 적립금 내역이 담긴 ArrayList<Point> 객체
	 */
	public ArrayList<Point> selectNewPoint(Connection conn, String memId) {
		
		// 조회된 행 수 반환 => ResultSet => ArrayList
		ArrayList<Point> mpsList = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectNewPoint");
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memId);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				mpsList.add(new Point(rset.getDate("SU_DATE")
						            , rset.getString("MPS_CATEGORY")
						            , rset.getInt("MPS_RECORD")
						            , rset.getString("MPS_STATUS")
						            ));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return mpsList;
		
	}
	

}
	
