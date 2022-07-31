package com.mz.member.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mz.member.model.service.MemberService;
import com.mz.member.model.vo.Member;
import com.mz.member.model.vo.MyPage;
import com.mz.member.model.vo.Point;
import com.mz.product.model.service.ProductService;
import com.mz.product.model.vo.OrderPro;
import com.mz.product.model.vo.ProductReview;
import com.mz.store.model.service.StoreService;
import com.mz.store.model.vo.StoreReview;

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
		
		// 마이페이지 리뷰, 적립금, 가고싶다, 팔로우 건수
		MyPage m = new MemberService().selectMyPage(memId);
		
		// 상품 배송 현황에 따른 주문 갯수
		OrderPro op = new ProductService().countOrder(memId);
		
		// 마이페이지에서 가게 리뷰 중 최신 2개 게시글 조회
		ArrayList<StoreReview> srList = new StoreService().selectNewStoreReview(memId);
		// 마이페이지에서 밀키트 리뷰 중 최신 2개 게시글 조회
		ArrayList<ProductReview> proList = new ProductService().selectNewProductReview(memId);
		// 마이페이지에서 적립금 내역 최신 2개 조회
		ArrayList<Point> mpsList = new MemberService().selectNewPoint(memId);
		
		request.setAttribute("myPage", m);
		request.setAttribute("storeReview", srList);
		request.setAttribute("productReview", proList);
		request.setAttribute("mpsPoint", mpsList);
		request.setAttribute("orderStatus", op);

		
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
