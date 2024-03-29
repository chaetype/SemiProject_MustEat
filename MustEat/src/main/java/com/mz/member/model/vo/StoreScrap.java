package com.mz.member.model.vo;

import java.sql.Date;

public class StoreScrap {

	private String storeNo;
	private String memNo;
	private Date scrapDate;
	private String storeAddress; // 가게주소
	private int reviewRate; // 평점
	private int scarpNo;
	private String storeImg;
	private String storeName;
	private int memno;
	
	
	
	public StoreScrap() {
		
	}

	public StoreScrap(String storeNo, String memNo, Date scrapDate, String storeAddress, int reviewRate) {
		super();
		this.storeNo = storeNo;
		this.memNo = memNo;
		this.scrapDate = scrapDate;
		this.storeAddress = storeAddress;
		this.reviewRate = reviewRate;
	}

	public StoreScrap(String storeNo, String storeAddress, int reviewRate) {
		super();
		this.storeNo = storeNo;
		this.storeAddress = storeAddress;
		this.reviewRate = reviewRate;
	}
	
	
	
	
	
	
	
	
	public StoreScrap(int memno, String storeNo,  String storeImg) {
		super();
		this.storeNo = storeNo;
		this.memno = memno;
		this.storeImg = storeImg;
	}

	public StoreScrap(int scarpNo,String storeImg,String storeName,String storeAddress, int reviewRate) {
		super();
		this.storeAddress = storeAddress;
		this.reviewRate = reviewRate;
		this.scarpNo = scarpNo;
		this.storeImg = storeImg;
		this.storeName = storeName;
	}

	
	
	
	
	
	
	
	
	
	
	public int getMemno() {
		return memno;
	}

	public void setMemno(int memno) {
		this.memno = memno;
	}

	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

	public String getStoreImg() {
		return storeImg;
	}

	public void setStoreImg(String storeImg) {
		this.storeImg = storeImg;
	}

	public int getScarpNo() {
		return scarpNo;
	}

	public void setScarpNo(int scarpNo) {
		this.scarpNo = scarpNo;
	}

	public String getStoreNo() {
		return storeNo;
	}

	public void setStoreNo(String storeNo) {
		this.storeNo = storeNo;
	}

	public String getMemNo() {
		return memNo;
	}

	public void setMemNo(String memNo) {
		this.memNo = memNo;
	}

	public Date getScrapDate() {
		return scrapDate;
	}

	public void setScrapDate(Date scrapDate) {
		this.scrapDate = scrapDate;
	}

	public String getStoreAddress() {
		return storeAddress;
	}

	public void setStoreAddress(String storeAddress) {
		this.storeAddress = storeAddress;
	}

	public int getReviewRate() {
		return reviewRate;
	}

	public void setReviewRate(int reviewRate) {
		this.reviewRate = reviewRate;
	}

	@Override
	public String toString() {
		return "StoreScrap [storeNo=" + storeNo + ", memNo=" + memNo + ", scrapDate=" + scrapDate + ", storeAddress="
				+ storeAddress + ", reviewRate=" + reviewRate + "]";
	}

}
