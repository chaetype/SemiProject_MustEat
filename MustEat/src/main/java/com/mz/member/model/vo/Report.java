package com.mz.member.model.vo;

import java.sql.Date;

public class Report {
	
	
	private int reportNo;
	private int memNo;
	private int reportType;
	private int reportReviewNo;
	private String reportContent;
	private Date reportDate;
	
	public Report() {
		
	}

	public Report(int reportNo, int memNo, int reportType, int reportReviewNo, String reportContent, Date reportDate) {
		super();
		this.reportNo = reportNo;
		this.memNo = memNo;
		this.reportType = reportType;
		this.reportReviewNo = reportReviewNo;
		this.reportContent = reportContent;
		this.reportDate = reportDate;
	}

	public int getReportNo() {
		return reportNo;
	}

	public void setReportNo(int reportNo) {
		this.reportNo = reportNo;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public int getReportType() {
		return reportType;
	}

	public void setReportType(int reportType) {
		this.reportType = reportType;
	}

	public int getReportReviewNo() {
		return reportReviewNo;
	}

	public void setReportReviewNo(int reportReviewNo) {
		this.reportReviewNo = reportReviewNo;
	}

	public String getReportContent() {
		return reportContent;
	}

	public void setReportContent(String reportContent) {
		this.reportContent = reportContent;
	}

	public Date getReportDate() {
		return reportDate;
	}

	public void setReportDate(Date reportDate) {
		this.reportDate = reportDate;
	}

	@Override
	public String toString() {
		return "Report [reportNo=" + reportNo + ", memNo=" + memNo + ", reportType=" + reportType + ", reportReviewNo="
				+ reportReviewNo + ", reportContent=" + reportContent + ", reportDate=" + reportDate + "]";
	}
	
	
}
