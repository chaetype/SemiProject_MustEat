package com.mz.store.model.dao;

import static com.mz.common.JDBCTemplate.close;
import static com.mz.common.JDBCTemplate.commit;
import static com.mz.common.JDBCTemplate.getConnection;
import static com.mz.common.JDBCTemplate.rollback;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.mz.common.model.vo.PageInfo;
import com.mz.member.model.dao.MemberDao;
import com.mz.member.model.vo.Member;
import com.mz.store.model.service.StoreService;
import com.mz.store.model.vo.Editor;
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
	
	public int StoreReviewPaging(Connection conn) {
		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("StoreReviewPaging");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt("count");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return listCount;
	}
	
	// 채윤 식당리뷰 페이징...
			public int StoreReviewListCount(Connection conn) {
				int listCount = 0;
				
				PreparedStatement pstmt = null;
				ResultSet rset = null;
				String sql = prop.getProperty("StoreReviewListCount");
				
				try {
					pstmt = conn.prepareStatement(sql);
					rset = pstmt.executeQuery();
					
					if(rset.next()) {
						listCount = rset.getInt("COUNT");
					}
					
				} catch (SQLException e) {
					e.printStackTrace();
				} finally {
					close(rset);
					close(pstmt);
				}
				
				return listCount;
			}
			
	//채윤
		/**
		 * 식당 리뷰 조회
		 * @param conn
		 * @return
		 */
	public ArrayList<StoreReview> selectStoreReviewList(Connection conn, PageInfo pi){
		ArrayList<StoreReview> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectStoreReviewList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			
			int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() - 1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
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
	//에디터 조회
	public int increaseCountE(Connection conn, int editorNo) {
		// update문 => 처리된행수
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("increaseCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, editorNo);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
		
	}
	//식당리뷰
	public int increaseCountR(Connection conn, int reviewNo) {
		// update문 => 처리된행수
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("increaseCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, reviewNo);
			
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
				s.setStoreName(rset.getString("store_name"));
				s.setStoreImgPath(rset.getString("store_img_path"));
				s.setStoreImgPath(rset.getString("mem_nickname"));
				s.setStoreImgPath(rset.getString("review_content"));
				s.setStoreImgPath(rset.getString("review_img_path"));
				
				
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
	
	public ArrayList<Store> forDetailList(Connection conn){
		ArrayList<Store> fdlist = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("forDetailList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Store s = new Store();
				s.setStoreNo(rset.getInt("store_no"));
				s.setStoreName(rset.getString("store_name"));
				s.setStoreImgPath(rset.getString("store_img_path"));
				s.setLocalSi("local_si");
				s.setStoreAddress("store_address");
				s.setStoreIntro("store_intro");
				s.setStoreImgPath("store_img_path");
				s.setStorePopularity("store_popularity");
				s.setStorePopInfo("store_pop_info");
				s.setStorePopPath("STORE_POP_PATH");
				s.setStoreReview("RE_NO");
				
				fdlist.add(s);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}return fdlist;
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
	
	
	// 서원 관리자 식당조회 
	public ArrayList<Store> selectAdminStorelist(Connection conn){
	ArrayList<Store> list = new ArrayList<>();
	PreparedStatement pstmt = null;
	ResultSet rset = null;
	String sql = prop.getProperty("selectAdminStorelist");
	
	try {
		pstmt = conn.prepareStatement(sql);		
		rset = pstmt.executeQuery();
		
		while(rset.next()) {
			list.add(new Store(rset.getInt("store_no"),
								rset.getString("store_name"),
								rset.getString("store_address"),
								rset.getString("store_phone")
								));
		}
		
	} catch (SQLException e1) {
		e1.printStackTrace();
	} finally {
		close(rset);
		close(pstmt);
	}
	
	return list;
}
	

	//채윤 summernote
	public int insertPost(Connection conn, Editor e) {
	      int result = 0;
	      PreparedStatement pstmt = null;
	      String sql = prop.getProperty("insertEditor");
	      
	      try {
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setString(1, e.getEditorContent());
	         result = pstmt.executeUpdate();
	      } catch (SQLException e1) {
	         e1.printStackTrace();
	      } finally {
	         close(pstmt);
	      }
	      
	      return result;
	   }
	
	//채윤 카테고리 에디터글 조회
	public ArrayList<Editor> editorWritelist(Connection conn){
		ArrayList<Editor> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("editorWritelist");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			
			while(rset.next()) {
				Editor e = new Editor();
				e.setEditorNo(rset.getInt("editor_no"));
				e.setEditorAttach(rset.getString("EDITOR_ATTACH"));
				
				list.add(e);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		

		return list;
	}
	
	
	//채윤 에디터글 상세조회
	public Editor selectDetailEdior(Connection conn, int editorNo) {
		Editor e = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectDetailEdior");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, editorNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				e = new Editor(rset.getInt("EDITOR_NO")
							, rset.getString("EDITOR_ATTACH")
							, rset.getDate("ENROLL_DATE")
							, rset.getString("EDITOR_CONTENT")
							 );
			}
			
		} catch (SQLException e1) {
			e1.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return e;
	}

	
	//채윤 식당 리뷰 등록
		public int insertStoreReview(Connection conn, String html,StoreReview sr) {
		      int result = 0;
		      PreparedStatement pstmt = null;
		      String sql = prop.getProperty("insertStoreReview");
		      
		      try {
		         pstmt = conn.prepareStatement(sql);
		         pstmt.setInt(1, sr.getStoreNo());
		         pstmt.setString(2,sr.getReviewWriter());
		         pstmt.setString(3, sr.getReviewTitle());
		         pstmt.setString(4, html);
		         pstmt.setInt(5, sr.getReviewRate());
		         result = pstmt.executeUpdate();
		      } catch (SQLException e) {
		         e.printStackTrace();
		      } finally {
		         close(pstmt);
		      }
		      
		      return result;
		   }
		
		
		
	//채윤 식당 세션
		
		public Store storeSession(Connection conn,String storename, String storeno) {
			Store s = null;
			
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			
			String sql = prop.getProperty("storeSession");
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, storename);
				pstmt.setString(2, storeno);
				
				
				rset=pstmt.executeQuery();
				
				if(rset.next()) {
					s = new Store(rset.getInt("STORE_NO")
							    , rset.getString("STORE_NAME")
							    , rset.getString("STORE_TAG")
							    , rset.getString("STORE_ADDRESS")
							    , rset.getString("STORE_PHONE")
							    , rset.getString("STORE_INTRO")
							    , rset.getString("STORE_IMG_PATH")
							    , rset.getString("STORE_POPULARITY")
							    , rset.getString("STORE_POP_INFO")
							    , rset.getString("STORE_POP_PATH")
							    , rset.getString("STORE_OPERATING")
							    , rset.getString("STORE_BREAKTIME")
							    , rset.getString("NAVER_ADDRESS")
							    , rset.getString("DAY_OFF")
							    , rset.getString("STORE_URL")
							    , rset.getDate("STORE_ENROLLDATE")
							    , rset.getInt("COUNT"));
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}
			return s;
		}
		
		
		
		

		//채윤 식당리뷰 상세조회
		public StoreReview storeReviewDetail(Connection conn, int reNo) {
			StoreReview sr = null;
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			String sql = prop.getProperty("storeReviewDetail");
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, reNo);
				
				rset = pstmt.executeQuery();
				
				if(rset.next()) {
					sr = new StoreReview(rset.getInt("RE_NO")
									   , rset.getString("REVIEW_TITLE")
									   , rset.getString("MEM_NICKNAME")
									   , rset.getString("REVIEW_IMG_PATH")
									   , rset.getString("REVIEW_CONTENT")
									   , rset.getDate("REVIEW_ENROLLDATE")
									   , rset.getInt("COUNT")
								 );
					sr.setReviewMemId(rset.getString("mem_id"));
				}
				
			} catch (SQLException e1) {
				e1.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}
			
			return sr;
		}
		
		//서원 관리자 식당 등록
		public int storelistInsert(Connection conn, Store se) {
			int result = 0;
			PreparedStatement pstmt = null;
			String sql = prop.getProperty("storelistInsert");
			
			System.out.println(se);
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, se.getLocalSi());
				pstmt.setString(2, se.getLocalGu());
				pstmt.setString(3, se.getLocalRo());
				pstmt.setString(4, se.getStoreName());
				pstmt.setString(5, se.getStoreTag());	
				pstmt.setString(6, se.getStoreAddress());
				pstmt.setString(7, se.getStorePhone());
				pstmt.setString(8, se.getStoreIntro());
				pstmt.setString(9, se.getStoreImgPath());
				pstmt.setString(10, se.getStorePopularity());
				pstmt.setString(11, se.getStorePopInfo());
				pstmt.setString(12, se.getStorePopPath());				
				pstmt.setString(13, se.getStoreOperating());				
				pstmt.setString(14, se.getStoreBreaktime());
				pstmt.setString(15, se.getNaverAddress());
				pstmt.setString(16, se.getDayOff());
				pstmt.setString(17, se.getStoreUrl());		
				
				result = pstmt.executeUpdate();
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
			
			System.out.println(result);
			
			return result;

		}
		
		// 서원 관리자 식당 상세 조회
		public Store selectStoreFormList(Connection conn, int storeNo) {
			Store s = null;
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			String sql = prop.getProperty("selectStoreFormList");
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, storeNo);
				
				rset = pstmt.executeQuery();
				
				if(rset.next()) {
					s = new Store(rset.getInt("store_no")
									   , rset.getString("local_si")
									   , rset.getString("local_gu")
									   , rset.getString("local_ro")
									   , rset.getString("store_name")
									   , rset.getString("store_tag")
									   , rset.getString("store_address")
									   , rset.getString("store_phone")
									   , rset.getString("store_intro")
									   , rset.getString("store_img_path")
									   , rset.getString("store_popularity")
									   , rset.getString("store_pop_info")
									   , rset.getString("store_pop_path")
									   , rset.getString("store_operating")
									   , rset.getString("store_breaktime")
									   , rset.getString("naver_address")
									   , rset.getString("day_off")
									   , rset.getString("store_url")
									   , rset.getDate("store_enrolldate")
								 );
				}
				
			} catch (SQLException e1) {
				e1.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}
			
			return s;
		}
		
		
		
		
		//채윤 식당리뷰 세션
		
				public StoreReview storeReviewSession(Connection conn,String reviewNo) {
					StoreReview sr = null;
					
					PreparedStatement pstmt = null;
					ResultSet rset = null;
					
					String sql = prop.getProperty("storeReviewSession");
					
					try {
						pstmt = conn.prepareStatement(sql);
						pstmt.setString(1, reviewNo);
						
						
						rset=pstmt.executeQuery();
						
						if(rset.next()) {
							sr = new StoreReview(rset.getInt("RE_NO")
									    , rset.getString("REVIEW_WRITER")
									    , rset.getInt("STORE_NO")
									    , rset.getString("REVIEW_IMG")
									    , rset.getInt("REVIEW_RATE")
									    , rset.getDate("REVIEW_ENROLLDATE")
									    , rset.getDate("REVIEW_MODIFYDATE")
									    , rset.getString("REVIEW_STATUE")
									    , rset.getString("REVIEW_IMG_PATH")
									    , rset.getString("VISIT_DATE")
									    , rset.getString("REVIEW_TITLE")
									    , rset.getInt("COUNT")
									    , rset.getString("REVIEW_CONTENT")
									    , rset.getString("SR_CATEGORY"));
									    
						}
					} catch (SQLException e) {
						e.printStackTrace();
					} finally {
						close(rset);
						close(pstmt);
					}
					return sr;
				}
		
				// 서원 관리자 식당 수정
				public int storelistUpdate(Connection conn, Store s) {
					int result = 0;
					PreparedStatement pstmt = null;
					String sql = prop.getProperty("storelistUpdate");
					
					try {
						pstmt = conn.prepareStatement(sql);
						pstmt.setString(1, s.getStoreName());
						pstmt.setString(2, s.getStoreTag());	
						pstmt.setString(3, s.getStoreAddress());
						pstmt.setString(4, s.getStorePhone());
						pstmt.setString(5, s.getStoreIntro());
						pstmt.setString(6, s.getStoreImgPath());
						pstmt.setString(7, s.getStorePopularity());
						pstmt.setString(8, s.getStorePopInfo());
						pstmt.setString(9, s.getStorePopPath());				
						pstmt.setString(10, s.getStoreOperating());				
						pstmt.setString(11, s.getStoreBreaktime());
						pstmt.setString(12, s.getNaverAddress());
						pstmt.setString(13, s.getDayOff());
						pstmt.setString(14, s.getStoreUrl());		
						pstmt.setInt(15, s.getStoreNo());	
						
						result = pstmt.executeUpdate();
						
					} catch (SQLException e) {
						e.printStackTrace();
					} finally {
						close(pstmt);
					}
					
					//System.out.println(result);
					
					return result;

				}				
		
		
				// 서원 관리자 식당 삭제
				public int storelistDelete(Connection conn, int storeNo) {
					
					int result = 0;
					PreparedStatement pstmt = null;
					String sql = prop.getProperty("storelistDelete");
					
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
					
			// 서원 사용자 식당 조회
			public ArrayList<Store> storelistSearch(Connection conn) {
				ArrayList<Store> list = new ArrayList<>();
				PreparedStatement pstmt = null;
				ResultSet rset = null;
				String sql = prop.getProperty("storelistSearch");
				
				try {
					pstmt = conn.prepareStatement(sql);
					rset = pstmt.executeQuery();
					
					
					while(rset.next()) {
						list.add(new Store(rset.getString("STORE_IMG_PATH"),
									       rset.getString("LOCAL_SI"),
										   rset.getString("LOCAL_GU"),
										   rset.getString("STORE_NAME"),
										   rset.getString("STORE_TAG"),
										   rset.getString("STORE_POPULARITY"),
										   rset.getString("STORE_OPERATING"),
										   rset.getString("STORE_BREAKTIME")
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
				
		
		
//		// @@@@@@@태민 리뷰 관리@@@@@@
//			
			// 태민 회원번호별 조회
				public ArrayList<StoreReview> selectList(Connection conn, PageInfo pi, String search){
					// select문 => ResultSet(여러행) => ArrayList<Board>
					ArrayList<StoreReview> list = new ArrayList();
					PreparedStatement pstmt  = null;
					ResultSet rset = null;
					String sql = prop.getProperty("rselectList");
					
					if(!(search.equals("") || search == null)) {
						sql += "AND MEM_NICKNAME LIKE '%"+search+"%'";
					}
					
					try {
						pstmt = conn.prepareStatement(sql);
						
						/*
						 * ex) boardLimit : 10이라는 가정하에
						 * 
						 * currentPage : 1 => 시작값 : 1 | 끝값 : 10
						 * currentPage : 2 => 시작값 : 11 | 끝값 : 20
						 * currentPage : 3 => 시작값 : 21 | 끝값 : 30
						 * 
						 * 시작값 : (currentPage - 1) * boardLimit + 1
						 * 끝값 : 시작값 + boardLimit - 1
						 */
						int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
						int endRow = startRow + pi.getBoardLimit() - 1;
							
						pstmt.setInt(1, startRow);
						pstmt.setInt(2, endRow);
						
						rset = pstmt.executeQuery();
						
						while(rset.next()) {
							list.add(new StoreReview(rset.getInt("RE_NO"),
											   rset.getString("REVIEW_WRITER"),
											   rset.getInt("STORE_NO"),
											   rset.getString("REVIEW_CONTENT"),
											   rset.getString("REVIEW_IMG"),
											   rset.getInt("REVIEW_RATE"),
											   rset.getDate("REVIEW_ENROLLDATE"),
											   rset.getDate("REVIEW_MODIFYDATE"),
											   rset.getString("REVIEW_STATUE"),
											   rset.getString("REVIEW_IMG_PATH"),
											   rset.getString("VISIT_DATE"),
											   rset.getString("REVIEW_TITLE"),
											   rset.getInt("COUNT"),
											   rset.getString("MEM_ID"),
											   rset.getString("MEM_GRADE"),
											   rset.getString("STORE_NAME"),
											   rset.getString("MEM_NICKNAME")
											   ));
						}
						
					} catch (SQLException e) {
						e.printStackTrace();
					} finally {
						close(rset);
						close(pstmt);
					}
					return list;
						
				}
				
				// 닉네임별 조회
					public ArrayList<StoreReview> selectList1(Connection conn, PageInfo pi, String search){
						// select문 => ResultSet(여러행) => ArrayList<Board>
						ArrayList<StoreReview> list = new ArrayList();
						PreparedStatement pstmt  = null;
						ResultSet rset = null;
						String sql = prop.getProperty("rselectList1");
						
						if(!(search.equals("") || search == null)) {
							sql += "AND MEM_NICKNAME LIKE '%"+search+"%'";
						}
						
						try {
							pstmt = conn.prepareStatement(sql);
							
							/*
							 * ex) boardLimit : 10이라는 가정하에
							 * 
							 * currentPage : 1 => 시작값 : 1 | 끝값 : 10
							 * currentPage : 2 => 시작값 : 11 | 끝값 : 20
							 * currentPage : 3 => 시작값 : 21 | 끝값 : 30
							 * 
							 * 시작값 : (currentPage - 1) * boardLimit + 1
							 * 끝값 : 시작값 + boardLimit - 1
							 */
							int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
							int endRow = startRow + pi.getBoardLimit() - 1;
								
							pstmt.setInt(1, startRow);
							pstmt.setInt(2, endRow);
							
							rset = pstmt.executeQuery();
							
							while(rset.next()) {
								list.add(new StoreReview(rset.getInt("RE_NO"),
												   rset.getString("REVIEW_WRITER"),
												   rset.getInt("STORE_NO"),
												   rset.getString("REVIEW_CONTENT"),
												   rset.getString("REVIEW_IMG"),
												   rset.getInt("REVIEW_RATE"),
												   rset.getDate("REVIEW_ENROLLDATE"),
												   rset.getDate("REVIEW_MODIFYDATE"),
												   rset.getString("REVIEW_STATUE"),
												   rset.getString("REVIEW_IMG_PATH"),
												   rset.getString("VISIT_DATE"),
												   rset.getString("REVIEW_TITLE"),
												   rset.getInt("COUNT"),
												   rset.getString("MEM_ID"),
												   rset.getString("MEM_GRADE"),
												   rset.getString("STORE_NAME"),
												   rset.getString("MEM_NICKNAME")
												   ));
							}
							
						} catch (SQLException e) {
							e.printStackTrace();
						} finally {
							close(rset);
							close(pstmt);
						}
						return list;
							
					}
					
					// 태민 게시일별
					public ArrayList<StoreReview> selectList2(Connection conn, PageInfo pi, String search){
						// select문 => ResultSet(여러행) => ArrayList<Board>
						ArrayList<StoreReview> list = new ArrayList();
						PreparedStatement pstmt  = null;
						ResultSet rset = null;
						String sql = prop.getProperty("rselectList2");
						
						if(!(search.equals("") || search == null)) {
							sql += "AND MEM_NICKNAME LIKE '%"+search+"%'";
						}
						
						try {
							pstmt = conn.prepareStatement(sql);
							
							/*
							 * ex) boardLimit : 10이라는 가정하에
							 * 
							 * currentPage : 1 => 시작값 : 1 | 끝값 : 10
							 * currentPage : 2 => 시작값 : 11 | 끝값 : 20
							 * currentPage : 3 => 시작값 : 21 | 끝값 : 30
							 * 
							 * 시작값 : (currentPage - 1) * boardLimit + 1
							 * 끝값 : 시작값 + boardLimit - 1
							 */
							int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
							int endRow = startRow + pi.getBoardLimit() - 1;
								
							pstmt.setInt(1, startRow);
							pstmt.setInt(2, endRow);
							
							rset = pstmt.executeQuery();
					
							while(rset.next()) {
									list.add(new StoreReview(rset.getInt("RE_NO"),
													   rset.getString("REVIEW_WRITER"),
													   rset.getInt("STORE_NO"),
													   rset.getString("REVIEW_CONTENT"),
													   rset.getString("REVIEW_IMG"),
													   rset.getInt("REVIEW_RATE"),
													   rset.getDate("REVIEW_ENROLLDATE"),
													   rset.getDate("REVIEW_MODIFYDATE"),
													   rset.getString("REVIEW_STATUE"),
													   rset.getString("REVIEW_IMG_PATH"),
													   rset.getString("VISIT_DATE"),
													   rset.getString("REVIEW_TITLE"),
													   rset.getInt("COUNT"),
													   rset.getString("MEM_ID"),
													   rset.getString("MEM_GRADE"),
													   rset.getString("STORE_NAME"),
													   rset.getString("MEM_NICKNAME")
													   ));
								}
							
							
						} catch (SQLException e) {
							e.printStackTrace();
						} finally {
							close(rset);
							close(pstmt);
						}
						sql="";
						return list;
							
					}
				
				// 태민 리뷰총수
				public int selectListCount(Connection conn, String search) {

					int listCount = 0 ;
					
					PreparedStatement pstmt = null;
					ResultSet rset = null;
					
					String sql = prop.getProperty("rselectListCount");
					
					if(!(search.equals("") || search == null)) { 
						sql += "AND MEM_NICKNAME LIKE '%"+search+"%'";
					}
					
					try {
						pstmt = conn.prepareStatement(sql);
						rset = pstmt.executeQuery();
						
						if(rset.next()) {
							listCount = rset.getInt("COUNT");
						}
						
					} catch (SQLException e) {
						e.printStackTrace();
					} finally {
						close(rset);
						close(pstmt);
					}
					
					return listCount;
					
				}
				
				// 태민 체크박스 선택된 리뷰 블랙리스트로 변경
				public int rwithdrawalMember(Connection conn, String userNo) {
					
					int result = 0;
					PreparedStatement pstmt = null;
					
					String sql = prop.getProperty("rwithdrawalMember");
					
					try {
						pstmt = conn.prepareStatement(sql);
						pstmt.setString(1, userNo);
						
						result = pstmt.executeUpdate();
						
					} catch (SQLException e) {
						e.printStackTrace();
					} finally {
						close(pstmt);
					}
					
					return result;
					
				}

//				public ArrayList<StoreReview> searchList(Connection conn, PageInfo pi, String input){
//
//					ArrayList<StoreReview> list = new ArrayList();
//					PreparedStatement pstmt  = null;
//					ResultSet rset = null;
//					String sql = prop.getProperty("searchList");
//					
//					try {
//						pstmt = conn.prepareStatement(sql);
//						
//						int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
//						int endRow = startRow + pi.getBoardLimit() - 1;
//							
//						pstmt.setString(1, input);
//						pstmt.setString(2, input);
//						pstmt.setInt(3, startRow);
//						pstmt.setInt(4, endRow);
//						
//						rset = pstmt.executeQuery();
//						
//						while(rset.next()) {
//							list.add(new StoreReview(rset.getInt("MEM_NO"),
//											   rset.getString("MEM_ID"),
//											   rset.getString("MEM_PWD"),
//											   rset.getString("MEM_NAME"),
//											   rset.getString("MEM_PHONE"),
//											   rset.getString("MEM_EMAIL"),
//											   rset.getDate("MEM_ENROLLDATE"),
//											   rset.getDate("MEM_MODIFYDATE"),
//											   rset.getString("MEM_STATUS"),
//											   rset.getString("MEM_NICKNAME"),
//											   rset.getString("MEM_GRADE"),
//											   rset.getString("ADDRESS_CODE"),
//											   rset.getString("ADDRESS"),
//											   rset.getString("ADDRESS_DETAIL"),
//											   rset.getString("ADDRESS_REF"),
//											   rset.getString("MEM_IMGPATH"),
//											   rset.getString("WITHDRAW")
//											   ));
//						}
//						
//					} catch (SQLException e) {
//						e.printStackTrace();
//					} finally {
//						close(rset);
//						close(pstmt);
//					}
//					return list;
//						
//				}
			

			// 서원 식당검색 페이지 별점 조회
			public int selectStoreRate(Connection conn, int storeNo) {
				
				int storeRate = 0;
				
				PreparedStatement pstmt = null;
				ResultSet rset = null;
				String sql = prop.getProperty("selectStoreRate");
				
				try {
					pstmt = conn.prepareStatement(sql);
					
					pstmt.setInt(1, storeNo);
					
					rset = pstmt.executeQuery();
					
					if(rset.next()) {
						storeRate = rset.getInt("REVIEW_RATE");						
								
					}
					
				} catch (SQLException e) {
					e.printStackTrace();
				} finally {
					close(rset);
					close(pstmt);
				}
				
				return storeRate;
			}

	// 은영
	/**
	 * 지도에서 해당 지역 누르면 지역 페이지로 이동하는 Dao
	 * @param city : 사용자가 누른 지역명
	 * @return : 해당 지역에 있는 식당 목록 정보가 담긴 ArrayList<Store>
	 */
	public ArrayList<Store> searchCity(Connection conn, String city) {
		
		// 식당 지역별 조회 => ResultSet => ArrayList 
		ArrayList<Store> list = new ArrayList();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("searchCity");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, "%" + city + "%");
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
			Store s = new Store();
			
			s.setStoreNo(rset.getInt("STORE_NO"));
			s.setStoreName(rset.getString("STORE_NAME"));
			s.setStoreImgPath(rset.getString("STORE_IMG_PATH"));
			
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

	
	
	
}