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
}
