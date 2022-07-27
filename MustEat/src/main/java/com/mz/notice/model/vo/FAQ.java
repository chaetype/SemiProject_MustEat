package com.mz.notice.model.vo;

import java.sql.Date;

public class FAQ {
	
	private int faqNo;
	private String faqTitle;
	private String faqContent;
	private String faqWriter;
	private Date enrollDate;
	private int faqCount;
	
	public FAQ() {}

	public FAQ(int faqNo, String faqTitle, String faqContent, String faqWriter, Date enrollDate, int faqCount) {
		super();
		this.faqNo = faqNo;
		this.faqTitle = faqTitle;
		this.faqContent = faqContent;
		this.faqWriter = faqWriter;
		this.enrollDate = enrollDate;
		this.faqCount = faqCount;
	}

	public int getFaqNo() {
		return faqNo;
	}

	public void setFaqNo(int faqNo) {
		this.faqNo = faqNo;
	}

	public String getFaqTitle() {
		return faqTitle;
	}

	public void setFaqTitle(String faqTitle) {
		this.faqTitle = faqTitle;
	}

	public String getFaqContent() {
		return faqContent;
	}

	public void setFaqContent(String faqContent) {
		this.faqContent = faqContent;
	}

	public String getFaqWriter() {
		return faqWriter;
	}

	public void setFaqWriter(String faqWriter) {
		this.faqWriter = faqWriter;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public int getFaqCount() {
		return faqCount;
	}

	public void setFaqCount(int faqCount) {
		this.faqCount = faqCount;
	}

	@Override
	public String toString() {
		return "FAQ [faqNo=" + faqNo + ", faqTitle=" + faqTitle + ", faqContent=" + faqContent + ", faqWriter="
				+ faqWriter + ", enrollDate=" + enrollDate + ", faqCount=" + faqCount + "]";
	}
	
	

}
