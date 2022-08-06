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
//		int result = new StoreService().increaseCountE(editorNo);
		
    	Editor e = new StoreService().selectDetailEdior(editorNo);
		request.setAttribute("e", e);
		request.getRequestDispatcher("views/kcy/userEditorDetail.jsp").forward(request, response);
    	
    	
//		if(result > 0) {  
//			Editor e = new StoreService().selectDetailEdior(editorNo);
//			request.setAttribute("e", e);
//			request.getRequestDispatcher("views/kcy/userEditorDetail.jsp").forward(request, response);
//			
//		}
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
