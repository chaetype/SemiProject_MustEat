package com.mz.member.model.service;

import java.sql.Connection;

import com.mz.member.model.dao.MemberDao;
import com.mz.member.model.vo.Member;
import static com.mz.common.JDBCTemplate.*;

public class MemberService {
	//메소드 위에 이름 주석 꼭 달기!!!
	
	// 태민 (로그인관련 / LoginController2랑 연결)
	public Member loginMember(String userId, String userPwd) {
		Connection conn = getConnection();
		Member m = new MemberDao().loginMember(conn, userId, userPwd);
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
	
	
}
