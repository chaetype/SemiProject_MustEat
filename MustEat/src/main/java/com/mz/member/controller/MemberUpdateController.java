package com.mz.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.mz.common.MyFileRenamePolicy;
import com.mz.member.model.service.MemberService;
import com.mz.member.model.vo.Member;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class MemberUpdateController
 */
@WebServlet("/update.me")
public class MemberUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 은영
		// 회원정보 수정 요청처리하는 Servlet
		
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		
		if(ServletFileUpload.isMultipartContent(request)) {
			
			int maxSize = 10 * 1024 * 1024;
			
			String savePath = session.getServletContext().getRealPath("/resources/image/key/attachment/");
			
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy() );
			
			String userId = ((Member)session.getAttribute("loginUser")).getMemId();
			String userPwd = multiRequest.getParameter("updatePwd");
			String userName = multiRequest.getParameter("userName");
			String userNick = multiRequest.getParameter("userNickname");
			String phone = multiRequest.getParameter("phone");
			String email = multiRequest.getParameter("email");
			String addressCode = multiRequest.getParameter("addressCode");
			String address = multiRequest.getParameter("address");
			String addressDetail = multiRequest.getParameter("addressDetail");
			String addressRef = multiRequest.getParameter("addressRef");
			String originProfile = multiRequest.getParameter("originProfile");
			String newProfile = multiRequest.getParameter("newProfile");
			
			Member m = new Member();
			m.setMemId(userId);
			m.setMemPwd(userPwd);
			m.setMemName(userName);
			m.setMemNickname(userNick);
			m.setMemPhone(phone);
			m.setMemEmail(email);
			m.setAddressCode(addressCode);
			m.setAddress(address);
			m.setAddressDetail(addressDetail);
			m.setAddressRef(addressRef);
			
			if( multiRequest.getOriginalFileName("newProfile") != null) {
				// 프로필 사진을 추가한 경우
				
				String attachment = "resources/image/key/attachment/" + multiRequest.getFilesystemName("newProfile");
				
				m.setMemImgPath(attachment); // 프로필 사진 경로 + 바뀐 사진 명 Member 객체에 추가하기
				
			}
			
			Member updateMem = new MemberService().updateMember(m);
			
			if( updateMem == null ) { // 회원정보 변경 실패
				session.setAttribute("alertMsg", "회원정보를 수정하는데 실패했습니다. 다시 시도해주시길 바랍니다.");
				response.sendRedirect(request.getContextPath() + "/updateForm.me");
			} else { // 회원정보 변경 성공
				session.setAttribute("loginUser", updateMem);
				session.setAttribute("alertMsg", "성공적으로 회원정보를 수정했습니다.");
				response.sendRedirect(request.getContextPath() + "/myPage.me");
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
