package com.mz.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mz.member.model.vo.Member;
import com.mz.product.model.service.ProductService;
import com.mz.product.model.vo.Basket;

/**
 * Servlet implementation class InsertCart
 */
@WebServlet("/insertCart.do")
public class InsertCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertCart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int memNo = ((Member)request.getSession().getAttribute("loginUser")).getMemNo();
		String productCode = request.getParameter("productCode");
		int amount = Integer.parseInt(request.getParameter("amount"));
		
		
		Basket bs = new Basket(String.valueOf(memNo), productCode, amount);
		
		int result = new ProductService().insertCart(bs);
		if(result > 0) {
			System.out.println("성공");
		}else {
			
		}
		response.sendRedirect(request.getContextPath()+"/detail.li?no=" + productCode);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
