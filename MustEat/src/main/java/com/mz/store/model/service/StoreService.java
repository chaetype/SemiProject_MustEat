package com.mz.store.model.service;

import static com.mz.common.JDBCTemplate.close;
import static com.mz.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.mz.store.model.dao.StoreDao;
import com.mz.store.model.vo.StoreReview;

public class StoreService {
	//메소드 위에 주석으로 이름 달아두기!!!
	
	//채윤 (식당 리뷰 목록 조회/ StoreReviewListController와 연결)
	public ArrayList<StoreReview> selectStoreReviewList(){
		Connection conn = getConnection();
		ArrayList<StoreReview> list = new StoreDao().selectStoreReviewList(conn);
		close(conn);
		return list;
	}
}
