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
 * Servlet implementation class MemberUpdateController
 */
@WebServlet("/update.me")
public class MemberUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 은영
		// 회원정보 수정 요청처리하는 Servlet
		
		// 1) 인코딩 처리
		request.setCharacterEncoding("UTF-8");
		
		// 2) 요청시 전달값 뽑기 => 변수 및 객체 담기
		String memId = request.getParameter("userId");
		String updatePwd = request.getParameter("updatePwd");
		String memName = request.getParameter("userName");
		String memNickname = request.getParameter("userNickname");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String addressCode = request.getParameter("addressCode");
		String address = request.getParameter("address");
		String addressDetail = request.getParameter("addressDetail");
		String addressRef = request.getParameter("addressRef");
		
		Member m = new Member(memId, updatePwd, memName, phone, email, memNickname
							  , addressCode, address, addressDetail, addressRef);
		System.out.println(m);
	
		Member updateMem = new MemberService().updateMember(m);
		
		HttpSession session = request.getSession();
		if(updateMem == null) {
			session.setAttribute("alertMsg", "회원정보를 수정하는데 실패했습니다. 다시 시도해주시길 바랍니다.");
			response.sendRedirect(request.getContextPath() + "/updateForm.me");
		} else {
			session.setAttribute("loginUser", updateMem);
			session.setAttribute("alertMsg", "성공적으로 회원정보를 수정했습니다.");
			response.sendRedirect(request.getContextPath() + "/myPage.me");
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
