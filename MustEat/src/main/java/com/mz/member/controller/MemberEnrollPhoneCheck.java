package com.mz.member.controller;

import java.io.IOException;
import java.util.HashMap;

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
		
				/*
				 * 서버에서 받은 API_KEY, API_SECRET를 입력해주세요.
				 */
		        
		        String api_key = "NCSAMIA1EF6OR9RF";
		        String api_secret = "WJ6PGWHWGCRZ6YQ8QV1FI7YGP6PICBIA";
		        
		        Message coolsms = new Message(api_key, api_secret);

		        HashMap<String, String> params = new HashMap<String, String>();
		        params.put("to", "01034533619");    // 수신전화번호
		        params.put("from", "01034533619");    // 발신전화번호
		        params.put("type", "SMS");
		        params.put("text", "핫띵크 휴대폰인증 테스트 메시지 : 인증번호는입니다.");
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
