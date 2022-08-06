package com.mz.store.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mz.store.model.service.StoreService;
import com.mz.store.model.vo.Store;

/**
 * Servlet implementation class StoreDetailController
 */
@WebServlet("/detail.st")
public class StoreDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StoreDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int storeNo = Integer.parseInt(request.getParameter("no"));
		
		StoreService sService = new StoreService();
		
		int result = sService.increaseCount(storeNo);
		
		Store s = sService.selectStore(storeNo);
		request.setAttribute("s", s);
		
		request.getRequestDispatcher("views/kcy/userStoreDetail88p.jsp").forward(request, response);
		
//		if(result > 0) {
//			Store s = sService.selectStore(storeNo);
//			request.setAttribute("s", s);
//			
//			request.getRequestDispatcher("views/kcy/userStoreDetail88p.jsp").forward(request, response);
//			
//		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
