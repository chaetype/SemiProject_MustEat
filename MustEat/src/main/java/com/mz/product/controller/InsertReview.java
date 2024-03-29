package com.mz.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mz.member.model.vo.Member;
import com.mz.product.model.service.ProductService;
import com.mz.product.model.vo.ProductReview;

/**
 * Servlet implementation class InsertReview
 */
@WebServlet("/insert.rv")
public class InsertReview extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertReview() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		request.setCharacterEncoding("utf-8");
		System.out.println("rate" + request.getParameter("rate"));
		System.out.println(request.getParameter("no"));
		
		
		String prReviewContent = request.getParameter("content");
		int rate = Integer.parseInt(request.getParameter("rate"));
		int ProductCode = Integer.parseInt(request.getParameter("no"));
		int memNo = ((Member)request.getSession().getAttribute("loginUser")).getMemNo();
		
		ProductReview pr = new ProductReview();
		
		
		pr.setPrReviewContent(prReviewContent);
		pr.setProductCode(ProductCode);
		pr.setReviewWriter(String.valueOf(memNo));
		pr.setPrReviewRate(rate);
		
		int result = new ProductService().insertReview(pr);
		
		
		response.getWriter().print(result);
	
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
