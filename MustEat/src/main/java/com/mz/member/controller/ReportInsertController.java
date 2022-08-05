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
import com.mz.member.model.vo.Report;

/**
 * Servlet implementation class ReportInsertController
 */
@WebServlet("/insert.rp")
public class ReportInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReportInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		
		int reportType = Integer.parseInt(request.getParameter("reportType"));//신고타입
		String reportContent = request.getParameter("reportContent");//신고내용
		int streviewNo = Integer.parseInt(request.getParameter("no"));//신고당한 리뷰번호
		String reportedMemId = request.getParameter("reportedMemId");//신고당한 회원아이디 필요
		String reportMemNickName = ((Member)request.getSession().getAttribute("loginUser")).getMemNickname();//신고한 회원닉네임
		int memNo= ((Member)request.getSession().getAttribute("loginUser")).getMemNo();
		
		
		Report rp = new Report(memNo,reportType,reportContent,streviewNo,reportedMemId,reportMemNickName);
		
		
		
		
		int result = new MemberService().reportInsert(rp);
		
		HttpSession session = request.getSession();
		if(result > 0) {
			// 등록 성공
			session.setAttribute("alertMsg", "성공적으로 신고되었습니다.");
			response.sendRedirect(request.getContextPath() + "/detail.sr?no=" + streviewNo);
		}else { 
			// 등록 실패
			session.setAttribute("alertMsg", "신고 실패");
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
