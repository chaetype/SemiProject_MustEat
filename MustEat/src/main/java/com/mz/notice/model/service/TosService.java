package com.mz.notice.model.service;

import static com.mz.common.JDBCTemplate.close;
import static com.mz.common.JDBCTemplate.commit;
import static com.mz.common.JDBCTemplate.getConnection;
import static com.mz.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.mz.notice.model.dao.TosDao;
import com.mz.notice.model.vo.Tos;

public class TosService {
	
	// 서원
	// 관리자 이용약관 조회
	public ArrayList<Tos> selectAdminTosList(){
		Connection conn = getConnection();
		ArrayList<Tos> list = new TosDao().selectAdminTosList(conn);
		close(conn);
		
		return list;
	}
	
	
	//관리자 이용약관 등록
	public int insertTos(Tos t) {
		
		Connection conn = getConnection();
		int result = new TosDao().insertTos(conn, t);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
		
	}
	
	
	// 등록한 이용약관 상세 조회
	public Tos selectTos(int tosNo) {
		Connection conn = getConnection();
		Tos t = new TosDao().selectTos(conn, tosNo);
		close(conn);
		return t;
	}
	
	
	// 이용약관 수정
	public int updateTos(Tos t) {
		Connection conn = getConnection();
		int result = new TosDao().updateTos(conn, t);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	
	// 이용약관 삭제
	public int deleteTos(int tosNo) {
		Connection conn = getConnection();
		int result = new TosDao().deleteTos(conn, tosNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;		
		
	}
	
	// 이용약관 관리자 게시
	public int postTos(int tosNo) {
		Connection conn = getConnection();
		int result = new TosDao().postTos(conn, tosNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;		
		
	}
	
	
	// 사용자 이용약관 페이지
	public Tos selectTosUserList() {
		Connection conn = getConnection();
		Tos t = new TosDao().selectTosUserList(conn);
		close(conn);
		return t;
		
	}
	
	

	
	
	
	
	
	
}
