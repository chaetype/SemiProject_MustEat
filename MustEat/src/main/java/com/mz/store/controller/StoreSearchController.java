package com.mz.store.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mz.store.model.service.StoreService;
import com.mz.store.model.vo.Store;

/**
 * Servlet implementation class StoreSearchController
 */
@WebServlet("/search.st")
public class StoreSearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StoreSearchController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type_ = request.getParameter("select12");
		String keyword_ = request.getParameter("findKeyword");
		
		String type = "4";
		if(type_ != null) {
			type=type_;
		} 
//		else {
//			System.out.println("type is null");
//		}
		
		String keyword ="";
		if(keyword_ != null) {
			keyword = keyword_;
		}
		
		StoreService service = new StoreService();
		ArrayList<Store> list = service.userStoreSearch(type, keyword);
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("views/common/mainSecondPage.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
