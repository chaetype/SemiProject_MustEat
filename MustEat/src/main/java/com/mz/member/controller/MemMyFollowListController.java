package com.mz.member.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mz.member.model.service.MemberService;
import com.mz.member.model.vo.Follow;
import com.mz.member.model.vo.Member;


/**
 * Servlet implementation class MemMyFollowListController
 */
@WebServlet("/myfollow.me")
public class MemMyFollowListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemMyFollowListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int ffMNo = ((Member)request.getSession().getAttribute("loginUser")).getMemNo();
		
		
		ArrayList<Follow> flist = new MemberService().myFollowingList(ffMNo);

		
		
		request.setAttribute("followlist", flist);

		
		request.getRequestDispatcher("views/kcy/userFollowList95p.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
