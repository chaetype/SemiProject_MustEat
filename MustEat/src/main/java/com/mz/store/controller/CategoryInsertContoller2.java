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
import com.mz.store.model.service.StoreService;
import com.oreilly.servlet.MultipartRequest;
import com.mz.store.model.vo.Editor;

/**
 * Servlet implementation class CategoryInsertContoller
 */
@WebServlet("/ctinsert.st")
public class CategoryInsertContoller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CategoryInsertContoller() {
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
	       
			
			String html = multiRequest.getParameter("editcontent");
			String attach = multiRequest.getParameter("titleImg");
			
			System.out.println(html);
	        
			Editor e = new Editor();
	        e.setEditorContent(html);
	        e.setEditorAttach(attach);
			
			
	        int result = new StoreService().insertEditor(e);
	        
	        if(result > 0) {
	          response.sendRedirect(request.getContextPath() + "/clist.st");
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
