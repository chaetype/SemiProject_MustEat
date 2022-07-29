package com.mz.store.model.dao;

import static com.mz.common.JDBCTemplate.close;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.mz.member.model.dao.MemberDao;
import com.mz.store.model.vo.StoreReview;

public class StoreDao {
	//메소드 위에 주석으로 이름 달아두기!!!
	
	//채윤 xml연결
	private Properties prop = new Properties();
	
	public StoreDao() {
		
		String filePath = MemberDao.class.getResource("/db/sql/store-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	//채윤
		/**
		 * 식당 리뷰 조회
		 * @param conn
		 * @return
		 */
	public ArrayList<StoreReview> selectStoreReviewList(Connection conn){
		ArrayList<StoreReview> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectStoreReviewList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			
			while(rset.next()) {
				list.add(new StoreReview(rset.getInt("re_no"),
									rset.getString("mem_nickname"),
									rset.getString("mem_id"),
									rset.getString("review_title"),
									rset.getInt("review_rate"),
									rset.getDate("review_enrolldate"),
									rset.getString("mem_grade"),
									rset.getInt("count")
									));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
		

}
