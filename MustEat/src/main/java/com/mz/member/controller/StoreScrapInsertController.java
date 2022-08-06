package com.mz.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mz.member.model.service.MemberService;
import com.mz.member.model.vo.Member;
import com.mz.member.model.vo.StoreScrap;

/**
 * Servlet implementation class StoreScrapInsert
 */
@WebServlet("/insert.ss")
public class StoreScrapInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StoreScrapInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		int memNo = ((Member)request.getSession().getAttribute("loginUser")).getMemNo();
		String storeNo = request.getParameter("storeNo");
		String storeImg = request.getParameter("storeImg");
		
		
		
		StoreScrap ss = new StoreScrap(memNo, storeNo,storeImg);
		
		
		
		int result = new MemberService().storeScrapInsert(ss);
		
		
		HttpSession session = request.getSession();
		if(result > 0) {
			// 등록 성공
			session.setAttribute("alertMsg", "찜이 완료되었습니다!");
			response.sendRedirect(request.getContextPath() + "/detail.st?no=" + storeNo);
		}else { 
			// 등록 실패
			session.setAttribute("alertMsg", "신고 실패");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
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
