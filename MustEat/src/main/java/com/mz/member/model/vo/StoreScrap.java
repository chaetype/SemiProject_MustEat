package com.mz.member.model.vo;

import java.sql.Date;

public class StoreScrap {

	private String storeNo;
	private String memNo;
	private Date scrapDate;
	
	public StoreScrap() {
		
	}

	public StoreScrap(String storeNo, String memNo, Date scrapDate) {
		super();
		this.storeNo = storeNo;
		this.memNo = memNo;
		this.scrapDate = scrapDate;
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

	@Override
	public String toString() {
		return "StoreScrap [storeNo=" + storeNo + ", memNo=" + memNo + ", scrapDate=" + scrapDate + "]";
	}	
	
}
