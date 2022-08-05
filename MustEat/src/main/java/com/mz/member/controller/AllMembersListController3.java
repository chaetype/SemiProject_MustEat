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
 * Servlet implementation class AllMembersListController3
 */
@WebServlet("/allMembersList3.bo")
public class AllMembersListController3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AllMembersListController3() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 태민 회원 검색하는 기능 
		
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
		
		String input = request.getParameter("search");
		
		//System.out.println(input);
		
		if(input != null || !input.isEmpty()) {
			ArrayList<Member> list = new MemberService().searchList(pi, input);
			
			request.setAttribute("pi", pi);
			request.setAttribute("search", list);
			
			response.getWriter().print("NNN");
		}else {
			
		}
		
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
