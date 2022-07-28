package com.mz.member.model.service;

import static com.mz.common.JDBCTemplate.close;
import static com.mz.common.JDBCTemplate.commit;
import static com.mz.common.JDBCTemplate.getConnection;
import static com.mz.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.mz.member.model.dao.MemberDao;
import com.mz.member.model.vo.Member;
import com.mz.member.model.vo.Report;

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
	 * @return : 입력받은 name/email에 해당하는 아이디가 담긴 문자열
	 */
	public Member findId(String userName, String userEmail) {
		Connection conn = getConnection();
		Member m  = new MemberDao().findId(conn, userName, userEmail);
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
	
}
