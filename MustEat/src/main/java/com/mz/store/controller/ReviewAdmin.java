package com.mz.store.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mz.common.model.vo.PageInfo;
import com.mz.store.model.service.StoreService;
import com.mz.store.model.vo.StoreReview;

/**
 * Servlet implementation class ReviewAdmin
 */
@WebServlet("/reviewAdmin.bo")
public class ReviewAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//태민
				// 회원 전체 조회페이지(관리자) 요청
				
				// ----------- 페이징 처리 ------------
				int listCount;    // 현재 총 게시글 갯수
				int currentPage;   // 사용자가 곧 보게될 페이지 (즉, 현재 사용자가 요청한 페이지)
				int pageLimit;    // 페이징바의 페이지 최대갯수 (몇개 단위씩)
				int boardLimit;   // 한 페이지당 보여질 게시글 최대갯수 (몇개 단위씩)
				// 위의 4개를 가지고 아래 3개의 값을 구해낼꺼임
				int maxPage;      // 가장 마지막 페이지 (총 페이지 수)
				int startPage;    // 페이징바의 시작수  
				int endPage;	  // 페이징바의 끝수

				// 검색어
				String search = request.getParameter("search");
				
				// * listcount : 현재 게시글 총갯수
				listCount = new StoreService().selectListCount(search);
				
				// System.out.println(listCount);
				
				// * currentPage : 사용자가 보게될 페이지 (즉, 사용자가 요청한 페이지)
				currentPage = Integer.parseInt(request.getParameter("cpage"));
				
				// * pageLimit : 페이징바의 페이지 최대 갯수 (몇개 단위씩)
				pageLimit = 5;
				
				// * boardLimit : 한 페이지당 보여질 게시글의 최대 갯수
				boardLimit = 10;
				
				/*
				 * * maxPage : 제일 마지막 페이지 수 (총 페이지 수)
				 * 
				 *  listCount, boardLimit에 영향을 받음
				 *  
				 *  ex) 게시글이 10개 단위씩 보여진다는 가정하에 
				 *  	
				 */
				
				maxPage = (int)Math.ceil((double)listCount / boardLimit);
				
				startPage = (currentPage-1) / pageLimit * pageLimit + 1;
				
				/*
				 * * endPage : 페이징바의 끝 수
				 * 
				 * * starPage, pageLimit에 영향을 받음 (단, maxPage에도 영향받음)
				 * 
				 * ex) pageLimit : 10 가정하에
				 * 
				 * statPage : 1 => end
				 */
				endPage = startPage + pageLimit - 1;
				
				// startPage가 11이면 endPage는 20으로 됨 (근데 maxPage가 고작 13까지 밖에 안되면?)
				if(endPage > maxPage) {
					endPage = maxPage;
				}
				
				
				// * 페이징바를 만들 때 필요한 객체
				PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
				
				// * 현재 요청한 페이지(currentPage)에 보여질 게시글 리스트 조회해야됨 (boardLimit 수만큼조회)
				
				
				int a = Integer.parseInt(request.getParameter("a"));
				String c = request.getParameter("c");
						
				System.out.println(search);
				
				ArrayList<StoreReview> list = null;
				int count = new StoreService().selectListCount(search);
						
				if(a==1) {   // 회원번호
					list = new StoreService().selectList(pi, search);
					request.setAttribute("c", c);
					request.setAttribute("search", search);
					
				}else if(a==2) {  // 닉네임
					list = new StoreService().selectList1(pi, search);
					request.setAttribute("c", c);
					request.setAttribute("search", search);
					
				}else if(a==3) {   // 게시일
					list = new StoreService().selectList2(pi, search);
					request.setAttribute("c", c);
					request.setAttribute("search", search);
					
				}
				
				request.setAttribute("pi", pi);
				request.setAttribute("list", list);

				request.setAttribute("count", count);
				request.setAttribute("a", a);	

				request.getRequestDispatcher("views/ltm/reviewsAdmin.jsp").forward(request, response);
				System.out.println(count);
				System.out.println(a);
			}

			/**
			 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
			 */
			protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				// TODO Auto-generated method stub
				doGet(request, response);
			}

		}