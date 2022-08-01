package com.mz.notice.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mz.notice.model.service.TosService;
import com.mz.notice.model.vo.Tos;

/**
 * Servlet implementation class TosUpdateController
 */
@WebServlet("/tosupdate.no")
public class TosUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TosUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		int tosNo = Integer.parseInt(request.getParameter("no"));
		String tosTitle = request.getParameter("title");
		String tosNote = request.getParameter("note");
		String tosContent = request.getParameter("content");
		
		Tos t = new Tos();
		t.setTosNo(tosNo);
		t.setTosTitle(tosTitle);
		t.setTosNote(tosNote);
		t.setTosContent(tosContent);
		
		int result = new TosService().updateTos(t);
		
		if(result > 0) {
			response.sendRedirect(request.getContextPath() + "/tosdetail.no?no=" + tosNo);
		}else {
			
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
