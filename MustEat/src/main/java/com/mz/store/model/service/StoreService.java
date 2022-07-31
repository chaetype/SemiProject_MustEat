package com.mz.store.model.service;

import static com.mz.common.JDBCTemplate.close;
import static com.mz.common.JDBCTemplate.getConnection;
import static com.mz.common.JDBCTemplate.commit;
import static com.mz.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.mz.store.model.dao.StoreDao;
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
	
	public ArrayList<StoreReview> selectNewStoreReview(String memId) {
		
		Connection conn = getConnection();
		
		ArrayList<StoreReview> srList = new StoreDao().selectNewStoreReview(conn, memId);
		
		close(conn);
		
		return srList;
		
	}
}
