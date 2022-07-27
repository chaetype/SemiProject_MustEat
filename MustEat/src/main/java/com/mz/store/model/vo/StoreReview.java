package com.mz.store.model.vo;

import java.sql.Date;

public class StoreReview {
	
	private int reNo;
	private String reviewWriter;
	private int storeNo;
	private String reviewContent;
	private String reviewImg;
	private int reviewRate;
	private Date reviewEnrollDate;
	private Date reviewModifyDate;
	private String reviewStatus;
	private String reviewImgPath;
	private String visitDate;
	private String reviewTitle;
	private int count;
	private int scrapCount; // 리뷰 찜횟수
	private int reportCount; // 신고 횟수
	
	public StoreReview() {
		
	}

	public StoreReview(int reNo, String reviewWriter, int storeNo, String reviewContent, String reviewImg,
			int reviewRate, Date reviewEnrollDate, Date reviewModifyDate, String reviewStatus, String reviewImgPath,
			String visitDate, String reviewTitle, int count, int scrapCount, int reportCount) {
		super();
		this.reNo = reNo;
		this.reviewWriter = reviewWriter;
		this.storeNo = storeNo;
		this.reviewContent = reviewContent;
		this.reviewImg = reviewImg;
		this.reviewRate = reviewRate;
		this.reviewEnrollDate = reviewEnrollDate;
		this.reviewModifyDate = reviewModifyDate;
		this.reviewStatus = reviewStatus;
		this.reviewImgPath = reviewImgPath;
		this.visitDate = visitDate;
		this.reviewTitle = reviewTitle;
		this.count = count;
		this.scrapCount = scrapCount;
		this.reportCount = reportCount;
	}

	public int getReNo() {
		return reNo;
	}

	public void setReNo(int reNo) {
		this.reNo = reNo;
	}

	public String getReviewWriter() {
		return reviewWriter;
	}

	public void setReviewWriter(String reviewWriter) {
		this.reviewWriter = reviewWriter;
	}

	public int getStoreNo() {
		return storeNo;
	}

	public void setStoreNo(int storeNo) {
		this.storeNo = storeNo;
	}

	public String getReviewContent() {
		return reviewContent;
	}

	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}

	public String getReviewImg() {
		return reviewImg;
	}

	public void setReviewImg(String reviewImg) {
		this.reviewImg = reviewImg;
	}

	public int getReviewRate() {
		return reviewRate;
	}

	public void setReviewRate(int reviewRate) {
		this.reviewRate = reviewRate;
	}

	public Date getReviewEnrollDate() {
		return reviewEnrollDate;
	}

	public void setReviewEnrollDate(Date reviewEnrollDate) {
		this.reviewEnrollDate = reviewEnrollDate;
	}

	public Date getReviewModifyDate() {
		return reviewModifyDate;
	}

	public void setReviewModifyDate(Date reviewModifyDate) {
		this.reviewModifyDate = reviewModifyDate;
	}

	public String getReviewStatus() {
		return reviewStatus;
	}

	public void setReviewStatus(String reviewStatus) {
		this.reviewStatus = reviewStatus;
	}

	public String getReviewImgPath() {
		return reviewImgPath;
	}

	public void setReviewImgPath(String reviewImgPath) {
		this.reviewImgPath = reviewImgPath;
	}

	public String getVisitDate() {
		return visitDate;
	}

	public void setVisitDate(String visitDate) {
		this.visitDate = visitDate;
	}

	public String getReviewTitle() {
		return reviewTitle;
	}

	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getScrapCount() {
		return scrapCount;
	}

	public void setScrapCount(int scrapCount) {
		this.scrapCount = scrapCount;
	}

	public int getReportCount() {
		return reportCount;
	}

	public void setReportCount(int reportCount) {
		this.reportCount = reportCount;
	}

	@Override
	public String toString() {
		return "StoreReview [reNo=" + reNo + ", reviewWriter=" + reviewWriter + ", storeNo=" + storeNo
				+ ", reviewContent=" + reviewContent + ", reviewImg=" + reviewImg + ", reviewRate=" + reviewRate
				+ ", reviewEnrollDate=" + reviewEnrollDate + ", reviewModifyDate=" + reviewModifyDate
				+ ", reviewStatus=" + reviewStatus + ", reviewImgPath=" + reviewImgPath + ", visitDate=" + visitDate
				+ ", reviewTitle=" + reviewTitle + ", count=" + count + ", scrapCount=" + scrapCount + ", reportCount="
				+ reportCount + "]";
	}

}
