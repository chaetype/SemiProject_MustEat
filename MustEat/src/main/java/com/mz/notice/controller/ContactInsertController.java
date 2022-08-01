package com.mz.notice.controller;

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
import com.mz.member.model.vo.Member;
import com.mz.notice.model.service.NoticeService;
import com.mz.notice.model.vo.Contact;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class ContactInsertController
 */
@WebServlet("/contactInsert.no")
public class ContactInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContactInsertController() {
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
			
			String savePath = session.getServletContext().getRealPath("/resources/image/chr/");
			
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			
			String type = multiRequest.getParameter("contact-type");
			String title = multiRequest.getParameter("contact-title");
			String content = multiRequest.getParameter("contact-content");
			String writer = ((Member)session.getAttribute("loginUser")).getMemId();
			String email = multiRequest.getParameter("contact-email");
			String phone = multiRequest.getParameter("contact-phone");
			String attachment = "resources/image/chr/" + multiRequest.getFilesystemName("contact-file");
			
			Contact c = new Contact();
			c.setContactType(type);
			c.setContactTitle(title);
			c.setContactContent(content);
			c.setContactWriter(writer);
			c.setContactEmail(email);
			c.setContactPhone(phone);
			c.setContactAttach(attachment);
			
			int result = new NoticeService().insertContact(c);
			
			if(result > 0) {
				session.setAttribute("alertMsg", "성공적으로 등록되었습니다.");
				// 문의내역페이지로 이동
				response.sendRedirect(request.getContextPath() + "/contactList.no");
			}else {
				if(attachment != null) {
					new File(attachment).delete();
				}
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
