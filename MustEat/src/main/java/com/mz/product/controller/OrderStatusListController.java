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
import com.mz.product.model.vo.Basket;
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
		
		// 함수에서 전달된 매개변수 값 뽑기
		String status = request.getParameter("status"); // 상품 배송현황 담는 변수
		String memId = ((Member)request.getSession().getAttribute("loginUser")).getMemId(); // 회원 아이디 담는 변수
		int num = 1; // 구매확정/취소 담은 변수 
		
		// 장바구니 담은 '월'만 조회
		ArrayList<Basket> bMonth = new ProductService().selectMonth(memId);
		// 장바구니 목록 
		ArrayList<Basket> bList = new ProductService().selectBasketList(memId);
		// 주문현황 '월'만 조회
		ArrayList<OrderPro> opMonth = new ArrayList<>();
		// 상품준비중, 배송중, 배송완료, 구매취소 목록
		ArrayList<OrderPro> opList = new ArrayList<>();
		String str = ""; // 상품준비중, 배송중, 배송완료 문구 담는 변수
		if (status.equals("preparing")) {
			str = "상품준비중";
			opMonth = new ProductService().selectOrderMonth(str, memId, num);
			opList = new ProductService().selectOrderList(str, memId, num);
		} else if (status.equals("transit")) {
			str = "배송중";
			opMonth = new ProductService().selectOrderMonth(str, memId, num);
			opList = new ProductService().selectOrderList(str, memId, num);
		} else if (status.equals("delivered")) {
			str = "배송완료";
			opMonth = new ProductService().selectOrderMonth(str, memId, num);
			opList = new ProductService().selectOrderList(str, memId, num);
		} else if (status.equals("cancel")) {
			str="상품준비중";
			num = 2; // 상품취소
			opMonth = new ProductService().selectOrderMonth(str, memId, num);
			opList = new ProductService().selectOrderList(str, memId, num);
		}

		// 상품 배송 현황에 따른 주문 갯수
		OrderPro op = new ProductService().countOrder(memId);

		request.setAttribute("basketMonth", bMonth);
		request.setAttribute("orderMonth", opMonth);
		request.setAttribute("orderList", opList);
		request.setAttribute("basketList", bList);
		request.setAttribute("orderStatus", op);

		
		if (status.equals("basket")) { // 장바구니
			request.getRequestDispatcher("views/key/orderBasketList.jsp").forward(request, response);
		} else if(status.equals("preparing")) { // 상품준비중
			request.getRequestDispatcher("views/key/orderReadyList.jsp").forward(request, response);
		} else if (status.equals("cancel")) { // 상품취소
			request.getRequestDispatcher("views/key/orderCancelList.jsp").forward(request, response);
		} else if (status.equals("transit")) { // 배송중
			request.getRequestDispatcher("views/key/orderInTransitList.jsp").forward(request, response);
		} else if (status.equals("delivered")) { // 배송완료
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
