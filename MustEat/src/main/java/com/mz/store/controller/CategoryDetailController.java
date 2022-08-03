package com.mz.store.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mz.store.model.service.StoreService;
import com.mz.store.model.vo.Editor;


/**
 * Servlet implementation class CategoryDetailController
 */
@WebServlet("/cdetail.st")
public class CategoryDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CategoryDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	int editorNo = Integer.parseInt(request.getParameter("no"));
		
		StoreService sService = new StoreService();
		
		// 1) 조회수 증가
		int result = sService.increaseCount(editorNo);
		
		if(result > 0) { // 유효한게시글 맞음 
			// 2) 게시글, 첨부파일 조회 
			Editor e = sService.selectDetailEdior(editorNo);
			
			
			// => 상세조회페이지
			request.setAttribute("e", e);
			
			
			request.getRequestDispatcher("views/kcy/userEditorDetail.jsp").forward(request, response);
			
		}else { // 유효한게시글 아님 => 에러페이지
			request.setAttribute("errorMsg", "공지사항 삭제 실패");
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
