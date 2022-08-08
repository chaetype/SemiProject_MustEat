package com.mz.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mz.member.model.vo.Member;
import com.mz.product.model.service.ProductService;
import com.mz.product.model.vo.OrderList;
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
		String delAddress = request.getParameter("sample6_address");
		String delAddressCode = request.getParameter("sample6_postcode");
		String delAddressDetail = request.getParameter("sample6_detailAddress");
		String delAddressRef = request.getParameter("sample6_extraAddress");
		String memo = request.getParameter("memo");
		int orderQuentity = Integer.parseInt(request.getParameter("tCount"));
		int totalPrice = Integer.parseInt(request.getParameter("price"));
		String deliType = request.getParameter("deli");
		int productCode = Integer.parseInt(request.getParameter("producntCode"));
		
		
		OrderPro op = new OrderPro(String.valueOf(memNo), orderQuentity, memo, totalPrice, deliType, delName, delPhone, delEmail, delAddress, delAddressCode, delAddressDetail, delAddressRef);
		
		int result1 = new ProductService().insertAddress(op);
		
		if(result1 > 0) {
			request.setAttribute("op", op);
			request.getRequestDispatcher("views/hsb/payComplete.jsp").forward(request, response);
			
		OrderList or = new OrderList(productCode, orderQuentity);
		int result2 = new ProductService().insertOrderList(or);
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
