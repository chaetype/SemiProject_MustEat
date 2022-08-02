package com.mz.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mz.product.model.service.ProductService;
import com.mz.product.model.vo.OrderPro;

/**
 * Servlet implementation class Address
 */
@WebServlet("/address.do")
public class Address extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Address() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		
		String delName = request.getParameter("name");
		String delPhone = request.getParameter("memPhone");
		String delEmail = request.getParameter("email");
		String delAddress = request.getParameter("address");
		String memo = request.getParameter("memo");
		
		OrderPro op = new OrderPro(delName, delPhone, delEmail, delAddress, memo);
		
		int result = new ProductService().insertAddress(op);
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
