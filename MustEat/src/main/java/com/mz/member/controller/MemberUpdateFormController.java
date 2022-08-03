package com.mz.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mz.member.model.service.MemberService;
import com.mz.member.model.vo.Member;
import com.mz.member.model.vo.MyPage;

/**
 * Servlet implementation class MemberUpdateFormController
 */
@WebServlet("/updateForm.me")
public class MemberUpdateFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberUpdateFormController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 은영
		// 회원정보 수정 페이지를 요청하는 Servlet 
		
		String memId = ((Member)request.getSession().getAttribute("loginUser")).getMemId(); // 회원 아이디 담는 변수
		// 적립금 찾기
		MyPage m = new MemberService().selectMyPage(memId);
		
		request.setAttribute("myPage", m);
		
		request.getRequestDispatcher("views/key/memberUpdateForm.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
