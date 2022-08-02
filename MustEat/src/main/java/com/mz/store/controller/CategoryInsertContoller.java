package com.mz.store.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.mz.common.MyFileRenamePolicy;
import com.mz.notice.model.service.NoticeService;
import com.mz.notice.model.vo.Contact;
import com.mz.store.model.service.StoreService;
import com.mz.store.model.vo.Editor;
import com.oreilly.servlet.MultipartRequest;

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
        
        System.out.println(request);
        
        String html = request.getParameter("editorContent");
        
        int result = new StoreService().insertEditor(html);
        
        if(result > 0) {
           request.setAttribute("html", html);
           request.getRequestDispatcher("views/kcy/userThumbnailCategory86p.jsp").forward(request, response);
           session.setAttribute("successMsg", "성공적으로 등록하였습니다.");
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
