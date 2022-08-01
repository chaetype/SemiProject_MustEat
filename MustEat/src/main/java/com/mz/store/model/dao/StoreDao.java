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
import com.mz.store.model.vo.Store;
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
	
	
	/**
	 * 채윤 식당 리뷰 검색
	 * @param conn
	 * @param 검색값 분류type
	 * @param 찾으려는 검색 값keyword
	 * @return
	 */
	public ArrayList<StoreReview> userStoreReview(Connection conn,String type, String keyword){
		
		ArrayList<StoreReview> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("userStoreReview");
		
		//검색을 위한 동적 sql
		//case에 옵션의 value값담아주기 3번이 전체검색
		switch(type) {
			case "1": sql += "WHERE mem_nickname like ? ";
				break;
			case "2":  sql += "WHERE review_title like ? ";
				break;
			case "3": sql += "WHERE (MEM_NICKNAME LIKE ? OR review_title like ?)";
				break; 
			
		}
		
		sql += "ORDER BY re_no desc";
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%"+keyword+"%");
			if(type.equals("3")) {
				pstmt.setString(2, "%"+keyword+"%");
			}
			
						
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
	
	//채윤 식당 상세조회
	public Store selectStore(Connection conn, int storeNo) {
		// board로부터 select => ResultSet(한행) => Board
		Store s = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectStore");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, storeNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				s = new Store(rset.getInt("store_no"),
							  rset.getString("store_name"),
							  rset.getString("store_address"),
							  rset.getString("store_intro"),
							  rset.getString("store_img_path"),
							  rset.getString("store_popularity"),
							  rset.getString("store_pop_info"),
							  rset.getString("STORE_POP_PATH"),
							  rset.getString("MEM_NICKNAME"),
							  rset.getString("review_content"),
							  rset.getString("review_img")
							 );
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return s;
		
	}
	
	
	public int increaseCount(Connection conn, int storeNo) {
		// update문 => 처리된행수
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("increaseCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, storeNo);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
		
	}
	

	//채윤 식당 메인2
	public ArrayList<Store> selectStoreList(Connection conn){
		ArrayList<Store> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectStoreList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Store s = new Store();
				s.setStoreNo(rset.getInt("store_no"));
				s.setStoreImgPath(rset.getString("store_img_path"));
				s.setStoreName(rset.getString("store_name"));
				s.setStoreAddress(rset.getString("store_address"));
				s.setStoreIntro(rset.getString("store_intro"));
				s.setStorePopPath(rset.getString("store_popularity"));
				s.setStorePopInfo(rset.getString("store_pop_info"));
				s.setStoreReview(rset.getString("REVIEW_CONTENT"));
				s.setReviewImg(rset.getString("REVIEW_IMG"));
				s.setReviewWriter(rset.getString("review_writer"));
				
				list.add(s);
			}
			} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		

		return list;
	}
	
	
	//채윤 메인2검색
		public ArrayList<Store> userStoreSearch(Connection conn,String type, String keyword){
			
			ArrayList<Store> list = new ArrayList<>();
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			
			String sql = prop.getProperty("userStoreSearch");
			
		
			switch(type) {
				case "1": sql += "WHERE local_si like '서울특별시' and store_name like ? ";
					break;
				case "2":  sql += "WHERE local_si like '경기도' and store_name like ?";
					break;
				case "3":  sql += "WHERE local_si like '인천시' and store_name like ? ";
					break;
				
				
			}
			
			sql += "ORDER BY re_no desc";
			
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, "%"+keyword+"%");
			
							
				rset = pstmt.executeQuery();
				
				
				
				while(rset.next()) {
					Store s = new Store();
					s.setStoreNo(rset.getInt("store_no"));
					s.setStoreImgPath(rset.getString("store_img_path"));
					s.setStoreName(rset.getString("store_name"));
					s.setStoreAddress(rset.getString("store_address"));
					s.setStoreIntro(rset.getString("store_intro"));
					s.setStorePopPath(rset.getString("store_popularity"));
					s.setStorePopInfo(rset.getString("store_pop_info"));
					s.setStoreReview(rset.getString("REVIEW_CONTENT"));
					s.setReviewImg(rset.getString("REVIEW_IMG"));
					s.setReviewWriter(rset.getString("review_writer"));
					
					list.add(s);
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				close(rset);
				close(pstmt);
			}
			return list;
		}
	

	// 은영
	/**
	 * 마이페이지에서 가게 리뷰 중 최신 2개글 조회하는 Dao
	 * @param memId : 로그인한 회원 아이디
	 * @return : 조회된 밀키트 리뷰가 담긴 ArrayList<StoreReview> 객체
	 */
	public ArrayList<StoreReview> selectNewStoreReview(Connection conn, String memId) {
		
		// 조회된 행 수 반환 => ResultSet => ArrayList
		ArrayList<StoreReview> srList = new  ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectNewStoreReview");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memId);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				srList.add(new StoreReview(rset.getDate("REVIEW_ENROLLDATE")
										 , rset.getString("REVIEW_TITLE")
										 , rset.getInt("SCRAP_COUNT")
										 , rset.getString("STORE_NAME")
										 ));				
				}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return srList;
			
					
		
	}

}