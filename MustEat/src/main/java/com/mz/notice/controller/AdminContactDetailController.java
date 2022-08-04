package com.mz.notice.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mz.notice.model.service.NoticeService;
import com.mz.notice.model.vo.Contact;

/**
 * Servlet implementation class AdminContactDetailController
 */
@WebServlet("/adminContactDetail.no")
public class AdminContactDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminContactDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int contactNo = Integer.parseInt(request.getParameter("no"));
		
		Contact c = new NoticeService().selectContact(contactNo);
		
		request.setAttribute("c", c);
		request.getRequestDispatcher("views/chr/adminContactAnswerForm.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
