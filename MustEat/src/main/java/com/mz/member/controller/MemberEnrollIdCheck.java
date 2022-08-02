package com.mz.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mz.member.model.service.MemberService;

/**
 * Servlet implementation class MemberEnrollIdCheck
 */
@WebServlet("/idCheck.me")
public class MemberEnrollIdCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberEnrollIdCheck() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 태민
		
		String checkId = request.getParameter("checkId");
		// 사용자가 입력했던 아이디값 == 중복확인해볼 아이디
		
		int count = new MemberService().idCheck(checkId);
	
		if(count == 1) { // 존재하는 아이디가 있을 경우 => 사용불가능 => "NNNNN"
			response.getWriter().print("NNNNN");
		}else { // 존재하는 아이디가 없을 경우 => 사용가능 => "NNNNY"
			response.getWriter().print("NNNNY");
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
