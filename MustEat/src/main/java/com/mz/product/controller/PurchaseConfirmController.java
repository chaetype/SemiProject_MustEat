package com.mz.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mz.product.model.service.ProductService;

/**
 * Servlet implementation class PurchaseConfirmController
 */
@WebServlet("/confirm.pro")
public class PurchaseConfirmController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PurchaseConfirmController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 상품준비중, 배송중, 배송완료 => 구매확정으로 변경 처리하는 Servlet
		
		int orderNo = Integer.parseInt(request.getParameter("orderNo"));
		
		int orderStatus = new ProductService().updatePurchaseConfirm(orderNo);
		
		if(orderStatus > 0) { // 구매확정으로 변경 성공
			request.setAttribute("confirm", orderStatus);
			response.sendRedirect(request.getContextPath() + "/myPage.me");
		} else { // 구매확정으로 변경 실패
			
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
