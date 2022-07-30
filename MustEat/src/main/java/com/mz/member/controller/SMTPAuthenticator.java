package com.mz.member.controller;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class SMTPAuthenticator extends Authenticator {

	public SMTPAuthenticator() {
		super();
	}
	
	public PasswordAuthentication getPasswordAuthentication() {
		String name = "musteatzzang@gmail.com";
		String pass = "konqmkwddvioyvvw";
		
		//System.out.println(name + pass);
		return new PasswordAuthentication(name,pass);
	}
}
