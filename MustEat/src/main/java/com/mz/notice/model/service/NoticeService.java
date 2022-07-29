package com.mz.notice.model.service;

import static com.mz.common.JDBCTemplate.close;
import static com.mz.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.mz.notice.model.dao.NoticeDao;
import com.mz.notice.model.vo.Notice;
import com.mz.notice.model.vo.Tos;

public class NoticeService {
	
	// 혜림
	

	
	
	// 서원
	// 관리자 이용약관 조회
	public ArrayList<Tos> selectAdminTosList(){
		Connection conn = getConnection();
		ArrayList<Tos> list = new NoticeDao().selectAdminTosList(conn);
		close(conn);
		return list;
	}
	
	
}
