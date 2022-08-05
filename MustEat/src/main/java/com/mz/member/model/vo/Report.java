package com.mz.member.model.vo;

import java.sql.Date;

public class Report {
	
	
	private int reportNo;
	private int memNo;
	private int reportType;
	private int reportReviewNo;
	private String reportContent;
	private Date reportDate;
	private int reportCount;
//	채윤 신고 관리에서 쓰임
	private int reNo;//신고 당한 글 번호
	private String memNickname;//신고한 회원 닉네임
	private String memId;//신고당한 회원 아이디
	private String reportTitle;//신고당한 글 제목
	
	
	
	public Report() {
		
	}



	public Report(int reportNo, int memNo, int reportType, int reportReviewNo, String reportContent, Date reportDate,
			int reportCount, int reNo, String memNickname, String memId, String reportTitle) {
		super();
		this.reportNo = reportNo;
		this.memNo = memNo;
		this.reportType = reportType;
		this.reportReviewNo = reportReviewNo;
		this.reportContent = reportContent;
		this.reportDate = reportDate;
		this.reportCount = reportCount;
		this.reNo = reNo;
		this.memNickname = memNickname;
		this.memId = memId;
		this.reportTitle = reportTitle;
	}
	
//	 채윤 신고게시판에서 쓰임
	public Report(int reportNo,String memNickname, String memId, String reportTitle, String reportContent, Date reportDate) {
		super();
		this.reportNo = reportNo;
		this.memNickname = memNickname;
		this.memId = memId;
		this.reportTitle = reportTitle;
		this.reportContent = reportContent;
		this.reportDate = reportDate;
	}


	
	
	

	public Report(int memNo, int reportType, String reportContent, int reNo, String memNickname, String memId) {
		super();
		this.memNo= memNo;
		this.reportType = reportType;
		this.reportContent = reportContent;
		this.reNo = reNo;
		this.memNickname = memNickname;
		this.memId = memId;
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



	public int getReportCount() {
		return reportCount;
	}



	public void setReportCount(int reportCount) {
		this.reportCount = reportCount;
	}



	public int getReNo() {
		return reNo;
	}



	public void setReNo(int reNo) {
		this.reNo = reNo;
	}



	public String getMemNickname() {
		return memNickname;
	}



	public void setMemNickname(String memNickname) {
		this.memNickname = memNickname;
	}



	public String getMemId() {
		return memId;
	}



	public void setMemId(String memId) {
		this.memId = memId;
	}



	public String getReportTitle() {
		return reportTitle;
	}



	public void setReportTitle(String reportTitle) {
		this.reportTitle = reportTitle;
	}



	@Override
	public String toString() {
		return "Report [reportNo=" + reportNo + ", memNo=" + memNo + ", reportType=" + reportType + ", reportReviewNo="
				+ reportReviewNo + ", reportContent=" + reportContent + ", reportDate=" + reportDate + ", reportCount="
				+ reportCount + ", reNo=" + reNo + ", memNickname=" + memNickname + ", memId=" + memId
				+ ", reportTitle=" + reportTitle + "]";
	}


	
	
	
}
