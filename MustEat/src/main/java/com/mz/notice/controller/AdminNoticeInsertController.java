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
import com.mz.notice.model.vo.Notice;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class AdminNoticeInsertController
 */
@WebServlet("/adminNoticeInsert.no")
public class AdminNoticeInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminNoticeInsertController() {
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
			
			String title = multiRequest.getParameter("contactTitle");
			String content = multiRequest.getParameter("contactContent");
			String writer = ((Member)session.getAttribute("loginUser")).getMemName();
			
			
			
			Notice n = new Notice();
			n.setNoticeTitle(title);
			n.setNoticeContent(content);
			n.setNoticeWriter(writer);
			
			
			
			
			if(multiRequest.getOriginalFileName("contactFile") != null) {
				String attachment = "resources/image/chr/" + multiRequest.getFilesystemName("contactFile");
				n.setNoticeAttach(attachment);
			}
			
			
			int result = new NoticeService().insertNotice(n);
			
			if(result > 0) { // 등록 성공
				session.setAttribute("alertMsg", "성공적으로 등록되었습니다.");
				response.sendRedirect(request.getContextPath() + "/adminNoticeList.no?cpage=1");
			}else { // 등록 실패
				if(multiRequest.getOriginalFileName("contactFile") != null) {
					new File(savePath + multiRequest.getFilesystemName("contactFile")).delete();
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
