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
	
	/** 공지사항 등록 메소드
	 * @param n 등록하고자 하는 공지사항 객체
	 * @return 성공/실패 결과
	 */
	public int insertNotice(Notice n) {
		Connection conn = getConnection();
		int result = new NoticeDao().insertNotice(conn, n);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	/** 조회수 증가 메소드
	 * @param noticeNo 증가시킬 글번호
	 * @return 성공/실패 결과
	 */
	public int increaseCount(int noticeNo) {
		Connection conn = getConnection();
		int result = new NoticeDao().increaseCount(conn, noticeNo);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	/** 공지사항 세무페이지 조회 메소드
	 * @param noticeNo 조회할 공지사항 글번호
	 * @return 조회된 공지사항 객체
	 */
	public Notice selectNotice(int noticeNo) {
		Connection conn = getConnection();
		Notice n = new NoticeDao().selectNotice(conn, noticeNo);
		close(conn);
		return n;
	}
	
	/** 공지사항 수정 메소드
	 * @param n 수정할 정보가 담긴 공지사항 객체
	 * @return 성공/실패 결과
	 */
	public int updateNotice(Notice n) {
		Connection conn = getConnection();
		int result = new NoticeDao().updateNotice(conn, n);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	/** 공지사항 삭제 메소드
	 * @param delArr 삭제하고자 하는 글번호 배열
	 * @return 성공/실패 결과
	 */
	public int deleteNotice(String delArr) {
		Connection conn = getConnection();
		int result = new NoticeDao().deleteNotice(conn, delArr);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	/** 문의내역 전체 조회 메소드
	 * @return 조회된 문의 객체
	 */
	public ArrayList<Contact> selectContactListAll(){
		Connection conn = getConnection();
		ArrayList<Contact> list = new NoticeDao().selectContactListAll(conn);
		close(conn);
		return list;
	}
	
	/** 문의내역 세부페이지 조회 메소드
	 * @param contactNo 조회할 문의번호
	 * @return 조회된 문의 객체
	 */
	public Contact selectContact(int contactNo) {
		Connection conn = getConnection();
		Contact c = new NoticeDao().selectContact(conn, contactNo);
		close(conn);
		return c;
	}
	
	/** 문의 답변 업데이트 메소드
	 * @param contactNo 문의번호
	 * @param answer 답변
	 * @return 성공/실패 결과
	 */
	public int updateContactReply(int contactNo, String answer) {
		Connection conn = getConnection();
		int result = new NoticeDao().updateContactReply(conn, contactNo, answer);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	/** FAQ 전체 조회 메소드
	 * @param pi 페이지인포 객체
	 * @return 조회된 faq 객체
	 */
	public ArrayList<FAQ> selectFaqListAll(PageInfo pi){
		Connection conn = getConnection();
		ArrayList<FAQ> list = new NoticeDao().selectFaqListAll(conn, pi);
		close(conn);
		return list;
	}
	
	/** FAQ 전체 목록 수 세는 메소드
	 * @return 공지사항 목록 수
	 */
	public int selectFaqListCount() {
		Connection conn = getConnection();
		int listCount = new NoticeDao().selectFaqListCount(conn);
		close(conn);
		return listCount;
	}
	
	/** FAQ 등록 메소드
	 * @param f 등록할 faq 객체
	 * @return 성공/실패 결과
	 */
	public int insertFaq(FAQ f) {
		Connection conn = getConnection();
		int result = new NoticeDao().insertFaq(conn, f);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	/** FAQ 조회수 증가 메소드
	 * @param faqNo 증가시킬 글번호
	 * @return 성공/실패 결과
	 */
	public int increaseFaqCount(int faqNo) {
		Connection conn = getConnection();
		int result = new NoticeDao().increaseFaqCount(conn, faqNo);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	/** FAQ 세무페이지 조회 메소드
	 * @param faqNo 조회할 faq 글번호
	 * @return 조회된 faq 객체
	 */
	public FAQ selectFaq(int faqNo) {
		Connection conn = getConnection();
		FAQ f = new NoticeDao().selectFaq(conn, faqNo);
		close(conn);
		return f;
	}
	
	/** FAQ 수정 메소드
	 * @param f 수정할 정보가 담긴 faq 객체
	 * @return 성공/실패 결과
	 */
	public int updateFaq(FAQ f) {
		Connection conn = getConnection();
		int result = new NoticeDao().updateFaq(conn, f);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	/** FAQ 삭제 메소드
	 * @param delArr 삭제하고자 하는 글번호 배열
	 * @return 성공/실패 결과
	 */
	public int deleteFaq(String delArr) {
		Connection conn = getConnection();
		int result = new NoticeDao().deleteFaq(conn, delArr);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	
	
}
