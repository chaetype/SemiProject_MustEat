package com.mz.notice.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mz.notice.model.service.NoticeService;
import com.mz.notice.model.vo.FAQ;

/**
 * Servlet implementation class AdminFaqDetailController
 */
@WebServlet("/adminFaqDetail.no")
public class AdminFaqDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminFaqDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int faqNo = Integer.parseInt(request.getParameter("no"));
		int currentPage = Integer.parseInt(request.getParameter("cpage"));
		
		int result = new NoticeService().increaseFaqCount(faqNo);
		
		if(result > 0) {
			
			FAQ f = new NoticeService().selectFaq(faqNo);
			
			request.setAttribute("f", f);
			request.setAttribute("currentPage", currentPage);
			request.getRequestDispatcher("views/chr/adminFaqDetailView.jsp").forward(request, response);
			
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
