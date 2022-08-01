package com.mz.member.controller;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class SMTPAuthenticator extends Authenticator {

	public SMTPAuthenticator() {
		super();
	}
	
	public PasswordAuthentication getPasswordAuthentication() {
		
		//태민
		//메일을 보낼 때 필요한 클래스 (발신자 구글 아이디와 비밀번호가 담겨있음)
		
		String name = "musteatzzang@gmail.com";
		String pass = "konqmkwddvioyvvw";
		
		//System.out.println(name + pass);
		return new PasswordAuthentication(name,pass);
	}
}
