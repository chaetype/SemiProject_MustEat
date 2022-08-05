package com.mz.member.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mz.member.model.service.MemberService;

/**
 * Servlet implementation class AllMembersListController2
 */
@WebServlet("/allMembersList2.bo")
public class AllMembersListController2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AllMembersListController2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 태민
		// 체크박스에 선택된 회원번호 받아서 블랙리스트로 만들기
		
		String[] delArr = request.getParameterValues("delArr");
		int a = 0;
		String userNo = null;
		if(delArr !=null && delArr.length > 0) {
            for(int i=0; i<delArr.length; i++) {
               userNo = delArr[i];
               int result = new MemberService().withdrawalMember(userNo);
               if(result==1) {
            	   a++;
               }
       	    }
		}
		if(a==delArr.length) {
			//System.out.println("성공");
			response.getWriter().print("NNN");
		}else {
			//System.out.println("실패");
			response.getWriter().print("NNY");
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
