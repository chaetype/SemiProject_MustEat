package com.mz.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mz.member.model.service.MemberService;

/**
 * Servlet implementation class MemberEnrollEmailCheck
 */
@WebServlet("/emailCheck.me")
public class MemberEnrollEmailCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberEnrollEmailCheck() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String checkEmail = request.getParameter("checkEmail");
		// 사용자가 입력했던 아이디값 == 중복확인해볼 아이디
		
		int count = new MemberService().emailCheck(checkEmail);
		if(count == 1) { // 존재하는 이메일이 있을 경우 => 사용불가능 => "NNN"
			response.getWriter().print("NNN");
		}else { // 존재하는 이메일이 없을 경우 => 사용가능 => "NNY"
			response.getWriter().print("NNY");
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
