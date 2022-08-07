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
 * Servlet implementation class SearchCityController
 */
@WebServlet("/searchCity.st")
public class SearchCityController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchCityController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 메인페이지에서 도시 찾는 Servlet
		String city = request.getParameter("map");
		
		ArrayList<Store> list = new StoreService().searchCity(city);
		Store s = new StoreService().selectCity(city);
		
		request.setAttribute("list", list);
		request.setAttribute("city", s);
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
