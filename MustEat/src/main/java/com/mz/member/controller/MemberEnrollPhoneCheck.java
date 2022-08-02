package com.mz.member.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import net.nurigo.java_sdk.Coolsms;
import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

/**
 * Servlet implementation class MemberEnrollPhoneCheck
 */
@WebServlet("/phoneCheck.me")
public class MemberEnrollPhoneCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberEnrollPhoneCheck() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 태민
		// 회원가입시 문자인증 하는 컨트롤러
		
		String checkPhone = request.getParameter("checkPhone");
		
		// 4자리 난수 생성
		Random rand  = new Random();
        String numStr = "";
        for(int i=0; i<4; i++) {
            String ran = Integer.toString(rand.nextInt(10));
            numStr+=ran;
        }
        
        int ran = Integer.parseInt(numStr);
        		
		response.getWriter().print(ran);
		
        String api_key = "NCSAMIA1EF6OR9RF";   // coolsms 홈페이지에서 받아야함
        String api_secret = "WJ6PGWHWGCRZ6YQ8QV1FI7YGP6PICBIA";  // coolsms 홈페이지에서 받아야함
        
        Message coolsms = new Message(api_key, api_secret);

        HashMap<String, String> params = new HashMap<String, String>();
        params.put("to", checkPhone);    // 수신전화번호
        params.put("from", "01034533619");    // 발신전화번호
        params.put("type", "SMS");
        params.put("text", "[MustEat] 인증번호 " + ran + "을 입력하세요.");
        params.put("app_version", "test app 1.2"); // application name and version
        
        try {
            JSONObject obj = (JSONObject) coolsms.send(params);
            System.out.println(obj.toString());
        } catch (CoolsmsException e) {
            System.out.println(e.getMessage());
            System.out.println(e.getCode());
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
