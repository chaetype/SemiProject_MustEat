package com.mz.member.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mz.common.model.vo.PageInfo;
import com.mz.member.model.service.MemberService;
import com.mz.member.model.vo.Member;

/**
 * Servlet implementation class AllMembersListController1
 */
@WebServlet("/allMembersList.bo")
public class AllMembersListController1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AllMembersListController1() {
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

		// * listcount : 현재 게시글 총갯수
		listCount = new MemberService().selectListCount();
		
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
				
		ArrayList<Member> list = null;
		int count = new MemberService().selectListCount();
				
		if(a==1) {
			list = new MemberService().selectList(pi);
			request.setAttribute("b", 1);
			request.setAttribute("c", c);
		}else if(a==2) {
			list = new MemberService().selectList1(pi);
			request.setAttribute("b", 2);
			request.setAttribute("c", c);
		}else if(a==3) {
			list = new MemberService().selectList2(pi);
			request.setAttribute("b", 3);
			request.setAttribute("c", c);
		}
		
		request.setAttribute("pi", pi);
		request.setAttribute("list", list);

		request.setAttribute("count", count);
		request.setAttribute("a", a);	

		request.getRequestDispatcher("views/ltm/allMembersAdmin.jsp").forward(request, response);
					
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
