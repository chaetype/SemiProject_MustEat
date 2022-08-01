package com.mz.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mz.member.model.service.MemberService;
import com.mz.member.model.vo.Member;

/**
 * Servlet implementation class FindPwdController2
 */
@WebServlet("/findPwd2.me")
public class FindPwdController2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindPwdController2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String userId = request.getParameter("userId");
		String userEmail = request.getParameter("userEmail");
		
		Member m = new MemberService().findPwd(userId, userEmail);
		//request.setAttribute("Member", m);
		
		
		if(m == null) { // 아이디 찾기 실패 
			
			RequestDispatcher view = request.getRequestDispatcher("views/ltm/findPwd.jsp");		
			
			request.setAttribute("errorMsg", "아이디 또는 이메일주소를 잘못 입력했습니다. \n입력하신 내용을 다시 확인해주세요.");
			
			view.forward(request, response);
			
		}else { // 아이디 찾기 성공
			
			RequestDispatcher view = request.getRequestDispatcher("views/ltm/findIdCompleted.jsp");
			
			request.setAttribute("successMsg", m.getSecreatId());
			
			view.forward(request, response);
			
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
