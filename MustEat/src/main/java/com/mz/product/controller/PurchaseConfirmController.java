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
@WebServlet("/purchaseConfirm.pro")
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
		
		// 은영
		// 구매확정 처리하는 Servlet
		
		String status = request.getParameter("status"); // 배송현황
		int orderNo = Integer.parseInt(request.getParameter("orderNo")); // 주문번호
		
		String str = "";
		if(status.equals("상품준비중")) {
			str="preparing";
		} else if (status.equals("배송중")) {
			str="transit";
		} else if (status.equals("배송완료")) {
			str="delivered";
		}

		int orderStatus = new ProductService().updatePurchaseConfirm(orderNo);
		
		if(orderStatus > 0) { // 구매확정으로 변경 성공
			request.setAttribute("confirm", orderStatus);
			response.sendRedirect(request.getContextPath() + "/orderStatusList.pro?status=" +  str);
		} else { // 구매확정으로 변경 실패
			request.getSession().setAttribute("alertMsg", "구매 확정을 실패하였습니다.\n다시 시도해주세요.");
			response.sendRedirect(request.getContextPath() + "/myPage.me"); // 배송 전체페이지로 이동
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
