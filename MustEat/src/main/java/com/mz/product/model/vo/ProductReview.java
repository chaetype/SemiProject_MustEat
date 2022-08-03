package com.mz.product.model.vo;

import java.sql.Date;

public class ProductReview {
	
	private int reviewNo;
	private String reviewWriter;
	private String prReviewContent;
	private int prReviewRate;
	private Date prReviewEnrollDate;
	private Date prReviewModifyDate;
	private char prReviewStatue;
	private int productCode;
	private int scrapCount;
	private String productName; // 상품명
	
	
	public ProductReview() {
		
	}


	public ProductReview(int reviewNo, String reviewWriter, String prReviewContent, int prReviewRate,
			Date prReviewEnrollDate, Date prReviewModifyDate, char prReviewStatue, int productCode,
			int scrapCount) {
		super();
		this.reviewNo = reviewNo;
		this.reviewWriter = reviewWriter;
		this.prReviewContent = prReviewContent;
		this.prReviewRate = prReviewRate;
		this.prReviewEnrollDate = prReviewEnrollDate;
		this.prReviewModifyDate = prReviewModifyDate;
		this.prReviewStatue = prReviewStatue;
		this.productCode = productCode;
		this.scrapCount = scrapCount;
	}

	public ProductReview(Date prReviewEnrollDate, int scrapCount, String productName) {
		super();
		this.prReviewEnrollDate = prReviewEnrollDate;
		this.scrapCount = scrapCount;
		this.productName = productName;
	}
	


	


	public ProductReview(int reviewNo, String reviewWriter, String prReviewContent , int prReviewRate) {
		super();
		this.reviewNo = reviewNo;
		this.reviewWriter = reviewWriter;
		this.prReviewContent = prReviewContent;
		this.prReviewRate = prReviewRate;
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


	public Date getPrReviewEnrollDate() {
		return prReviewEnrollDate;
	}


	public void setPrReviewErollDate(Date prReviewEnrollDate) {
		this.prReviewEnrollDate = prReviewEnrollDate;
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
				+ prReviewContent + ", prReviewRate=" + prReviewRate + ", prReviewEnrollDate=" + prReviewEnrollDate
				+ ", prReviewModifyDate=" + prReviewModifyDate + ", prReviewStatue=" + prReviewStatue +
				", productCode=" + productCode + ", scrapCount=" + scrapCount + ", productName="
				+ productName + "]";
	}

}