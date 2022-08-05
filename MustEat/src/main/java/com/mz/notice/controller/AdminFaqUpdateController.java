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
import com.mz.notice.model.vo.FAQ;
import com.mz.notice.model.vo.Notice;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class AdminFaqUpdateController
 */
@WebServlet("/adminFaqUpdate.no")
public class AdminFaqUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminFaqUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
			
		int currentPage = Integer.parseInt(request.getParameter("currentPage"));
		
		int faqNo = Integer.parseInt(request.getParameter("faqNo"));
		String title = request.getParameter("contactTitle");
		String content = request.getParameter("contactContent");
		String writer = ((Member)session.getAttribute("loginUser")).getMemId();
		
		
		
		FAQ f = new FAQ();
		f.setFaqNo(faqNo);
		f.setFaqTitle(title);
		f.setFaqContent(content);
		f.setFaqWriter(writer);
		
		
		int result = new NoticeService().updateFaq(f);
		
		if(result > 0) { // 등록 성공
			session.setAttribute("alertMsg", "성공적으로 수정되었습니다.");
			response.sendRedirect(request.getContextPath() + "/adminFaqDetail.no?no=" + faqNo + "&cpage=" + currentPage);
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
