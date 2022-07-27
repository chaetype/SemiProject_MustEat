package com.mz.member.model.vo;

import java.sql.Date;

public class ReviewScrap {
	
	private int memNo;
	private int reNo;
	private Date scrapDate;
	
	public ReviewScrap() {
		
	}

	public ReviewScrap(int memNo, int reNo, Date scrapDate) {
		super();
		this.memNo = memNo;
		this.reNo = reNo;
		this.scrapDate = scrapDate;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public int getReNo() {
		return reNo;
	}

	public void setReNo(int reNo) {
		this.reNo = reNo;
	}

	public Date getScrapDate() {
		return scrapDate;
	}

	public void setScrapDate(Date scrapDate) {
		this.scrapDate = scrapDate;
	}

	@Override
	public String toString() {
		return "ReviewScrap [memNo=" + memNo + ", reNo=" + reNo + ", scrapDate=" + scrapDate + "]";
	}

}
