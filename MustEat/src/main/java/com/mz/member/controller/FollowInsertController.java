package com.mz.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mz.member.model.service.MemberService;
import com.mz.member.model.vo.Follow;
import com.mz.member.model.vo.Member;

/**
 * Servlet implementation class FollowInsertController
 */
@WebServlet("/insert.fo")
public class FollowInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FollowInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		int fMno = ((Member)request.getSession().getAttribute("loginUser")).getMemNo();
		int fingMno=Integer.parseInt(request.getParameter("fingMno"));
		
		
		
		
		Follow f = new Follow(fMno,fingMno);
		
		
		
		int result = new MemberService().followInsert(f);
//		System.out.println(f);
		
		
		HttpSession session = request.getSession();
		if(result > 0) {
			// 등록 성공
			session.setAttribute("alertMsg", "팔로우 성공!");
			response.sendRedirect(request.getContextPath() + "/mlist.fo");
		}else { 
			// 등록 실패
			session.setAttribute("alertMsg", "팔로우 오류 발생");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
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
