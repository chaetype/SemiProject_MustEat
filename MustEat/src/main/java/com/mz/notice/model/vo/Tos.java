package com.mz.notice.model.vo;

import java.sql.Date;

public class Tos {
	
	private int tosNo;
	private int tosCategory;
	private Date uploadDate;
	private Date enrollDate;
	private Date modifyDate;
	private String tosNote;
	private String tosTitle;
	private String tosContent;
	private String tosStatus;
	
	public Tos() {
		
	}

	public Tos(int tosNo, int tosCategory, Date uploadDate, Date enrollDate, Date modifyDate, String tosNote,
			String tosTitle, String tosContent, String tosStatus) {
		super();
		this.tosNo = tosNo;
		this.tosCategory = tosCategory;
		this.uploadDate = uploadDate;
		this.enrollDate = enrollDate;
		this.modifyDate = modifyDate;
		this.tosNote = tosNote;
		this.tosTitle = tosTitle;
		this.tosContent = tosContent;
		this.tosStatus = tosStatus;
	}
		
	public Tos(int tosNo, String tosTitle, String tosNote, String tosContent) {
		super();
		this.tosNo = tosNo;
		this.tosTitle = tosTitle;
		this.tosNote = tosNote;
		this.tosContent = tosContent;
	}
	
	public Tos(String tosTitle, String tosNote, String tosContent, int tosNo) {
		super();
		this.tosTitle = tosTitle;
		this.tosNote = tosNote;
		this.tosContent = tosContent;
		this.tosNo = tosNo;
	}

	public Tos(int tosNo, String tosTitle, Date enrollDate, Date modifyDate, String tosNote) {
		super();
		this.tosNo = tosNo;
		this.tosTitle = tosTitle;
		this.enrollDate = enrollDate;
		this.modifyDate = modifyDate;
		this.tosNote = tosNote;
	}
	
	public Tos(int tosNo, String tosTitle, String tosContent) {
		super();
		this.tosNo = tosNo;
		this.tosTitle = tosTitle;
		this.tosContent = tosContent;
	}	

	public Tos(String tosTitle, String tosContent) {
		super();
		this.tosTitle = tosTitle;
		this.tosContent = tosContent;
	}

	public int getTosNo() {
		return tosNo;
	}

	public void setTosNo(int tosNo) {
		this.tosNo = tosNo;
	}

	public int getTosCategory() {
		return tosCategory;
	}

	public void setTosCategory(int tosCategory) {
		this.tosCategory = tosCategory;
	}

	public Date getUploadDate() {
		return uploadDate;
	}

	public void setUploadDate(Date uploadDate) {
		this.uploadDate = uploadDate;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public Date getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}

	public String getTosNote() {
		return tosNote;
	}

	public void setTosNote(String tosNote) {
		this.tosNote = tosNote;
	}

	public String getTosTitle() {
		return tosTitle;
	}

	public void setTosTitle(String tosTitle) {
		this.tosTitle = tosTitle;
	}

	public String getTosContent() {
		return tosContent;
	}

	public void setTosContent(String tosContent) {
		this.tosContent = tosContent;
	}		

	public String getTosStatus() {
		return tosStatus;
	}

	public void setTosStatus(String tosStatus) {
		this.tosStatus = tosStatus;
	}

	@Override
	public String toString() {
		return "Tos [tosNo=" + tosNo + ", tosCategory=" + tosCategory + ", uploadDate=" + uploadDate + ", enrollDate="
				+ enrollDate + ", modifyDate=" + modifyDate + ", tosNote=" + tosNote + ", tosTitle=" + tosTitle
				+ ", tosContent=" + tosContent + ", tosStatus=" + tosStatus + "]";
	}

	
	
}
