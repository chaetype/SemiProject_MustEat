package com.mz.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mz.member.model.vo.Member;
import com.mz.product.model.service.ProductService;
import com.mz.product.model.vo.OrderPro;

/**
 * Servlet implementation class Address
 */
@WebServlet("/addressInsert.do")
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
		
		int memNo = ((Member)request.getSession().getAttribute("loginUser")).getMemNo();
		String delName = request.getParameter("name");
		String delPhone = request.getParameter("memPhone");
		String delEmail = request.getParameter("email");
		String delAddress = request.getParameter("address");
		String delAddressCode = request.getParameter("addressCode");
		String delAddressDetail = request.getParameter("addressDetail");
		String delAddressRef = request.getParameter("addressRef");
		String memo = request.getParameter("memo");
		String deliveryStatus = request.getParameter("deli");
		
		OrderPro op = new OrderPro(String.valueOf(memNo), memo, deliveryStatus, delName, delPhone, delEmail, delAddress, delAddressCode, delAddressDetail, delAddressRef);
		
		int result = new ProductService().insertAddress(op);
		
		//request.getRequestDispatcher("views/hsb/address.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
