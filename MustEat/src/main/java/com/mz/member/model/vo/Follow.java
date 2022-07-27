package com.mz.member.model.vo;

import java.sql.Date;

public class Follow {

	
	
	private int followNo;
	private int fMNo;
	private int fing_MNo;
	private Date enrollDate;
	
	public Follow() {
		
	}

	public Follow(int followNo, int fMNo, int fing_MNo, Date enrollDate) {
		super();
		this.followNo = followNo;
		this.fMNo = fMNo;
		this.fing_MNo = fing_MNo;
		this.enrollDate = enrollDate;
	}

	public int getFollowNo() {
		return followNo;
	}

	public void setFollowNo(int followNo) {
		this.followNo = followNo;
	}

	public int getfMNo() {
		return fMNo;
	}

	public void setfMNo(int fMNo) {
		this.fMNo = fMNo;
	}

	public int getFing_MNo() {
		return fing_MNo;
	}

	public void setFing_MNo(int fing_MNo) {
		this.fing_MNo = fing_MNo;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	@Override
	public String toString() {
		return "Follow [followNo=" + followNo + ", fMNo=" + fMNo + ", fing_MNo=" + fing_MNo + ", enrollDate="
				+ enrollDate + "]";
	}
	
	
}
