package com.mz.store.controller;

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
 * Servlet implementation class StoreEnrollFormController
 */
@WebServlet("/storeinsert.st")
public class StoreEnrollFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StoreEnrollFormController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String tosTitle = request.getParameter("tosTitle");
		String tosNote = request.getParameter("tosNote");
		String tosContent = request.getParameter("tosContent");
		
		Tos t = new Tos();
		t.setTosTitle(tosTitle);
		t.setTosNote(tosNote);
		t.setTosContent(tosContent);
		
		int result = new TosService().insertStore(s);
		
		HttpSession session = request.getSession();
		if(result > 0) {
			// 등록 성공
			session.setAttribute("alertMsg", "성공적으로 식당 등록이 완료되었습니다.");
			response.sendRedirect(request.getContextPath() + "/storeadminlist.st");
		}else { 
			// 등록 실패
			session.setAttribute("alertMsg", "식당 등록 실패");
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
