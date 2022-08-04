package com.mz.store.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.mz.common.MyFileRenamePolicy;
import com.mz.member.model.vo.Member;
import com.mz.store.model.service.StoreService;
import com.mz.store.model.vo.StoreReview;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class StoreReviewInsertController
 */
@WebServlet("/srinsert.st")
public class StoreReviewInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StoreReviewInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        
        if(ServletFileUpload.isMultipartContent(request)) {
			
			int maxSize = 10 * 1024 * 1024;
			
			String savePath = session.getServletContext().getRealPath("/resources/image/cy/attachment/");
			
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
	       
			
			
//	        System.out.println(html);
	        
			StoreReview sr = new StoreReview();

	        
	        int storeNo = Integer.parseInt(request.getParameter("no"));
	        String writer = String.valueOf(((Member)session.getAttribute("loginUser")).getMemNo());
	        String title = multiRequest.getParameter("title");
			String html = multiRequest.getParameter("reviewcontent");
			int rate = Integer.parseInt(multiRequest.getParameter("rate"));
			
			
			sr.setStoreNo(storeNo);
			sr.setReviewWriter(writer);
			sr.setReviewTitle(title);
			sr.setReviewRate(rate);
			
//		System.out.println(sr);
		
			int result = new StoreService().insertStoreReview(html, sr);
	        
	        if(result > 0) {
	          response.sendRedirect(request.getContextPath() + "/srlist.st");
	           session.setAttribute("successMsg", "성공적으로 등록하였습니다.");
	        }
	        
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
