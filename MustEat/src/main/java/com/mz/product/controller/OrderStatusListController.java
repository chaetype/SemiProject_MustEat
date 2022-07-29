package com.mz.product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mz.member.model.vo.Member;
import com.mz.product.model.service.ProductService;
import com.mz.product.model.vo.OrderPro;

/**
 * Servlet implementation class OrderStatusListController
 */
@WebServlet("/orderStatusList.pro")
public class OrderStatusListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderStatusListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 은영
		// 주문 현황에 따른 주문 목록들을 요청하는 Servlet
		
		String deliveryStatus = request.getParameter("delivery"); // 상품 배송현황 담는 변수
		// int orderStatus = Integer.parseInt(request.getParameter("status")); // 상품 확정 / 취소 담는 변수
		String memId = ((Member)request.getSession().getAttribute("loginUser")).getMemId(); // 회원 아이디 담는 변수
		
		// 함수에서 전달된 매개변수 값 뽑기
		int status = Integer.parseInt(request.getParameter("status")); // 상품준비중, 배송중, 배송완료, 상품취소 누르면 전달되는 데이터를 담음
				
		// 상품 배송 현황
		ArrayList<OrderPro> list = new ProductService().deliveryStatusList(deliveryStatus, memId);
		// 상품 배송 현황에 따른 주문 갯수
		int countR = new ProductService().countReadyDelivery(memId); // 상품준비중
		int countC = new ProductService().countCancel(memId); // 상품취소
		int countT = new ProductService().countInTransit(memId); // 배송중
		int countD = new ProductService().countDelivered(memId); // 배송완료
		int countB = new ProductService().countBasket(memId); // 장바구니
		
		request.setAttribute("orderList", list);
		request.setAttribute("countB", countB);
		request.setAttribute("countR", countR);
		request.setAttribute("countC", countC);
		request.setAttribute("countT", countT);
		request.setAttribute("countD", countD);
		
		if (status == 0) { // 장바구니
			request.getRequestDispatcher("views/key/orderBasketList.jsp").forward(request, response);
		} else if(status == 1) { // 상품준비중
			request.getRequestDispatcher("views/key/orderReadyList.jsp").forward(request, response);
		} else if (status == 2) { // 상품취소
			request.getRequestDispatcher("views/key/orderCancelList.jsp").forward(request, response);
		} else if (status == 3) { // 배송중
			request.getRequestDispatcher("views/key/orderInTransitList.jsp").forward(request, response);
		} else if (status == 4) { // 배송완료
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
