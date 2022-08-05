package com.mz.member.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mz.member.model.service.MemberService;
import com.mz.member.model.vo.Member;
import com.mz.member.model.vo.Point;

/**
 * Servlet implementation class MemberReviewListController
 */
@WebServlet("/reviewlist.me")
public class MemberReviewListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberReviewListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int memNo = ((Member)request.getSession().getAttribute("loginUser")).getMemNo();
		
		ArrayList<Member> reviewList = new MemberService().memberReviewList(memNo);
		
		int month = new MemberService().memberReviewListMonth(memNo);
		
		int total = new MemberService().memberReviewListTotal(memNo);		
		
		request.setAttribute("reviewList", reviewList);
		
		request.setAttribute("month", month);
		
		request.setAttribute("total", total);
		 
		request.getRequestDispatcher("views/jsw/reviewUser.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
