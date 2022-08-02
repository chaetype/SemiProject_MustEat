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
 * Servlet implementation class OrderListController
 */
@WebServlet("/orderList.pro")
public class OrderListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 은영
		// 주문 전체 페이지
		
		String memId = ((Member)request.getSession().getAttribute("loginUser")).getMemId();
		
		// 전체 주문 현황 '월'만 조회
		ArrayList<OrderPro> month = new ProductService().selectAllOrderMonth(memId);
		
		// 전체 주문 현황
		ArrayList<OrderPro> list = new ProductService().selectAllOrderList(memId);
		
		// 상품 배송 현황에 따른 주문 갯수
		OrderPro op = new ProductService().countOrder(memId);
		
		request.setAttribute("orderMonth", month);
		request.setAttribute("orderList", list);
		request.setAttribute("orderStatus", op);
		
		request.getRequestDispatcher("/views/key/orderList.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
