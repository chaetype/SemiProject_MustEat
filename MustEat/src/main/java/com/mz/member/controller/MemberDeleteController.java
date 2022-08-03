package com.mz.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mz.member.model.service.MemberService;
import com.mz.member.model.vo.Member;

/**
 * Servlet implementation class MemberDeleteController
 */
@WebServlet("/delete.me")
public class MemberDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberDeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 은영
		// 회원 탈퇴 처리하는 Servlet
		
		request.setCharacterEncoding("UTF-8");
		
		// 탈퇴 사유
		String withdraw = request.getParameter("withdraw");
		// 회원 아이디
		String memId = ((Member)request.getSession().getAttribute("loginUser")).getMemId();
		// 탈퇴시 입력하는 비밀번호 (회원 비밀번호와 동일한 값)
		String deletePwd = request.getParameter("deletePwd");
		// 회원 비밀번호
		// String checkPwd = ((Member)request.getSession().getAttribute("loginUser")).getMemPwd();
		
		int result = new MemberService().deleteMember(withdraw, memId, deletePwd);
		
		HttpSession session = request.getSession();
		if(result > 0) { // 탈퇴 성공
			session.removeAttribute("loginUser");
			request.getRequestDispatcher("views/key/memberWithdrawal.jsp").forward(request, response);
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
