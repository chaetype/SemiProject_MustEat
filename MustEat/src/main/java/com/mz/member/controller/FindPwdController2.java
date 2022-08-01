package com.mz.member.controller;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mz.member.model.service.MemberService;
import com.mz.member.model.vo.Member;

/**
 * Servlet implementation class FindPwdController2
 */
@WebServlet("/findPwd2.me")
public class FindPwdController2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindPwdController2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 태민
		// 비밀번호 찾는 컨트롤러 
		
		request.setCharacterEncoding("UTF-8");
		
		String userId = request.getParameter("userId");
		String userEmail = request.getParameter("userEmail");
		
		Member m = new MemberService().findPwd(userId, userEmail);
		//request.setAttribute("Member", m);
		
		
		if(m == null) { // 비밀번호 찾기 실패 
			
			RequestDispatcher view = request.getRequestDispatcher("views/ltm/findPwd.jsp");		
			
			request.setAttribute("errorMsg", "아이디 또는 이메일주소를 잘못 입력했습니다. \n입력하신 내용을 다시 확인해주세요.");
			
			view.forward(request, response);
			
			
		}else { // 비밀번호 찾기 성공
			
			RequestDispatcher view = request.getRequestDispatcher("views/ltm/findPwd.jsp");
			
			request.setAttribute("successMsg", "비밀번호가 성공적으로 보내졌습니다.");
			
			view.forward(request, response);
			
			request.setCharacterEncoding("UTF-8");
			
			response.setContentType("text/html;charset=UTF-8");
			response.setCharacterEncoding("UTF-8");
			
			try {
				String mail_from = "musteatzzang@gmail.com";
				String mail_to = userEmail;
				mail_from = new String(mail_from.getBytes("UTF-8"), "UTF-8");
				mail_to = new String(mail_to.getBytes("UTF-8"), "UTF-8");
				
				Properties props = new Properties();
				props.put("mail.transport.protocol", "smtp");
				props.put("mail.smtp.host", "smtp.gmail.com");
				props.put("mail.smtp.port", "465");
				props.put("mail.smtp.starttls.enable", "true");
				props.put("mail.smtp.socketFactory.port", "465");
				props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
				props.put("mail.smtp.socketFactory.fallback", "false");
				props.put("mail.smtp.auth", "true");
				
				Authenticator auth = new SMTPAuthenticator();
				
				Session sess = Session.getDefaultInstance(props, auth);   // 세션 생성
				
				MimeMessage msg = new MimeMessage(sess);  
				
				msg.setFrom(new InternetAddress(mail_from));
				msg.setRecipient(Message.RecipientType.TO, new InternetAddress(mail_to));   
				msg.setSubject("[MustEat] 비밀번호를 찾아드립니다.", "UTF-8");   // 발송할 메세지 제목
				msg.setContent("사용자Pwd : "+ m.getMemPwd() +"입니다", "text/html; charset=UTF-8");     // 발송할 메세지 내용
				msg.setHeader("Content-type", "text/html; charset=UTF-8");
				Transport.send(msg);
				
			} catch (MessagingException e) {
				e.printStackTrace();
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
