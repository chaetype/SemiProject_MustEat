package com.mz.product.model.vo;

import java.sql.Date;

public class ProductReview {
	
	private int reviewNo;
	private String reviewWriter;
	private String prReviewContent;
	private int prReviewRate;
	private Date prReviewErollDate;
	private Date prReviewModifyDate;
	private char prReviewStatue;
	private int orderNo;
	private int productCode;
	private int scrapCount;
	private String productName; // 상품명
	
	
	public ProductReview() {
		
	}


	public ProductReview(int reviewNo, String reviewWriter, String prReviewContent, int prReviewRate,
			Date prReviewErollDate, Date prReviewModifyDate, char prReviewStatue, int orderNo, int productCode,
			int scrapCount) {
		super();
		this.reviewNo = reviewNo;
		this.reviewWriter = reviewWriter;
		this.prReviewContent = prReviewContent;
		this.prReviewRate = prReviewRate;
		this.prReviewErollDate = prReviewErollDate;
		this.prReviewModifyDate = prReviewModifyDate;
		this.prReviewStatue = prReviewStatue;
		this.orderNo = orderNo;
		this.productCode = productCode;
		this.scrapCount = scrapCount;
	}

	public ProductReview(Date prReviewErollDate, int scrapCount, String productName) {
		super();
		this.prReviewErollDate = prReviewErollDate;
		this.scrapCount = scrapCount;
		this.productName = productName;
	}


	public int getReviewNo() {
		return reviewNo;
	}


	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}


	public String getReviewWriter() {
		return reviewWriter;
	}


	public void setReviewWriter(String reviewWriter) {
		this.reviewWriter = reviewWriter;
	}


	public String getPrReviewContent() {
		return prReviewContent;
	}


	public void setPrReviewContent(String prReviewContent) {
		this.prReviewContent = prReviewContent;
	}


	public int getPrReviewRate() {
		return prReviewRate;
	}


	public void setPrReviewRate(int prReviewRate) {
		this.prReviewRate = prReviewRate;
	}


	public Date getPrReviewErollDate() {
		return prReviewErollDate;
	}


	public void setPrReviewErollDate(Date prReviewErollDate) {
		this.prReviewErollDate = prReviewErollDate;
	}


	public Date getPrReviewModifyDate() {
		return prReviewModifyDate;
	}


	public void setPrReviewModifyDate(Date prReviewModifyDate) {
		this.prReviewModifyDate = prReviewModifyDate;
	}


	public char getPrReviewStatue() {
		return prReviewStatue;
	}


	public void setPrReviewStatue(char prReviewStatue) {
		this.prReviewStatue = prReviewStatue;
	}


	public int getOrderNo() {
		return orderNo;
	}


	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}


	public int getProductCode() {
		return productCode;
	}


	public void setProductCode(int productCode) {
		this.productCode = productCode;
	}


	public int getScrapCount() {
		return scrapCount;
	}


	public void setScrapCount(int scrapCount) {
		this.scrapCount = scrapCount;
	}

	public String getProductName() {
		return productName;
	}


	public void setProductName(String productName) {
		this.productName = productName;
	}


	@Override
	public String toString() {
		return "ProductReview [reviewNo=" + reviewNo + ", reviewWriter=" + reviewWriter + ", prReviewContent="
				+ prReviewContent + ", prReviewRate=" + prReviewRate + ", prReviewErollDate=" + prReviewErollDate
				+ ", prReviewModifyDate=" + prReviewModifyDate + ", prReviewStatue=" + prReviewStatue + ", orderNo="
				+ orderNo + ", productCode=" + productCode + ", scrapCount=" + scrapCount + ", productName="
				+ productName + "]";
	}

}