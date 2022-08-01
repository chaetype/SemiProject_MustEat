package com.mz.notice.model.service;

import static com.mz.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.mz.common.model.vo.PageInfo;
import com.mz.notice.model.dao.NoticeDao;
import com.mz.notice.model.vo.Contact;
import com.mz.notice.model.vo.Notice;

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
	
	public int insertContact(Contact c) {
		Connection conn = getConnection();
		int result = new NoticeDao().insertContact(conn, c);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	public ArrayList<Contact> selectContactList(String userId){
		Connection conn = getConnection();
		ArrayList<Contact> list = new NoticeDao().selectContactList(conn, userId);
		close(conn);
		return list;
	}
	
	
	
}
