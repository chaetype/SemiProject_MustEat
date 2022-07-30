package com.mz.member.model.vo;

public class MyPage {
	
	// 은영(마이페이지에서 보여지는 리뷰, 적립금, 팔로우, 찜 목록 담는 class)
	private String memId;
	private int storeReview;
	private int productReview;
	private int mpsPoint;
	private int storeScrap;
	private int follow;
	
	public MyPage() {
		
	}
	
	public MyPage(String memId, int storeReview, int productReview, int mpsPoint, int storeScrap, int follow) {
		super();
		this.memId = memId;
		this.storeReview = storeReview;
		this.productReview = productReview;
		this.mpsPoint = mpsPoint;
		this.storeScrap = storeScrap;
		this.follow = follow;
	}

	public MyPage(int storeReview, int productReview, int mpsPoint, int storeScrap, int follow) {
		super();
		this.storeReview = storeReview;
		this.productReview = productReview;
		this.mpsPoint = mpsPoint;
		this.storeScrap = storeScrap;
		this.follow = follow;
	}
	
	

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public int getStoreReview() {
		return storeReview;
	}

	public void setStoreReview(int storeReview) {
		this.storeReview = storeReview;
	}

	public int getProductReview() {
		return productReview;
	}

	public void setProductReview(int productReview) {
		this.productReview = productReview;
	}

	public int getMpsPoint() {
		return mpsPoint;
	}

	public void setMpsPoint(int mpsPoint) {
		this.mpsPoint = mpsPoint;
	}

	public int getStoreScrap() {
		return storeScrap;
	}

	public void setStoreScrap(int storeScrap) {
		this.storeScrap = storeScrap;
	}

	public int getFollow() {
		return follow;
	}

	public void setFollow(int follow) {
		this.follow = follow;
	}

	@Override
	public String toString() {
		return "MyPage [memId=" + memId + ", storeReview=" + storeReview + ", productReview=" + productReview
				+ ", mpsPoint=" + mpsPoint + ", storeScrap=" + storeScrap + ", follow=" + follow + "]";
	}
	
}
