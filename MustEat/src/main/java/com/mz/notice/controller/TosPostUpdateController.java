package com.mz.notice.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mz.notice.model.service.TosService;
import com.mz.notice.model.vo.Tos;

/**
 * Servlet implementation class TosPostUpdateController
 */
@WebServlet("/tospostupdate.no")
public class TosPostUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TosPostUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		
		
		int tosNo = Integer.parseInt(request.getParameter("no"));
		
		int result = new TosService().postTos(tosNo);
		
		if(result > 0) {
			response.sendRedirect(request.getContextPath() + "/tosdetail.no?no=" + tosNo);
		}else {
			request.setAttribute("alertMsg", "이용약관 게시 실패");
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
