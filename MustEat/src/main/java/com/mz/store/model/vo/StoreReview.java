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
	private String reviewMemId;//리뷰작성 회원 아이디
	private String memLevel;//리뷰작성 회원 등급
	private String storeName; // 식당명
	private String reMemNick;//리뷰작성 회원 닉네임
	private String srCategory;
	
	
	
	public StoreReview() {
		
	}
	
	

	public StoreReview(int reNo, String reviewWriter, int storeNo, String reviewContent, String reviewImg,
			int reviewRate, Date reviewEnrollDate, Date reviewModifyDate, String reviewStatus, String reviewImgPath,
			String visitDate, String reviewTitle, int count, int reportCount, String reviewMemId, String memLevel,
			String storeName, String reMemNick) {
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
		this.reportCount = reportCount;
		this.reviewMemId = reviewMemId;
		this.memLevel = memLevel;
		this.storeName = storeName;
		this.reMemNick = reMemNick;
	}



	public StoreReview(int reNo, String reviewWriter, int storeNo, String reviewContent, String reviewImg,
			int reviewRate, Date reviewEnrollDate, Date reviewModifyDate, String reviewStatus, String reviewImgPath,
			String visitDate, String reviewTitle, int count, int scrapCount, int reportCount, String reviewMemId,
			String memLevel) {
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
		this.reviewMemId = reviewMemId;
		this.memLevel = memLevel;
	}
	
	public StoreReview(int reNo, String reviewWriter,String reviewMemId,String reviewTitle, int reviewRate, Date reviewEnrollDate,
			  String memLevel,int count) {
		super();
		this.reNo = reNo;
		this.reviewWriter = reviewWriter;
		this.reviewMemId = reviewMemId;
		this.reviewTitle = reviewTitle;
		this.reviewRate = reviewRate;
		this.reviewEnrollDate = reviewEnrollDate;
		this.memLevel = memLevel;
		this.count = count;
	}

	public StoreReview(Date reviewEnrollDate, String reviewTitle, String storeName) {
		super();
		this.reviewEnrollDate = reviewEnrollDate;
		this.reviewTitle = reviewTitle;
		this.storeName = storeName;
	}

	
	
	
	public StoreReview(int reNo, String reviewTitle, String reMemNick, String reviewImgPath ,String reviewContent, Date reviewEnrollDate,
			int count) {
		super();
		this.reNo = reNo;
		this.reviewContent = reviewContent;
		this.reviewEnrollDate = reviewEnrollDate;
		this.reviewImgPath = reviewImgPath;
		this.reviewTitle = reviewTitle;
		this.count = count;
		this.reMemNick = reMemNick;
	}

	
	
	
	
	
	
	
	
	public StoreReview(int reNo, String reviewWriter, int storeNo, String reviewImg, 
			int reviewRate, Date reviewEnrollDate, Date reviewModifyDate, String reviewStatus, String reviewImgPath,
			String visitDate, String reviewTitle, int count, String reviewContent,String srCategory) {
		super();
		this.reNo = reNo;
		this.reviewWriter = reviewWriter;
		this.storeNo = storeNo;
		this.reviewImg = reviewImg;
		this.reviewRate = reviewRate;
		this.reviewEnrollDate = reviewEnrollDate;
		this.reviewModifyDate = reviewModifyDate;
		this.reviewStatus = reviewStatus;
		this.reviewImgPath = reviewImgPath;
		this.visitDate = visitDate;
		this.reviewTitle = reviewTitle;
		this.count = count;
		this.reviewContent = reviewContent;
		this.srCategory = srCategory;
	}

	public String getSrCategory() {
		return srCategory;
	}

	public void setSrCategory(String srCategory) {
		this.srCategory = srCategory;
	}

	public String getReMemNick() {
		return reMemNick;
	}

	public void setReMemNick(String reMemNick) {
		this.reMemNick = reMemNick;
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

	public String getReviewMemId() {
		return reviewMemId;
	}

	public void setReviewMemId(String reviewMemId) {
		this.reviewMemId = reviewMemId;
	}

	public String getMemLevel() {
		return memLevel;
	}

	public void setMemLevel(String memLevel) {
		this.memLevel = memLevel;
	}
	

	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

	@Override
	public String toString() {
		return "StoreReview [reNo=" + reNo + ", reviewWriter=" + reviewWriter + ", storeNo=" + storeNo
				+ ", reviewContent=" + reviewContent + ", reviewImg=" + reviewImg + ", reviewRate=" + reviewRate
				+ ", reviewEnrollDate=" + reviewEnrollDate + ", reviewModifyDate=" + reviewModifyDate
				+ ", reviewStatus=" + reviewStatus + ", reviewImgPath=" + reviewImgPath + ", visitDate=" + visitDate
				+ ", reviewTitle=" + reviewTitle + ", count=" + count + ", scrapCount=" + scrapCount + ", reportCount="
				+ reportCount + ", reviewMemId=" + reviewMemId + ", memLevel=" + memLevel + ", storeName=" + storeName
				+ "]";
	}


}
