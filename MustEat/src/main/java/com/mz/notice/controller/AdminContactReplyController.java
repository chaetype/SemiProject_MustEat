package com.mz.notice.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mz.notice.model.service.NoticeService;

/**
 * Servlet implementation class AdminContactReplyController
 */
@WebServlet("/reply.no")
public class AdminContactReplyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminContactReplyController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		int contactNo = Integer.parseInt(request.getParameter("no"));
		int chkNo = Integer.parseInt(request.getParameter("chkNo"));
		String answer = request.getParameter("answer");
		
		int result = new NoticeService().updateContactReply(contactNo, answer);
		
		HttpSession session = request.getSession();
		if(result > 0) {
			if(chkNo == 1) {
				session.setAttribute("alertMsg", "답변이 수정되었습니다.");
			}else {
				session.setAttribute("alertMsg", "답변이 등록되었습니다.");
			}
			
			response.sendRedirect(request.getContextPath() + "/adminContactDetail.no?no=" + contactNo);
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
