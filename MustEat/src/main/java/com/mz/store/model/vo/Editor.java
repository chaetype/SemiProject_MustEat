package com.mz.store.model.vo;

import java.sql.Date;

public class Editor {
	
	
	private int editorNo;
	private String editorTitle;
	private String editorContent;
	private String editorWriter;
	private Date enrollDate;
	private String editorAttach;
	
	public Editor() {
		
	}

	public Editor(int editorNo, String editorTitle, String editorContent, String editorWriter, Date enrollDate,
			String editorAttach) {
		super();
		this.editorNo = editorNo;
		this.editorTitle = editorTitle;
		this.editorContent = editorContent;
		this.editorWriter = editorWriter;
		this.enrollDate = enrollDate;
		this.editorAttach = editorAttach;
	}
	
	public Editor(int editorNo, String editorAttach,Date enrollDate,String editorContent
			) {
		super();
		this.editorNo = editorNo;
		this.editorAttach = editorAttach;
		this.enrollDate = enrollDate;
		this.editorContent = editorContent;
		
	}

	public int getEditorNo() {
		return editorNo;
	}

	public void setEditorNo(int editorNo) {
		this.editorNo = editorNo;
	}

	public String getEditorTitle() {
		return editorTitle;
	}

	public void setEditorTitle(String editorTitle) {
		this.editorTitle = editorTitle;
	}

	public String getEditorContent() {
		return editorContent;
	}

	public void setEditorContent(String editorContent) {
		this.editorContent = editorContent;
	}

	public String getEditorWriter() {
		return editorWriter;
	}

	public void setEditorWriter(String editorWriter) {
		this.editorWriter = editorWriter;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getEditorAttach() {
		return editorAttach;
	}

	public void setEditorAttach(String editorAttach) {
		this.editorAttach = editorAttach;
	}

	@Override
	public String toString() {
		return "Editor [editorNo=" + editorNo + ", editorTitle=" + editorTitle + ", editorContent=" + editorContent
				+ ", editorWriter=" + editorWriter + ", enrollDate=" + enrollDate + ", editorAttach=" + editorAttach
				+ "]";
	}

	
	
	
}
