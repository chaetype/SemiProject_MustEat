package com.mz.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mz.member.model.service.MemberService;

/**
 * Servlet implementation class MemberEnrollNickCheck
 */
@WebServlet("/nickCheck.me")
public class MemberEnrollNickCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberEnrollNickCheck() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String checkNick = request.getParameter("checkNick");
		// 사용자가 입력했던 닉네임값 == 중복확인해볼 닉네임
		int count = new MemberService().nickCheck(checkNick);

		if(count == 1) { // 존재하는 닉네임이 있을 경우 => 사용불가능 => "NNNNN"
			response.getWriter().print("NNNN");
		}else { // 존재하는 닉네임이 없을 경우 => 사용가능 => "NNNNY"
			response.getWriter().print("NNNY");
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
