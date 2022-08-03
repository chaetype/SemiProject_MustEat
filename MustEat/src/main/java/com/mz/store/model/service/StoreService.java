package com.mz.store.model.service;

import static com.mz.common.JDBCTemplate.close;
import static com.mz.common.JDBCTemplate.commit;
import static com.mz.common.JDBCTemplate.getConnection;
import static com.mz.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.mz.store.model.dao.StoreDao;
import com.mz.store.model.vo.Editor;
import com.mz.store.model.vo.Store;
import com.mz.store.model.vo.StoreReview;

public class StoreService {
	//메소드 위에 주석으로 이름 달아두기!!!
	
	//채윤(식당 상세조회수)
	public int increaseCount(int storeNo) {
		Connection conn = getConnection();
		int result = new StoreDao().increaseCount(conn,storeNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	//채윤 (식당 리뷰 목록 조회/ StoreReviewListController와 연결)
	public ArrayList<StoreReview> selectStoreReviewList(){
		Connection conn = getConnection();
		ArrayList<StoreReview> list = new StoreDao().selectStoreReviewList(conn);
		close(conn);
		return list;
	}
	//채윤 (식당 리뷰 검색/ UserReviewController와 연결)
	public ArrayList<StoreReview> userStoreReview(String type, String keyword){
		
		Connection conn = getConnection();
		ArrayList<StoreReview> list = new StoreDao().userStoreReview(conn, type, keyword);
		close(conn);
		return list;
	}
	
	//채윤 (식상 상세조회/ StoreDetailController와 연결)
	public Store selectStore(int storeNo) {
		Connection conn = getConnection();
		Store s = new StoreDao().selectStore(conn, storeNo);
		close(conn);
		return s;
	}
	

	// 은영
	/**
	 * 마이페이지에서 가게 리뷰 중 최신 2개글 조회하는 Dao
	 * @param memId : 로그인한 회원 아이디
	 * @return : 조회된 밀키트 리뷰가 담긴 ArrayList<StoreReview> 객체
	 */
	public ArrayList<StoreReview> selectNewStoreReview(String memId) {
		
		Connection conn = getConnection();
		
		ArrayList<StoreReview> srList = new StoreDao().selectNewStoreReview(conn, memId);
		
		close(conn);
		
		return srList;
		
	}

	//채윤 식당 메인2페이지
	public ArrayList<Store> selectStoreList(){
		Connection conn = getConnection();
		ArrayList<Store> list = new StoreDao().selectStoreList(conn);
		
		close(conn);
		return list;
	}
	
	//채윤 메인2 식당 검색
	public ArrayList<Store> userStoreSearch(String type, String keyword){
		
		Connection conn = getConnection();
		ArrayList<Store> list = new StoreDao().userStoreSearch(conn, type, keyword);
		close(conn);
		return list;
	}
	
	
	
	
	

	// 서원 관리자 식당조회 
	public ArrayList<Store> selectAdminStorelist() {
		Connection conn = getConnection();
		ArrayList<Store> list = new StoreDao().selectAdminStorelist(conn); 
		close(conn);
		return list;
	}
	
	
	
	
	
	//채윤 써머노트 등록
	public int insertEditor(String html) {
		Connection conn = getConnection();
		int result = new StoreDao().insertPost(conn, html);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	
	//채윤 에디터글 조회
	public ArrayList<Editor> editorWritelist(){
		Connection conn = getConnection();
		ArrayList<Editor> list = new StoreDao().editorWritelist(conn);
		
		close(conn);
		return list;
	}
	
	
	
}
