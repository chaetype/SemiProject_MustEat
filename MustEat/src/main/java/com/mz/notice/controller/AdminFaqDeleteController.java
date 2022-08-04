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
 * Servlet implementation class AdminFaqDeleteController
 */
@WebServlet("/deleteFaq.no")
public class AdminFaqDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminFaqDeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int cpage = Integer.parseInt(request.getParameter("cpage"));
		String delArr = request.getParameter("delNo");
		
		int result = new NoticeService().deleteFaq(delArr);
		
		HttpSession session = request.getSession();
		if(result > 0) {
			session.setAttribute("alertMsg", "성공적으로 삭제되었습니다.");
			
			response.sendRedirect(request.getContextPath() + "/adminFaqList.no?cpage=" + cpage);
		}else {
			System.out.println("실패");
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
