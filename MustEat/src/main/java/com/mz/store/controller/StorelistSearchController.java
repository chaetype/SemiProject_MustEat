package com.mz.store.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mz.member.model.service.MemberService;
import com.mz.store.model.service.StoreService;
import com.mz.store.model.vo.Store;

/**
 * Servlet implementation class StorelistSearchController
 */
@WebServlet("/storesearch.st")
public class StorelistSearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StorelistSearchController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		//int storeNo = Integer.parseInt(request.getParameter("no"));
		
		ArrayList<Store> list = new StoreService().storelistSearch();
		
		//int storeRate = new StoreService().selectStoreRate(storeNo);
		
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("views/jsw/storeSearch.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
