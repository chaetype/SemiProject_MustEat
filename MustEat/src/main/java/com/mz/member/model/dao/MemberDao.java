package com.mz.member.model.dao;

import static com.mz.common.JDBCTemplate.close;
import static com.mz.common.JDBCTemplate.getConnection;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.mz.common.model.vo.PageInfo;
import com.mz.member.model.vo.Follow;
import com.mz.member.model.vo.Member;
import com.mz.member.model.vo.MyPage;
import com.mz.member.model.vo.Point;
import com.mz.member.model.vo.Report;
import com.mz.member.model.vo.StoreScrap;

public class MemberDao {
	//메소드 위에 주석으로 이름 달아두기!!!
	
	// 태민 (xml파일 연결)
	private Properties prop = new Properties();
	
	public MemberDao() {
		
		String filePath = MemberDao.class.getResource("/db/sql/member-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	// 태민 (로그인관련 / LoginController2랑 연결)
	public Member loginMember(Connection conn, String userId, String userPwd) {
		
		Member m = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("loginMember");
		
		try {
			pstmt = conn.prepareStatement(sql); 
			pstmt.setString(1, userId);
			pstmt.setString(2, userPwd);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				m = new Member(rset.getInt("MEM_NO"),
							   rset.getString("MEM_ID"),
							   rset.getString("MEM_PWD"),
							   rset.getString("MEM_NAME"),
							   rset.getString("MEM_PHONE"),
							   rset.getString("MEM_EMAIL"),
							   rset.getDate("MEM_ENROLLDATE"),
							   rset.getDate("MEM_MODIFYDATE"),
							   rset.getString("MEM_STATUS"),
							   rset.getString("MEM_NICKNAME"),
							   rset.getString("MEM_GRADE"),
							   rset.getString("ADDRESS_CODE"),
							   rset.getString("ADDRESS"),
							   rset.getString("ADDRESS_DETAIL"),
							   rset.getString("ADDRESS_REF"),
							   rset.getString("MEM_IMGPATH"),
							   rset.getString("WITHDRAW")
							  );
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return m;
		
	}
	
	// 태민 (아이디찾기 / FindIdController2랑 연결)
	public Member findId(Connection conn, String userName, String userEmail) {
	
		Member m = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("findId");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userName);
			pstmt.setString(2, userEmail);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				m = new Member(rset.getString("MEM_ID"),
							   rset.getString("MEM_EMAIL"),
							   rset.getString("SECREAT_ID")
							  );
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return m;
	}
	
	// 태민 (비밀번호찾기 / FindPwdController2랑 연결)
		public Member findPwd(Connection conn, String userId, String userEmail) {
		
			Member m = null;
			
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			
			String sql = prop.getProperty("findPwd");
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, userId);
				pstmt.setString(2, userEmail);
				
				rset = pstmt.executeQuery();
				
				if(rset.next()) {
					m = new Member(rset.getString("MEM_PWD"),
								   rset.getString("MEM_EMAIL")
								  );
								 
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}

			return m;
		}
		
		
		// 태민(회원가입시 아이디 중복검사) 
		public int idCheck(Connection conn, String checkId) {
			
			int count = 0;
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			
			String sql = prop.getProperty("idCheck");
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, checkId);
				
				rset = pstmt.executeQuery();
				
				if(rset.next()) {
					count = rset.getInt("count");
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}
			
			return count;
			
		}	
		
		// 태민(회원가입시 닉네임 중복검사) 
		public int nickCheck(Connection conn, String checkNick) {
			
			int count = 0;
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			
			String sql = prop.getProperty("nickCheck");
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, checkNick);
				
				rset = pstmt.executeQuery();
				
