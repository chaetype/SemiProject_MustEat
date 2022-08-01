package com.mz.product.model.vo;

public class AddressPayment {
	
	private String memName;
	private String memPhone;
	private String memEmail;
	private String address;
	private String request;
	
	public AddressPayment() {}

	public AddressPayment(String memName, String memPhone, String memEmail, String address, String request) {
		super();
		this.memName = memName;
		this.memPhone = memPhone;
		this.memEmail = memEmail;
		this.address = address;
		this.request = request;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public String getMemPhone() {
		return memPhone;
	}

	public void setMemPhone(String memPhone) {
		this.memPhone = memPhone;
	}

	public String getMemEmail() {
		return memEmail;
	}

	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getRequest() {
		return request;
	}

	public void setRequest(String request) {
		this.request = request;
	}

	@Override
	public String toString() {
		return "AddressPayment [memName=" + memName + ", memPhone=" + memPhone + ", memEmail=" + memEmail + ", address="
				+ address + ", request=" + request + "]";
	}

	

	
	
}
