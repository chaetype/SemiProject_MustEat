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
 * Servlet implementation class StoreListDetailController
 */
@WebServlet("/storelistDetail.st")
public class StoreListDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StoreListDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int storeNo = Integer.parseInt(request.getParameter("no"));
		
		Store s = new StoreService().selectStoreFormList(storeNo);
		
		System.out.println(s);
		
		request.setAttribute("Store", s);
		request.getRequestDispatcher("views/jsw/storelistDetailView.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
