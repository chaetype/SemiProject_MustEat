package com.mz.store.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mz.store.model.dao.StoreDao;
import com.mz.store.model.service.StoreService;
import com.mz.store.model.vo.StoreReview;

/**
 * Servlet implementation class UserReviewListController
 */
@WebServlet("/urlist.st")
public class UserReviewListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserReviewListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type_ = request.getParameter("select11");
		String keyword_ = request.getParameter("findKeyword");
		
		String type = "3";
		if(type_ != null) {
			type=type_;
		}
		
		String keyword ="";
		if(keyword_ != null) {
			keyword = keyword_;
		}
		
		StoreService service = new StoreService();
		ArrayList<StoreReview> list = service.userStoreReview(type, keyword);
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("views/kcy/userReviewLookup92p.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
