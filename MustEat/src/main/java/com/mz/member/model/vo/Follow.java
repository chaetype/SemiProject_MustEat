package com.mz.member.model.vo;

import java.sql.Date;

public class Follow {

	
	
	private int followNo;
	private int fMNo;
	private int fingMNo;
	private Date enrollDate;
	private String ingMemName;
	private String profileImg;
	private int followCount;
	private int reviewCount;
	
	
	
	public Follow() {
		
	}



	public Follow(int followNo, int fMNo, int fingMNo, Date enrollDate, String ingMemName, String profileImg,
			int followCount, int reviewCount) {
		super();
		this.followNo = followNo;
		this.fMNo = fMNo;
		this.fingMNo = fingMNo;
		this.enrollDate = enrollDate;
		this.ingMemName = ingMemName;
		this.profileImg = profileImg;
		this.followCount = followCount;
		this.reviewCount = reviewCount;
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



	public int getFingMNo() {
		return fingMNo;
	}



	public void setFingMNo(int fingMNo) {
		this.fingMNo = fingMNo;
	}



	public Date getEnrollDate() {
		return enrollDate;
	}



	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}



	public String getIngMemName() {
		return ingMemName;
	}



	public void setIngMemName(String ingMemName) {
		this.ingMemName = ingMemName;
	}



	public String getProfileImg() {
		return profileImg;
	}



	public void setProfileImg(String profileImg) {
		this.profileImg = profileImg;
	}



	public int getFollowCount() {
		return followCount;
	}



	public void setFollowCount(int followCount) {
		this.followCount = followCount;
	}



	public int getReviewCount() {
		return reviewCount;
	}



	public void setReviewCount(int reviewCount) {
		this.reviewCount = reviewCount;
	}



	@Override
	public String toString() {
		return "Follow [followNo=" + followNo + ", fMNo=" + fMNo + ", fingMNo=" + fingMNo + ", enrollDate=" + enrollDate
				+ ", ingMemName=" + ingMemName + ", profileImg=" + profileImg + ", followCount=" + followCount
				+ ", reviewCount=" + reviewCount + "]";
	}

	
	
}
