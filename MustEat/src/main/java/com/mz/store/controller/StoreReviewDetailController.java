package com.mz.store.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mz.store.model.service.StoreService;
import com.mz.store.model.vo.StoreReview;

/**
 * Servlet implementation class StoreReviewDetailController
 */
@WebServlet("/detail.sr")
public class StoreReviewDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StoreReviewDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int reNo = Integer.parseInt(request.getParameter("reno"));
		
		StoreService sService = new StoreService();
	
		int result = sService.increaseCountR(reNo);
		
		StoreReview sr = sService.storeReviewDetail(reNo);
		request.setAttribute("sr", sr);
		request.getRequestDispatcher("views/kcy/userStoreReviewDetail91p.jsp").forward(request, response);
		
//		if(result > 0) { 
//			StoreReview sr = sService.storeReviewDetail(reNo);
//			request.setAttribute("sr", sr);
//			request.getRequestDispatcher("views/kcy/userStoreReviewDetail91p.jsp").forward(request, response);
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
