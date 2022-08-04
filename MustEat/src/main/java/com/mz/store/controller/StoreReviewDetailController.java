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
		int reviewNo = Integer.parseInt(request.getParameter("no"));
		
		StoreService sService = new StoreService();
		
		// 1) 조회수 증가
		int result = sService.increaseCountR(reviewNo);
		
		if(result > 0) { // 유효한게시글 맞음 
			// 2) 게시글, 첨부파일 조회 
			StoreReview sr = sService.storeReviewDetail(reviewNo);
			
			
			// => 상세조회페이지
			request.setAttribute("sr", sr);
			
			
			request.getRequestDispatcher("views/kcy/userStoreReviewDetail91p.jsp").forward(request, response);
			
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