				if(rset.next()) {
					count = rset.getInt("count");
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}
			return count;
			
		}	
		
		// 태민(회원가입시 이메일 중복검사) 
			public int emailCheck(Connection conn, String checkEmail) {
				
				int count = 0;
				PreparedStatement pstmt = null;
				ResultSet rset = null;
				
				String sql = prop.getProperty("emailCheck");
				
				try {
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, checkEmail);
					
					rset = pstmt.executeQuery();
					
					if(rset.next()) {
						count = rset.getInt("count");
					}
				} catch (SQLException e) {
					e.printStackTrace();
				} finally {
					close(rset);
					close(pstmt);
				}
				return count;
				
			}
	
			// 태민 (회원가입시 member테이블에 insert하는 Dao)
	
			public int insertMember(Connection conn, Member m) {
				// insert문 => 처리된 행수 
				int result = 0;
				
				PreparedStatement pstmt = null;
				String sql = prop.getProperty("insertMember");
				
				try {
					pstmt = conn.prepareStatement(sql); 
					
					pstmt.setString(1, m.getMemId());
					pstmt.setString(2, m.getMemPwd());
					pstmt.setString(3, m.getMemName());
					pstmt.setString(4, m.getMemPhone());
					pstmt.setString(5, m.getMemEmail());
					pstmt.setString(6, m.getMemNickname());
					pstmt.setString(7, m.getAddressCode());
					pstmt.setString(8, m.getAddress());
					pstmt.setString(9, m.getAddressDetail());
					pstmt.setString(10, m.getAddressRef());
					
					result = pstmt.executeUpdate();
					
				} catch (SQLException e) {
					e.printStackTrace();
				} finally {
					close(pstmt);
				}
				
				return result;
			}
			// 태민 회원번호별 조회
			public ArrayList<Member> selectList(Connection conn, PageInfo pi, String search){
				// select문 => ResultSet(여러행) => ArrayList<Board>
				ArrayList<Member> list = new ArrayList();
				PreparedStatement pstmt  = null;
				ResultSet rset = null;
				String sql = prop.getProperty("selectList");
				
				if(!(search.equals("") || search == null)) {
					sql += "AND MEM_NAME LIKE '%"+search+"%'";
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
						list.add(new Member(rset.getInt("MEM_NO"),
										   rset.getString("MEM_ID"),
										   rset.getString("MEM_PWD"),
										   rset.getString("MEM_NAME"),
										   rset.getString("MEM_PHONE"),
										   rset.getString("MEM_EMAIL"),
										   rset.getDate("MEM_ENROLLDATE"),
										   rset.getDate("MEM_MODIFYDATE"),
										   rset.getString("MEM_STATUS"),
										   rset.getString("MEM_NICKNAME"),
										   rset.getString("MEM_GRADE"),
										   rset.getString("ADDRESS_CODE"),
										   rset.getString("ADDRESS"),
										   rset.getString("ADDRESS_DETAIL"),
										   rset.getString("ADDRESS_REF"),
										   rset.getString("MEM_IMGPATH"),
										   rset.getString("WITHDRAW")
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
			
			// 태민 이름순 조회
				public ArrayList<Member> selectList1(Connection conn, PageInfo pi, String search){
					// select문 => ResultSet(여러행) => ArrayList<Board>
					ArrayList<Member> list = new ArrayList();
					PreparedStatement pstmt  = null;
					ResultSet rset = null;
					String sql = prop.getProperty("selectList1");
					
					if(!(search.equals("") || search == null)) {
						sql += "AND MEM_NAME LIKE '%"+search+"%'";
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
							list.add(new Member(rset.getInt("MEM_NO"),
											   rset.getString("MEM_ID"),
											   rset.getString("MEM_PWD"),
											   rset.getString("MEM_NAME"),
											   rset.getString("MEM_PHONE"),
											   rset.getString("MEM_EMAIL"),
											   rset.getDate("MEM_ENROLLDATE"),
											   rset.getDate("MEM_MODIFYDATE"),
											   rset.getString("MEM_STATUS"),
											   rset.getString("MEM_NICKNAME"),
											   rset.getString("MEM_GRADE"),
											   rset.getString("ADDRESS_CODE"),
											   rset.getString("ADDRESS"),
											   rset.getString("ADDRESS_DETAIL"),
											   rset.getString("ADDRESS_REF"),
											   rset.getString("MEM_IMGPATH"),
											   rset.getString("WITHDRAW")
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
				
				// 태민 회원등급순 조회
				public ArrayList<Member> selectList2(Connection conn, PageInfo pi, String search){
					// select문 => ResultSet(여러행) => ArrayList<Board>
					ArrayList<Member> list = new ArrayList();
					PreparedStatement pstmt  = null;
					ResultSet rset = null;
					String sql = prop.getProperty("selectList2");
					
					if(!(search.equals("") || search == null)) {
						sql += "AND MEM_NAME LIKE '%"+search+"%'";
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
							list.add(new Member(rset.getInt("MEM_NO"),
											   rset.getString("MEM_ID"),
											   rset.getString("MEM_PWD"),
											   rset.getString("MEM_NAME"),
											   rset.getString("MEM_PHONE"),
											   rset.getString("MEM_EMAIL"),
											   rset.getDate("MEM_ENROLLDATE"),
											   rset.getDate("MEM_MODIFYDATE"),
											   rset.getString("MEM_STATUS"),
											   rset.getString("MEM_NICKNAME"),
											   rset.getString("MEM_GRADE"),
											   rset.getString("ADDRESS_CODE"),
											   rset.getString("ADDRESS"),
											   rset.getString("ADDRESS_DETAIL"),
											   rset.getString("ADDRESS_REF"),
											   rset.getString("MEM_IMGPATH"),
											   rset.getString("WITHDRAW")
											   ));
							System.out.println(list);
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
			
			// 태민
			public int selectListCount(Connection conn, String search) {

				int listCount = 0 ;
				
				PreparedStatement pstmt = null;
				ResultSet rset = null;
				
				String sql = prop.getProperty("selectListCount");
				
				if(!(search.equals("") || search == null)) { 
					sql += "AND MEM_NAME LIKE '%"+search+"%'";
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
			
			// 태민 체크박스 선택된 회원상태 블랙리스트로 변경
			public int withdrawalMember(Connection conn, String userNo) {
				
				int result = 0;
				PreparedStatement pstmt = null;
				
				String sql = prop.getProperty("withdrawalMember");
				
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
			
			/////////////////////////탈퇴상태 멤버 관리////////////////
			
			// 태민 이름별 조회
			public ArrayList<Member> bselectList(Connection conn, PageInfo pi, String search){
				// select문 => ResultSet(여러행) => ArrayList<Board>
				ArrayList<Member> list = new ArrayList();
				PreparedStatement pstmt  = null;
				ResultSet rset = null;
				String sql = prop.getProperty("selectList");
				
				if(!(search.equals("") || search == null)) {
					sql += "AND MEM_NAME LIKE '%"+search+"%'";
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
						list.add(new Member(rset.getInt("MEM_NO"),
										   rset.getString("MEM_ID"),
										   rset.getString("MEM_PWD"),
										   rset.getString("MEM_NAME"),
										   rset.getString("MEM_PHONE"),
										   rset.getString("MEM_EMAIL"),
										   rset.getDate("MEM_ENROLLDATE"),
										   rset.getDate("MEM_MODIFYDATE"),
										   rset.getString("MEM_STATUS"),
										   rset.getString("MEM_NICKNAME"),
										   rset.getString("MEM_GRADE"),
										   rset.getString("ADDRESS_CODE"),
										   rset.getString("ADDRESS"),
										   rset.getString("ADDRESS_DETAIL"),
										   rset.getString("ADDRESS_REF"),
										   rset.getString("MEM_IMGPATH"),
										   rset.getString("WITHDRAW")
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
			
			// 태민 탈퇴유형별 조회
				public ArrayList<Member> bselectList1(Connection conn, PageInfo pi, String search){
					// select문 => ResultSet(여러행) => ArrayList<Board>
					ArrayList<Member> list = new ArrayList();
					PreparedStatement pstmt  = null;
					ResultSet rset = null;
					String sql = prop.getProperty("selectList1");
					
					if(!(search.equals("") || search == null)) {
						sql += "AND MEM_NAME LIKE '%"+search+"%'";
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
							list.add(new Member(rset.getInt("MEM_NO"),
											   rset.getString("MEM_ID"),
											   rset.getString("MEM_PWD"),
											   rset.getString("MEM_NAME"),
											   rset.getString("MEM_PHONE"),
											   rset.getString("MEM_EMAIL"),
											   rset.getDate("MEM_ENROLLDATE"),
											   rset.getDate("MEM_MODIFYDATE"),
											   rset.getString("MEM_STATUS"),
											   rset.getString("MEM_NICKNAME"),
											   rset.getString("MEM_GRADE"),
											   rset.getString("ADDRESS_CODE"),
											   rset.getString("ADDRESS"),
											   rset.getString("ADDRESS_DETAIL"),
											   rset.getString("ADDRESS_REF"),
											   rset.getString("MEM_IMGPATH"),
											   rset.getString("WITHDRAW")
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
				
				// 태민 탈퇴일별 조회
				public ArrayList<Member> bselectList2(Connection conn, PageInfo pi, String search){
					// select문 => ResultSet(여러행) => ArrayList<Board>
					ArrayList<Member> list = new ArrayList();
					PreparedStatement pstmt  = null;
					ResultSet rset = null;
					String sql = prop.getProperty("selectList2");
					
					if(!(search.equals("") || search == null)) {
						sql += "AND MEM_NAME LIKE '%"+search+"%'";
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
							list.add(new Member(rset.getInt("MEM_NO"),
											   rset.getString("MEM_ID"),
											   rset.getString("MEM_PWD"),
											   rset.getString("MEM_NAME"),
											   rset.getString("MEM_PHONE"),
											   rset.getString("MEM_EMAIL"),
											   rset.getDate("MEM_ENROLLDATE"),
											   rset.getDate("MEM_MODIFYDATE"),
											   rset.getString("MEM_STATUS"),
											   rset.getString("MEM_NICKNAME"),
											   rset.getString("MEM_GRADE"),
											   rset.getString("ADDRESS_CODE"),
											   rset.getString("ADDRESS"),
											   rset.getString("ADDRESS_DETAIL"),
											   rset.getString("ADDRESS_REF"),
											   rset.getString("MEM_IMGPATH"),
											   rset.getString("WITHDRAW")
											   ));
							System.out.println(list);
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
				
				// 탈퇴기간별 조회
				public ArrayList<Member> bselectList3(Connection conn, PageInfo pi, String search){
					// select문 => ResultSet(여러행) => ArrayList<Board>
					ArrayList<Member> list = new ArrayList();
					PreparedStatement pstmt  = null;
					ResultSet rset = null;
					String sql = prop.getProperty("selectList2");
					
					if(!(search.equals("") || search == null)) {
						sql += "AND MEM_NAME LIKE '%"+search+"%'";
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
							list.add(new Member(rset.getInt("MEM_NO"),
											   rset.getString("MEM_ID"),
											   rset.getString("MEM_PWD"),
											   rset.getString("MEM_NAME"),
											   rset.getString("MEM_PHONE"),
											   rset.getString("MEM_EMAIL"),
											   rset.getDate("MEM_ENROLLDATE"),
											   rset.getDate("MEM_MODIFYDATE"),
											   rset.getString("MEM_STATUS"),
											   rset.getString("MEM_NICKNAME"),
											   rset.getString("MEM_GRADE"),
											   rset.getString("ADDRESS_CODE"),
											   rset.getString("ADDRESS"),
											   rset.getString("ADDRESS_DETAIL"),
											   rset.getString("ADDRESS_REF"),
											   rset.getString("MEM_IMGPATH"),
											   rset.getString("WITHDRAW")
											   ));
							System.out.println(list);
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
			
			// 태민 탈퇴회원 총수
			public int bselectListCount(Connection conn, String search) {

				int listCount = 0 ;
				
				PreparedStatement pstmt = null;
				ResultSet rset = null;
				
				String sql = prop.getProperty("selectListCount");
				
				if(!(search.equals("") || search == null)) { 
					sql += "AND MEM_NAME LIKE '%"+search+"%'";
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
			
			// 태민 체크박스 선택된 회원정보 삭제
			public int bwithdrawalMember(Connection conn, String userNo) {
				
				int result = 0;
				PreparedStatement pstmt = null;
				
				String sql = prop.getProperty("withdrawalMember");
				
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
						
			/////////////////////////////////////////////////////////
						
						
			// 태민 회원 검색 조회
			public ArrayList<Member> searchList(Connection conn, PageInfo pi, String input){

				ArrayList<Member> list = new ArrayList();
				PreparedStatement pstmt  = null;
				ResultSet rset = null;
				String sql = prop.getProperty("searchList");
				
				try {
					pstmt = conn.prepareStatement(sql);
					
					int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
					int endRow = startRow + pi.getBoardLimit() - 1;
						
					pstmt.setString(1, input);
					pstmt.setString(2, input);
					pstmt.setInt(3, startRow);
					pstmt.setInt(4, endRow);
					
					rset = pstmt.executeQuery();
					
					while(rset.next()) {
						list.add(new Member(rset.getInt("MEM_NO"),
										   rset.getString("MEM_ID"),
										   rset.getString("MEM_PWD"),
										   rset.getString("MEM_NAME"),
										   rset.getString("MEM_PHONE"),
										   rset.getString("MEM_EMAIL"),
										   rset.getDate("MEM_ENROLLDATE"),
										   rset.getDate("MEM_MODIFYDATE"),
										   rset.getString("MEM_STATUS"),
										   rset.getString("MEM_NICKNAME"),
										   rset.getString("MEM_GRADE"),
										   rset.getString("ADDRESS_CODE"),
										   rset.getString("ADDRESS"),
										   rset.getString("ADDRESS_DETAIL"),
										   rset.getString("ADDRESS_REF"),
										   rset.getString("MEM_IMGPATH"),
										   rset.getString("WITHDRAW")
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
	
	
	// 은영
	/**
	 * 회원 정보 수정 처리하는 Service
	 * @param m : 수정하고자하는 회원 정보가 담긴 Member 객체
	 * @return : 수정 성공여부가 담긴 int형 변수 (성공 : 1 | 실패 : 0)
	 */
	public int updateMember(Connection conn, Member m) {
		
		// update => 처리된 행 수 반환
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, m.getMemPwd());
			pstmt.setString(2, m.getMemName());
			pstmt.setString(3, m.getMemPhone());
			pstmt.setString(4, m.getMemEmail());
			pstmt.setString(5, m.getMemNickname());
			pstmt.setString(6, m.getMemImgPath());
			pstmt.setString(7, m.getAddressCode());
			pstmt.setString(8, m.getAddress());
			pstmt.setString(9, m.getAddressDetail());
			pstmt.setString(10, m.getAddressRef());
			pstmt.setString(11, m.getMemId());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
		
	}
	
	// 은영
	/**
	 * 수정된 회원정보 조회하는 Dao
	 * @param memId : 조회하고자하는 회원 아이디
	 * @return : 수정된 회원 정보가 담긴 Member 객체
	 */
	public Member selectUpdateMember(Connection conn, String memId) {
		
		// select => 조회된 행 반환(한 행) => ResultSet
		Member updateMem = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectUpdateMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
								
				updateMem = new Member(rset.getInt("MEM_NO"),
									   rset.getString("MEM_ID"),
									   rset.getString("MEM_PWD"),
									   rset.getString("MEM_NAME"),
									   rset.getString("MEM_PHONE"),
									   rset.getString("MEM_EMAIL"),
									   rset.getDate("MEM_ENROLLDATE"),
									   rset.getDate("MEM_MODIFYDATE"),
									   rset.getString("MEM_STATUS"),
									   rset.getString("MEM_NICKNAME"),
									   rset.getString("MEM_GRADE"),
									   rset.getString("ADDRESS_CODE"),
									   rset.getString("ADDRESS"),
									   rset.getString("ADDRESS_DETAIL"),
									   rset.getString("ADDRESS_REF"),
									   rset.getString("MEM_IMGPATH"),
									   rset.getString("WITHDRAW")
									 );
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return updateMem;
		
	}
	
	
	//채윤
	/**
	 * 신고목록 조회
	 * @param conn
	 * @return
	 */
	public ArrayList<Report> selectReportList(Connection conn){
		
		ArrayList<Report> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectReportList");
		
		try {
			pstmt=conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Report(rset.getInt("report_no"),
									rset.getString("mem_nickname"),
									rset.getString("mem_id"),
									rset.getString("review_title"),
									rset.getString("report_content"),
									rset.getDate("report_date")
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
	
	// 은영
	/**
	 * 회원 탈퇴 요청 처리하는 Dao
	 * @param withdraw : 탈퇴 사유
	 * @param memId : 탈퇴할 회원 아이디
	 * @param deletePwd : 탈퇴시 확인할 회원 비밀번호
	 * @return : 탈퇴 성공여부가 담긴 int형 변수 (성공 : 1 | 실패 : 0)
	 */
	public int deleteMember(Connection conn, String withdraw, String memId, String deletePwd) {
		
		// update => 처리된 행 수 반환
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteMember");
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, withdraw);
			pstmt.setString(2, memId);
			pstmt.setString(3, deletePwd);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
		
	}
	
	// 은영
	/**
	 * 마이페이지 리뷰, 적립금, 가고싶다, 팔로우 횟수 조회하는 Service
	 * @param memId : 로그인한 회원 아이디
	 * @return : 마이페이지 정보가 담긴 MyPage 객체
	 */
	public MyPage selectMyPage(Connection conn, String memId) {
		
		// select => ResultSet => 한 행 조회
		MyPage my = null; 
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMyPage");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				
				my = new MyPage(rset.getString("MEM_ID")
							  , rset.getInt("STORE_REVIEW")
							  , rset.getInt("PRODUCT_REVIEW")
							  , rset.getInt("MPS_POINT")
							  , rset.getInt("STORE_SCRAP")
							  , rset.getInt("FOLLOW"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return my;
		
	}
	
	// 은영
	/**
	 * 마이페이지에서 적립금 내역 중 최신 2개 조회하는 Dao
	 * @param memId : 로그인한 회원아이디 
	 * @return : 적립금 내역이 담긴 ArrayList<Point> 객체
	 */
	public ArrayList<Point> selectNewPoint(Connection conn, String memId) {
		
		// 조회된 행 수 반환 => ResultSet => ArrayList
		ArrayList<Point> mpsList = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectNewPoint");
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memId);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				mpsList.add(new Point(rset.getDate("SU_DATE")
						            , rset.getString("MPS_CATEGORY")
						            , rset.getInt("MPS_RECORD")
						            , rset.getString("MPS_STATUS")
						            ));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return mpsList;
		
	}
	
	// 은영
	/**
	 * 마이페이지 식당 스크랩 중 최신 2개 조회하는 Dao
	 * @param memId : 로그인한 회원 아이디
	 * @return : 식당 스크랩 리스트가 들어간 ArrayList<StoreScrap> 객체 
	 */
	public ArrayList<StoreScrap> selectNewScrap(Connection conn, String memId) {
		
		// 조회된 행 수 반환 => ResultSet => ArrayList
		ArrayList<StoreScrap> ssList = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectNewScrap");
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memId);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				ssList.add(new StoreScrap( rset.getString("STORE_NAME")
										 , rset.getString("STORE_ADDRESS")
										 , rset.getInt("RATE")
										 ));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return ssList;
		
	}
	
	
	//채윤
		/**
		 * 팔로우목록 조회
		 * @param conn
		 * @return
		 */
		public ArrayList<Follow> myFollowingList(Connection conn,int ffMNo){
			
			ArrayList<Follow> flist = new ArrayList<>();
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			
			String sql = prop.getProperty("myFollowingList");
			
			try {
				pstmt=conn.prepareStatement(sql);
				pstmt.setInt(1, ffMNo);
				rset = pstmt.executeQuery();
				
				while(rset.next()) {
					flist.add(new Follow(
										rset.getInt("follow_no"),
										rset.getString("mem_nickname"),
										rset.getString("mem_imgpath"),
										rset.getInt("STORE_REVIEW"),
										rset.getInt("PRODUCT_REVIEW"),
										rset.getInt("follow")
										));
							

				}
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				close(rset);
				close(pstmt);
			}
			
			return flist;
			
		}
		
		// 서원 관리자 적립금 조회
		public ArrayList<Point> membershipList(Connection conn){
			
			ArrayList<Point> list = new ArrayList<>();
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			String sql = prop.getProperty("membershipList");
			
			try {
				pstmt = conn.prepareStatement(sql);
				
				rset = pstmt.executeQuery();
				
				while(rset.next()) {
					list.add(new Point(rset.getDate("su_date"),
									   rset.getInt("mem_no"),
									   rset.getString("mem_name"),
									   rset.getString("mem_id"),
									   rset.getString("mem_phone"),
									   rset.getInt("mps_record"),
									   rset.getString("mps_category"),
									   rset.getString("mps_status")
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
		
		// 서원 관리자 적립금 지급
		public ArrayList<Point> membershipPayList(Connection conn){
			ArrayList<Point> list = new ArrayList<>();
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			String sql = prop.getProperty("membershipPayList");
			
			try {
				pstmt = conn.prepareStatement(sql);
				
				rset = pstmt.executeQuery();
				
				while(rset.next()) {
					list.add(new Point(rset.getInt("mem_no"),
									   rset.getString("mem_name"),
									   rset.getString("mem_id"),
									   rset.getInt("review_month"),
									   rset.getInt("save_point"),
									   rset.getString("mps_date"),
									   rset.getString("p_status")									   
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
		
		
		// 서원 관리자 적립금 지급하기 버튼 클릭시 적립금 지급
		
		
		// 서원 사용자 적립금 조회
		public ArrayList<Point> membershipUserList(Connection conn, int memNo){
			
			ArrayList<Point> list = new ArrayList<>();
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			String sql = prop.getProperty("membershipUserList");
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, memNo);
				
				rset = pstmt.executeQuery();
				
				while(rset.next()) {
					list.add(new Point(rset.getDate("su_date"),
									   rset.getString("mps_category"),
									   rset.getString("mps_status"),
									   rset.getInt("mps_record")
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
		
		// 서원 사용자 적립금 조회 페이지 사용 가능한 적립금 조회
		public int membershipUseable(Connection conn, int memNo) {
					
			
			int pu = 0;
			
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			String sql = prop.getProperty("membershipUseable");
			
			try {
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setInt(1, memNo);
				
				rset = pstmt.executeQuery();
				
				if(rset.next()) {
					pu = rset.getInt("USEABLE_MPS");															
					
							
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}
			
			return pu;
			
		}
		
		// 서원 사용자 적립금 조회 페이지 소멸 예정 적립금 조회
		public int membershipDelete(Connection conn, int memNo) {
			
			int pd = 0;
			
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			String sql = prop.getProperty("membershipDelete");
			
			try {
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setInt(1, memNo);
				
				rset = pstmt.executeQuery();
				
				if(rset.next()) {
					
					pd = rset.getInt("MPS_DELETE");
					
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}
			
			return pd;
		}
	
		// 서원 사용자 리뷰 조회 
		public ArrayList<Member> memberReviewList(Connection conn, int memNo){
			ArrayList<Member> reviewList = new ArrayList<>();
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			String sql = prop.getProperty("memberReviewList");
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, memNo);
				pstmt.setInt(2, memNo);
				
				rset = pstmt.executeQuery();
				
				while(rset.next()) {
					reviewList.add(new Member(rset.getDate("RV_DATE"),
									   rset.getString("RV_NAME"),
									   rset.getString("RV_CATEGORY"),
									   rset.getString("RV_RATE")
							          ));
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}
			
			return reviewList;		
		}
		
		// 서원 사용자 리뷰 조회 페이지 이번달 작성한 리뷰 조회
		public int memberReviewListMonth(Connection conn, int memNo) {
			int month = 0;
			
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			String sql = prop.getProperty("memberReviewListMonth");
			
			try {
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setInt(1, memNo);
				pstmt.setInt(2, memNo);
				
				rset = pstmt.executeQuery();
				
				if(rset.next()) {
					
					month = rset.getInt("RV_MONTH");
					
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}
			
			return month;
		}
			
		// 서원 사용자 리뷰 조회 페이지 그동안 작성한 리뷰 조회
		public int memberReviewListTotal(Connection conn, int memNo) {
			int total = 0;
			
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			String sql = prop.getProperty("memberReviewListTotal");
			
			try {
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setInt(1, memNo);
				
				rset = pstmt.executeQuery();
				
				if(rset.next()) {
					
					total = rset.getInt("RV_TOTAL");
					
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}
			
			return total;
		}
		
		//채윤
		/**
		 * 팔로우를 위한 회원목록 조회
		 * @param conn
		 * @return
		 */
		public ArrayList<Member> selectFMemList(Connection conn){
			
			ArrayList<Member> list = new ArrayList<>();
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			
			String sql = prop.getProperty("selectFMemList");
		
			try {
				pstmt=conn.prepareStatement(sql);
				rset = pstmt.executeQuery();
				
				while(rset.next()) {
		
					list.add(new Member(rset.getInt("mem_no"),
										rset.getString("MEM_IMGPATH"),
										rset.getString("mem_nickname"),
										rset.getString("mem_id"),
							/* rset.getInt("FOLLOW"), */
										rset.getInt("STORE_REVIEW")
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
		
		//채윤 신고 등록
		
		public int reportInsert(Connection conn, Report rp) {
			int result = 0;
			PreparedStatement pstmt = null;
			String sql = prop.getProperty("reportInsert");
			
			try {
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setString(1, rp.getReportContent());
				pstmt.setInt(2, rp.getReportType());
				pstmt.setInt(3, rp.getMemNo());
				pstmt.setInt(4, rp.getReNo());
				pstmt.setString(5, rp.getMemId());
				pstmt.setString(6, rp.getMemNickname());
				
				result = pstmt.executeUpdate();
				
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				close(pstmt);
			}
			
			return result;
		}
		
		
		
		//채윤
				/**
				 * 찜한 가게 목록 조회
				 * @param conn
				 * @return
				 */
		public ArrayList<StoreScrap> storeScrapList(Connection conn,int MNo){
					
			ArrayList<StoreScrap> list = new ArrayList<>();
			PreparedStatement pstmt = null;
			ResultSet rset = null;
					
			String sql = prop.getProperty("storeScrapList");
					
					try {
						pstmt=conn.prepareStatement(sql);
						pstmt.setInt(1, MNo);
						rset = pstmt.executeQuery();
						
						while(rset.next()) {
							list.add(new StoreScrap(
												rset.getInt("SCRAP_NO"),
												rset.getString("STORE_IMG_PATH"),
												rset.getString("STORE_NAME"),
												rset.getString("STORE_ADDRESS"),
												rset.getInt("SCRAP_RATE")
												
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

		
		
		
		
		//채윤 가게찜 등록
		
	public int storeScrapInsert(Connection conn, StoreScrap ss) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("storeScrapInsert");
					
		try {
			pstmt = conn.prepareStatement(sql);
						
			pstmt.setString(1, ss.getStoreNo());
			pstmt.setInt(2, ss.getMemno());
			pstmt.setString(3, ss.getStoreImg());
				
						
			result = pstmt.executeUpdate();
						
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				close(pstmt);
			}
					
				return result;
	}
	
	
	
	
	
	//채윤 팔로우 등록
	
	public int followInsert(Connection conn, Follow f) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("followInsert");
					
		try {
			pstmt = conn.prepareStatement(sql);
						
			pstmt.setInt(1, f.getfMNo());
			pstmt.setInt(2, f.getFingMNo());
				
						
			result = pstmt.executeUpdate();
						
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				close(pstmt);
			}
					
				return result;
	}
	
	
	// 채윤 신고 페이징...
		public int selectReportListCount(Connection conn) {
			int listCount = 0;
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			String sql = prop.getProperty("selectReportListCount");
			
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
		
}
		
		
		
		
		
		
		
		
	
