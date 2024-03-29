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
 * Servlet implementation class FindIdController2
 */
@WebServlet("/findId2.me")
public class FindIdController2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindIdController2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//태민 
		//아이디 찾아서 별표가 포함된 형태로 findIdCompleted.jsp 화면에 보여주는 컨트롤러
		
		request.setCharacterEncoding("UTF-8");
		
		String userName = request.getParameter("userName");
		String userEmail = request.getParameter("userEmail");
		
		Member m = new MemberService().findId(userName, userEmail);
		request.setAttribute("Member", m);
		
		
		if(m == null) { // 아이디 찾기 실패 
			
			RequestDispatcher view = request.getRequestDispatcher("views/ltm/findId.jsp");		
			
			request.setAttribute("errorMsg", "이름 또는 이메일주소를 잘못 입력했습니다. \n입력하신 내용을 다시 확인해주세요.");
			
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