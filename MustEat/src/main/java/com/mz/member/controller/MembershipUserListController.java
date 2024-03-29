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
import com.mz.member.model.vo.Point;

/**
 * Servlet implementation class MembershipUserListController
 */
@WebServlet("/mpsuserlist.me")
public class MembershipUserListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MembershipUserListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		int memNo = ((Member)request.getSession().getAttribute("loginUser")).getMemNo();
		
		ArrayList<Point> list = new MemberService().membershipUserList(memNo);
		
		int pu = new MemberService().membershipUseable(memNo);
		
		int pd = new MemberService().membershipDelete(memNo);		
		
		request.setAttribute("list", list);
		
		request.setAttribute("pu", pu);
		
		request.setAttribute("pd", pd);
		 
		request.getRequestDispatcher("views/jsw/membershipViewsUser.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
