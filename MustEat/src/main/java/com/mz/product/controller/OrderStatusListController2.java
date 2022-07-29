package com.mz.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mz.member.model.vo.Member;
import com.mz.product.model.service.ProductService;

/**
 * Servlet implementation class OrderStatusListController2
 */
@WebServlet("/orderStatusList2.pro")
public class OrderStatusListController2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderStatusListController2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 은영
		// 주문 현황에 따른 주문 목록들을 요청하는 Servlet
		// 미완성!!!!!!!!맨 마지막에 할것!!!!!!!!!! => 코드 단순화하기위해서!!!!!!!!!!!!
		
		int num = Integer.parseInt(request.getParameter("status"));
		String memId = ((Member)request.getSession().getAttribute("loginUser")).getMemId();
		
		String status = "";
		int count = 0;
		if(num == 0) {
			count = new ProductService().countBasket(memId);
		} else if(num == 1) {
			status = "상품준비중";
			count = new ProductService().countOrder(status, memId);
		} else if(num == 3) {
			status ="배송중";
			count = new ProductService().countOrder(status, memId);
		} else if (num == 4) {
			status ="배송완료";
			count = new ProductService().countOrder(status, memId);
		} else if (num == 2) {
			count = new ProductService().countCancel(memId); // 상품취소
		}
	
		request.setAttribute("count", count);
		request.setAttribute("status", status);
		
		if (num == 0) { // 장바구니
			request.getRequestDispatcher("views/key/orderBasketList.jsp").forward(request, response);
		} else if(num == 1) { // 상품준비중
			request.getRequestDispatcher("views/key/orderReadyList.jsp").forward(request, response);
		} else if (num == 2) { // 상품취소
			request.getRequestDispatcher("views/key/orderCancelList.jsp").forward(request, response);
		} else if (num == 3) { // 배송중
			request.getRequestDispatcher("views/key/orderInTransitList.jsp").forward(request, response);
		} else if (num == 4) { // 배송완료
			request.getRequestDispatcher("views/key/orderDeliveredList.jsp").forward(request, response);
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
