package com.mz.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mz.member.model.vo.Member;
import com.mz.product.model.service.ProductService;

/**
 * Servlet implementation class MyPageForm
 */
@WebServlet("/myPage.me")
public class MyPageForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPageForm() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 은영
		// 마이페이지 보여주는 요청처리하는 Servlet
		
		String memId = ((Member)request.getSession().getAttribute("loginUser")).getMemId(); // 회원 아이디 담는 변수
		
		// 상품 배송 현황에 따른 주문 갯수
		int countR = new ProductService().countReadyDelivery(memId); // 상품준비중
		int countC = new ProductService().countCancel(memId); // 상품취소
		int countT = new ProductService().countInTransit(memId); // 배송중
		int countD = new ProductService().countDelivered(memId); // 배송완료
		int countB = new ProductService().countBasket(memId); // 장바구니

		request.setAttribute("countR", countR);
		request.setAttribute("countC", countC);
		request.setAttribute("countT", countT);
		request.setAttribute("countD", countD);
		request.setAttribute("countB", countB);
		
		request.getRequestDispatcher("views/key/myPage.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
