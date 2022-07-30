package com.mz.notice.model.service;

import static com.mz.common.JDBCTemplate.*;
import static com.mz.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.mz.notice.model.dao.NoticeDao;
import com.mz.notice.model.vo.Notice;
import com.mz.notice.model.vo.Tos;
import com.mz.common.model.vo.PageInfo;

public class NoticeService {
	
	// 혜림
	public int selectNoticeListCount() {
		Connection conn = getConnection();
		int listCount = new NoticeDao().selectNoticeListCount(conn);
		close(conn);
		return listCount;
	}
	
	public ArrayList<Notice> selectNoticeList(PageInfo pi){
		Connection conn = getConnection();
		ArrayList<Notice> list = new NoticeDao().selectNoticeList(conn, pi);
		close(conn);
		return list;
	}

	
	
	// 서원
	// 관리자 이용약관 조회
	public ArrayList<Tos> selectAdminTosList(){
		Connection conn = getConnection();
		ArrayList<Tos> list = new NoticeDao().selectAdminTosList(conn);
		close(conn);
		return list;
	}
	
	
}
