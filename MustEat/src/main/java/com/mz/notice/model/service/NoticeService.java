package com.mz.notice.model.service;

import static com.mz.common.JDBCTemplate.close;
import static com.mz.common.JDBCTemplate.commit;
import static com.mz.common.JDBCTemplate.getConnection;
import static com.mz.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.mz.common.model.vo.PageInfo;
import com.mz.notice.model.dao.NoticeDao;
import com.mz.notice.model.vo.Contact;
import com.mz.notice.model.vo.FAQ;
import com.mz.notice.model.vo.Notice;

public class NoticeService {
	
	// 혜림
	
	/** 공지사항 전체 목록 수 세는 메소드
	 * @return 공지사항 목록 수
	 */
	public int selectNoticeListCount() {
		Connection conn = getConnection();
		int listCount = new NoticeDao().selectNoticeListCount(conn);
		close(conn);
		return listCount;
	}
	
	/** 공지사항 목록 조회 메소드
	 * @param pi 페이지인포 객체
	 * @return 공지사항 목록
	 */
	public ArrayList<Notice> selectNoticeList(PageInfo pi){
		Connection conn = getConnection();
		ArrayList<Notice> list = new NoticeDao().selectNoticeList(conn, pi);
		close(conn);
		return list;
	}
	
	/** 문의사항 입력 메소드
	 * @param c 문의사항 입력된 객체
	 * @return 성공/실패 결과
	 */
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
	
	/** 문의내역 조회 메소드
	 * @param userId 조회할 때 비교용 회원아이디
	 * @return 문의내역
	 */
	public ArrayList<Contact> selectContactList(String userId){
		Connection conn = getConnection();
		ArrayList<Contact> list = new NoticeDao().selectContactList(conn, userId);
		close(conn);
		return list;
	}
	
	/** FAQ 조회 메소드
	 * @return FAQ 목록
	 */
	public ArrayList<FAQ> selectFaqList(){
		Connection conn = getConnection();
		ArrayList<FAQ> list = new NoticeDao().selectFaqList(conn);
		close(conn);
		return list;
	}
	
	
	
}
