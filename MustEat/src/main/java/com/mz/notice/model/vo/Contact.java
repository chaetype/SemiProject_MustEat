package com.mz.notice.model.vo;

import java.sql.Date;

public class Contact {
	
	private int contactNo;
	private String contactType;
	private String contactTitle;
	private String contactContent;
	private String contactWriter;
	private Date enrollDate;
	private String contactStatus;
	private String contactEmail;
	private String contactPhone;
	private String contactAttach;
	private String answer;
	private Date answerDate;
	
	public Contact() {}

	public Contact(int contactNo, String contactType, String contactTitle, String contactContent, String contactWriter,
			Date enrollDate, String contactStatus, String contactEmail, String contactPhone, String contactAttach,
			String answer, Date answerDate) {
		super();
		this.contactNo = contactNo;
		this.contactType = contactType;
		this.contactTitle = contactTitle;
		this.contactContent = contactContent;
		this.contactWriter = contactWriter;
		this.enrollDate = enrollDate;
		this.contactStatus = contactStatus;
		this.contactEmail = contactEmail;
		this.contactPhone = contactPhone;
		this.contactAttach = contactAttach;
		this.answer = answer;
		this.answerDate = answerDate;
	}

	public Contact(int contactNo, String contactType, String contactTitle, Date enrollDate, String contactStatus,
			String answer, Date answerDate) {
		super();
		this.contactNo = contactNo;
		this.contactType = contactType;
		this.contactTitle = contactTitle;
		this.enrollDate = enrollDate;
		this.contactStatus = contactStatus;
		this.answer = answer;
		this.answerDate = answerDate;
	}

	public Contact(int contactNo, String contactType, String contactTitle, String contactWriter, Date enrollDate,
			String contactStatus) {
		super();
		this.contactNo = contactNo;
		this.contactType = contactType;
		this.contactTitle = contactTitle;
		this.contactWriter = contactWriter;
		this.enrollDate = enrollDate;
		this.contactStatus = contactStatus;
	}

	public Contact(int contactNo, String contactType, String contactTitle, String contactContent, String contactWriter,
			Date enrollDate, String contactStatus, String contactAttach, String answer, Date answerDate) {
		super();
		this.contactNo = contactNo;
		this.contactType = contactType;
		this.contactTitle = contactTitle;
		this.contactContent = contactContent;
		this.contactWriter = contactWriter;
		this.enrollDate = enrollDate;
		this.contactStatus = contactStatus;
		this.contactAttach = contactAttach;
		this.answer = answer;
		this.answerDate = answerDate;
	}

	public int getContactNo() {
		return contactNo;
	}

	public void setContactNo(int contactNo) {
		this.contactNo = contactNo;
	}

	public String getContactType() {
		return contactType;
	}

	public void setContactType(String contactType) {
		this.contactType = contactType;
	}

	public String getContactTitle() {
		return contactTitle;
	}

	public void setContactTitle(String contactTitle) {
		this.contactTitle = contactTitle;
	}

	public String getContactContent() {
		return contactContent;
	}

	public void setContactContent(String contactContent) {
		this.contactContent = contactContent;
	}

	public String getContactWriter() {
		return contactWriter;
	}

	public void setContactWriter(String contactWriter) {
		this.contactWriter = contactWriter;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getContactStatus() {
		return contactStatus;
	}

	public void setContactStatus(String contactStatus) {
		this.contactStatus = contactStatus;
	}

	public String getContactEmail() {
		return contactEmail;
	}

	public void setContactEmail(String contactEmail) {
		this.contactEmail = contactEmail;
	}

	public String getContactPhone() {
		return contactPhone;
	}

	public void setContactPhone(String contactPhone) {
		this.contactPhone = contactPhone;
	}

	public String getContactAttach() {
		return contactAttach;
	}

	public void setContactAttach(String contactAttach) {
		this.contactAttach = contactAttach;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public Date getAnswerDate() {
		return answerDate;
	}

	public void setAnswerDate(Date answerDate) {
		this.answerDate = answerDate;
	}

	@Override
	public String toString() {
		return "Contact [contactNo=" + contactNo + ", contactType=" + contactType + ", contactTitle=" + contactTitle
				+ ", contactContent=" + contactContent + ", contactWriter=" + contactWriter + ", enrollDate="
				+ enrollDate + ", contactStatus=" + contactStatus + ", contactEmail=" + contactEmail + ", contactPhone="
				+ contactPhone + ", contactAttach=" + contactAttach + ", answer=" + answer + ", answerDate="
				+ answerDate + "]";
	}
	
	

}
