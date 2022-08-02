package com.mz.member.model.vo;

import java.sql.Date;

public class Follow {

	
	
	private int followNo;
	private int fMNo;//팔로우하는 회원번호
	private int fingMNo;//팔로우 당하는 회원번호
	private Date enrollDate;
	private String ingMemName;//팔로우당하는 회원이름
	private String profileImg;//팔로우당하는 회원프로필이미지
	private int followCount;//팔로우당하는 회원을 팔로우하는 회원수
	private int reviewCount;//팔로우당하는 회원이 작성한 식당리뷰갯수
	private int proreviewCount;//팔로우당하는 회원이 작성한 밀키트 리뷰갯수
	
	
	public Follow() {
		
	}


	public Follow(int followNo, int fMNo, int fingMNo, Date enrollDate, String ingMemName, String profileImg,
			int followCount, int reviewCount, int proreviewCount) {
		super();
		this.followNo = followNo;
		this.fMNo = fMNo;
		this.fingMNo = fingMNo;
		this.enrollDate = enrollDate;
		this.ingMemName = ingMemName;
		this.profileImg = profileImg;
		this.followCount = followCount;
		this.reviewCount = reviewCount;
		this.proreviewCount = proreviewCount;
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
	
	public Follow(String ingMemName, String profileImg, int reviewCount, int proreviewCount, int followCount ) {
		
		this.ingMemName = ingMemName;
		this.profileImg = profileImg;
		this.followCount = followCount;
		this.reviewCount = reviewCount;
		this.proreviewCount = proreviewCount;
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


	public int getProreviewCount() {
		return proreviewCount;
	}


	public void setProreviewCount(int proreviewCount) {
		this.proreviewCount = proreviewCount;
	}


	@Override
	public String toString() {
		return "Follow [followNo=" + followNo + ", fMNo=" + fMNo + ", fingMNo=" + fingMNo + ", enrollDate=" + enrollDate
				+ ", ingMemName=" + ingMemName + ", profileImg=" + profileImg + ", followCount=" + followCount
				+ ", reviewCount=" + reviewCount + ", proreviewCount=" + proreviewCount + "]";
	}




	
}
