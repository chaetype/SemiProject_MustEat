package com.mz.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mz.member.model.service.MemberService;
import com.mz.member.model.vo.Member;

/**
 * Servlet implementation class MemberEnrollForm2
 */
@WebServlet("/enroll2.me")
public class MemberEnrollForm2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberEnrollForm2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 태민
		// 실제 회원가입 하는 컨트롤러 (회원정보 db에 추가)
		
		// 1) 인코딩 작업 (post방식이고 한글값 넘어올때)
		request.setCharacterEncoding("UTF-8");
		
		// 2) 요청시 전달값 뽑아서 변수 및 객체에 기록하기
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		String userName = request.getParameter("userName");
		String userNick = request.getParameter("userNick");
		String userEmail = request.getParameter("userEmail");
		String userPhone = request.getParameter("userPhone");
		int addressCode = Integer.parseInt(request.getParameter("addressCode"));
		String address = request.getParameter("address");
		String addressDetail = request.getParameter("addressDetail");
		String addressRef = request.getParameter("addressRef");
		
		Member m = new Member(userId, userPwd, userName, userPhone, userEmail, userNick
				  , addressCode, address, addressDetail, addressRef);
		
		int result = new MemberService().insertMember(m);	
		
		if(result == 1) { // 성공적으로 회원가입
			response.getWriter().print("YYY");
		}else { // 회원가입 실패
			response.getWriter().print("NNN");
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
