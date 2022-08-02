package com.mz.member.model.service;

import static com.mz.common.JDBCTemplate.close;
import static com.mz.common.JDBCTemplate.commit;
import static com.mz.common.JDBCTemplate.getConnection;
import static com.mz.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.mz.member.model.dao.MemberDao;
import com.mz.member.model.vo.Follow;
import com.mz.member.model.vo.Member;
import com.mz.member.model.vo.MyPage;
import com.mz.member.model.vo.Point;
import com.mz.member.model.vo.Report;
import com.mz.member.model.vo.StoreScrap;

public class MemberService {
	//메소드 위에 이름 주석 꼭 달기!!!
	
	// 태민
	/**
	 * 로그인 처리하는 Service / LoginController2랑 연결
	 * @param userId : 사용자에게 입력받은 Id
	 * @param userPwd : 사용자에게 입력받은 Pwd
	 * @return : 입력받은 id/pwd 에 해당하는 회원정보 담긴 Member 객체  
	 */
	public Member loginMember(String userId, String userPwd) {
		Connection conn = getConnection();
		Member m = new MemberDao().loginMember(conn, userId, userPwd);
		close(conn);
		return m;
	}
	


	//태민 (아이디찾기 / FindIdController2랑 연결)
	/**
	 * 아이디 찾기 처리하는 Service / FindIdController2랑 연결
	 * @param userName : 사용자에게 입력받은 유저이름
	 * @param userEmail : 사용자에게 입력받은 유저이메일
	 * @return : 입력받은 name/email에 해당하는 유저ID정보가 담긴 Member 객체
	 */
	public Member findId(String userName, String userEmail) {
		Connection conn = getConnection();
		Member m  = new MemberDao().findId(conn, userName, userEmail);
		close(conn);
		return m;
	}
	
	
	//태민 (비밀번호찾기 / FindPwdController2랑 연결)
	/**
	 * 아이디 찾기 처리하는 Service / FindIdController2랑 연결
	 * @param userId : 사용자에게 입력받은 유저아이디
	 * @param userEmail : 사용자에게 입력받은 유저이메일
	 * @return : 입력받은 name/email에 해당하는 유저ID정보가 담긴 Member 객체
	 */
	public Member findPwd(String userId, String userEmail) {
		Connection conn = getConnection();
		Member m  = new MemberDao().findPwd(conn, userId, userEmail);
		close(conn);
		return m;
	}

	
	
	// 은영
	/**
	 * 회원 정보 수정 처리하는 Service
	 * @param m : 수정하고자하는 회원 정보가 담긴 Member 객체
	 * @return : 수정된 회원 정보가 담긴 Member 객체
	 */
	public Member updateMember(Member m) {
		
		Connection conn = getConnection();
		
		int result = new MemberDao().updateMember(conn, m);
		
		Member updateMem = null;
		if(result > 0) {
			commit(conn);
			updateMem = new MemberDao().selectUpdateMember(conn, m.getMemId());
		} else {
			rollback(conn);
		}
		
		return updateMem;
		
	}
	
	

	//채윤(신고 목록 조회 / ReportListController와 연결)
	public ArrayList<Report> selectReportList() {
		Connection conn = getConnection();
		ArrayList<Report> list = new MemberDao().selectReportList(conn);
		close(conn);
		return list;
	}
	
	// 은영
	/**
	 * 회원 탈퇴 요청 처리하는 Service
	 * @param withdraw : 탈퇴 사유
	 * @param memId : 탈퇴할 회원 아이디
	 * @param deletePwd : 탈퇴시 확인할 회원 비밀번호
	 * @return : 탈퇴 성공여부가 담긴 int형 변수 (성공 : 1 | 실패 : 0)
	 */
	public int deleteMember(String withdraw, String memId, String deletePwd) {
		
		Connection conn = getConnection();
		
		int result = new MemberDao().deleteMember(conn, withdraw, memId, deletePwd);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;

	}
	
	// 은영
	/**
	 * 마이페이지 리뷰, 적립금, 가고싶다, 팔로우 횟수 조회하는 Service
	 * @param memId : 로그인한 회원 아이디
	 * @return : 마이페이지 정보가 담긴 MyPage 객체
	 */
	public MyPage selectMyPage(String memId) {
		
		Connection conn = getConnection();
		
		MyPage my = new MemberDao().selectMyPage(conn, memId);
		
		close(conn);
		
		return my;
		
	}
	

	// 은영
	/**
	 * 마이페이지에서 적립금 내역 중 최신 2개 조회하는 Service
	 * @param memId : 로그인한 회원아이디 
	 * @return : 적립금 내역이 담긴 ArrayList<Point> 객체
	 */
	public ArrayList<Point> selectNewPoint(String memId) {
		
		Connection conn = getConnection();
		
		ArrayList<Point> mpsList = new MemberDao().selectNewPoint(conn, memId);
		
		close(conn);
		
		return mpsList;
		
	}
	
	// 은영
	/**
	 * 마이페이지 식당 스크랩 중 최신 2개 조회하는 Dao
	 * @param memId : 로그인한 회원 아이디
	 * @return : 식당 스크랩 리스트가 들어간 ArrayList<StoreScrap> 객체 
	 */
	public ArrayList<StoreScrap> selectNewScrap(String memId) {
		
		Connection conn = getConnection();
		
		ArrayList<StoreScrap> ssList = new MemberDao().selectNewScrap(conn, memId);
		
		close(conn);
		
		return ssList;
		

	}

		//채윤 팔로우 목록 조회
	public ArrayList<Follow> myFollowingList(int ffMNo){
		Connection conn = getConnection();
		ArrayList<Follow> flist = new MemberDao().myFollowingList(conn, ffMNo);
		close(conn);
		return flist;
	}

	
	
	// 서원 관리자 적립금 조회
	public ArrayList<Point> membershipList(){
		Connection conn = getConnection();
		ArrayList<Point> list = new MemberDao().membershipList(conn);
		close(conn);
		return list;		
	}
	
	// 서원 관리자 적립금 지급 조회
	public ArrayList<Point> membershipPayList(){
		Connection conn = getConnection();
		ArrayList<Point> list = new MemberDao().membershipPayList(conn);
		close(conn);
		return list;
	}
	
	// 서원 관리자 적립금 지급하기 버튼 클릭시 적립금 지급
	
	
	// 서원 사용자 적립금 조회
	public ArrayList<Point> membershipUserList(){
		Connection conn = getConnection();
		ArrayList<Point> list = new MemberDao().membershipUserList(conn);
		close(conn);
		return list;	
	}
	
	
	
	
	
	
	
}
