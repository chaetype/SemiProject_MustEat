package com.mz.store.model.vo;

import java.sql.Date;

public class Store {
	
	private int storeNo;
	private String storeName;
	private String storeTag;
	private String storeAddress;
	private String storePhone;
	private String storeIntro;//식당소개글
	private String storeImgPath;//식당이미지
	private String storePopularity;//식당인기메뉴
	private String storePopInfo;//식당인기메뉴소개글
	private String storePopPath;//식당인기메뉴사진
	private String storeOperating;
	private String storeBreaktime;
	private String naverAddress;
	private String dayOff;
	private String storeUrl;
	private Date storeEnrollDate;
	private String storeReview;//식당리뷰내용
	private String reviewImg;//식당리뷰이미지
	private String reviewWriter;//식당리뷰작성자
	private int count;//식당 조회수
	
	
	public Store() {
		
	}


	public Store(int storeNo, String storeName, String storeTag,
			String storeAddress, String storePhone, String storeIntro, String storeImgPath, String storePopularity,
			String storePopInfo, String storePopPath, String storeOperating, String storeBreaktime, String naverAddress,
			String dayOff, String storeUrl, Date storeEnrollDate, String storeReview, String reviewImg,
			String reviewWriter,int count) {
		super();
		this.storeNo = storeNo;
		this.storeName = storeName;
		this.storeTag = storeTag;
		this.storeAddress = storeAddress;
		this.storePhone = storePhone;
		this.storeIntro = storeIntro;
		this.storeImgPath = storeImgPath;
		this.storePopularity = storePopularity;
		this.storePopInfo = storePopInfo;
		this.storePopPath = storePopPath;
		this.storeOperating = storeOperating;
		this.storeBreaktime = storeBreaktime;
		this.naverAddress = naverAddress;
		this.dayOff = dayOff;
		this.storeUrl = storeUrl;
		this.storeEnrollDate = storeEnrollDate;
		this.storeReview = storeReview;
		this.reviewImg = reviewImg;
		this.reviewWriter = reviewWriter;
		this.count= count;
	}
	
	
	public Store(int storeNo, String storeName, String storeTag,
			String storeAddress, String storePhone, String storeIntro, String storeImgPath, String storePopularity,
			String storePopInfo, String storePopPath, String storeOperating, String storeBreaktime, String naverAddress,
			String dayOff, String storeUrl, Date storeEnrollDate,int count) {
		super();
		this.storeNo = storeNo;
		this.storeName = storeName;
		this.storeTag = storeTag;
		this.storeAddress = storeAddress;
		this.storePhone = storePhone;
		this.storeIntro = storeIntro;
		this.storeImgPath = storeImgPath;
		this.storePopularity = storePopularity;
		this.storePopInfo = storePopInfo;
		this.storePopPath = storePopPath;
		this.storeOperating = storeOperating;
		this.storeBreaktime = storeBreaktime;
		this.naverAddress = naverAddress;
		this.dayOff = dayOff;
		this.storeUrl = storeUrl;
		this.storeEnrollDate = storeEnrollDate;
		this.count= count;
	}
	
	
	
	
	public Store(int storeNo, String storeName, String storeAddress, String storeIntro,
				 String storeImgPath, String storePopularity, String storePopPath,String storePopInfo,
			 String reviewWriter, String storeReview, String reviewImg) {
		super();
		this.storeNo = storeNo;
		this.storeName = storeName;
		this.storeAddress = storeAddress;
		this.storeIntro = storeIntro;
		this.storeImgPath = storeImgPath;
		this.storePopularity = storePopularity;
		this.storePopInfo = storePopInfo;
		this.storePopPath = storePopPath;
		this.storeReview = storeReview;
		this.reviewImg = reviewImg;
		this.reviewWriter = reviewWriter;
	}

	

	public Store(int storeNo, String storeName, String storeAddress, String storePhone) {
		super();
		this.storeNo = storeNo;
		this.storeName = storeName;
		this.storeAddress = storeAddress;
		this.storePhone = storePhone;
	}

	public Store(String storeName, String storePhone, String localSi, String localGu, String localRo, String storeAddress, String storeImgPath, String storeIntro, String storePopularity, String storePopPath, String storePopInfo, String storeOperating, String storeBreaktime, String naverAddress, String storeUrl, String dayOff, String storeTag) {
		super();
		this.storeName = storeName;
		this.storePhone = storePhone;
		this.storeAddress = storeAddress;
		this.storeImgPath = storeImgPath;
		this.storeIntro = storeIntro;
		this.storePopularity = storePopularity; 
		this.storePopPath = storePopPath;
		this.storePopInfo = storePopInfo; 
		this.storeOperating = storeOperating;
		this.storeBreaktime = storeBreaktime; 
		this.naverAddress = naverAddress;
		this.storeUrl = storeUrl;
		this.dayOff = dayOff;
		this.storeTag = storeTag;
	}
	
	public Store(int storeNo, String storeName, String storeTag,
			String storeAddress, String storePhone, String storeIntro, String storeImgPath, String storePopularity,
			String storePopInfo, String storePopPath, String storeOperating, String storeBreaktime, String naverAddress,
			String dayOff, String storeUrl) {
		super();
		this.storeNo = storeNo;
		this.storeName = storeName;
		this.storeTag = storeTag;
		this.storeAddress = storeAddress;
		this.storePhone = storePhone;
		this.storeIntro = storeIntro;
		this.storeImgPath = storeImgPath;
		this.storePopularity = storePopularity;
		this.storePopInfo = storePopInfo;
		this.storePopPath = storePopPath;
		this.storeOperating = storeOperating;
		this.storeBreaktime = storeBreaktime;
		this.naverAddress = naverAddress;
		this.dayOff = dayOff;
		this.storeUrl = storeUrl;
	}
	
	public Store(String storeName, String storeTag,
			String storeAddress, String storePhone, String storeIntro, String storeImgPath, String storePopularity,
			String storePopInfo, String storePopPath, String storeOperating, String storeBreaktime, String naverAddress,
			String dayOff, String storeUrl) {
		super();
		this.storeName = storeName;
		this.storeTag = storeTag;
		this.storeAddress = storeAddress;
		this.storePhone = storePhone;
		this.storeIntro = storeIntro;
		this.storeImgPath = storeImgPath;
		this.storePopularity = storePopularity;
		this.storePopInfo = storePopInfo;
		this.storePopPath = storePopPath;
		this.storeOperating = storeOperating;
		this.storeBreaktime = storeBreaktime;
		this.naverAddress = naverAddress;
		this.dayOff = dayOff;
		this.storeUrl = storeUrl;
	}



	public int getStoreNo() {
		return storeNo;
	}





	public void setStoreNo(int storeNo) {
		this.storeNo = storeNo;
	}

	public String getStoreName() {
		return storeName;
	}



	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}





	public String getStoreTag() {
		return storeTag;
	}





	public void setStoreTag(String storeTag) {
		this.storeTag = storeTag;
	}





	public String getStoreAddress() {
		return storeAddress;
	}





	public void setStoreAddress(String storeAddress) {
		this.storeAddress = storeAddress;
	}





	public String getStorePhone() {
		return storePhone;
	}





	public void setStorePhone(String storePhone) {
		this.storePhone = storePhone;
	}





	public String getStoreIntro() {
		return storeIntro;
	}





	public void setStoreIntro(String storeIntro) {
		this.storeIntro = storeIntro;
	}





	public String getStoreImgPath() {
		return storeImgPath;
	}





	public void setStoreImgPath(String storeImgPath) {
		this.storeImgPath = storeImgPath;
	}





	public String getStorePopularity() {
		return storePopularity;
	}





	public void setStorePopularity(String storePopularity) {
		this.storePopularity = storePopularity;
	}





	public String getStorePopInfo() {
		return storePopInfo;
	}





	public void setStorePopInfo(String storePopInfo) {
		this.storePopInfo = storePopInfo;
	}





	public String getStorePopPath() {
		return storePopPath;
	}





	public void setStorePopPath(String storePopPath) {
		this.storePopPath = storePopPath;
	}





	public String getStoreOperating() {
		return storeOperating;
	}





	public void setStoreOperating(String storeOperating) {
		this.storeOperating = storeOperating;
	}





	public String getStoreBreaktime() {
		return storeBreaktime;
	}





	public void setStoreBreaktime(String storeBreaktime) {
		this.storeBreaktime = storeBreaktime;
	}





	public String getNaverAddress() {
		return naverAddress;
	}





	public void setNaverAddress(String naverAddress) {
		this.naverAddress = naverAddress;
	}





	public String getDayOff() {
		return dayOff;
	}





	public void setDayOff(String dayOff) {
		this.dayOff = dayOff;
	}





	public String getStoreUrl() {
		return storeUrl;
	}





	public void setStoreUrl(String storeUrl) {
		this.storeUrl = storeUrl;
	}





	public Date getStoreEnrollDate() {
		return storeEnrollDate;
	}





	public void setStoreEnrollDate(Date storeEnrollDate) {
		this.storeEnrollDate = storeEnrollDate;
	}





	public String getStoreReview() {
		return storeReview;
	}





	public void setStoreReview(String storeReview) {
		this.storeReview = storeReview;
	}





	public String getReviewImg() {
		return reviewImg;
	}





	public void setReviewImg(String reviewImg) {
		this.reviewImg = reviewImg;
	}





	public String getReviewWriter() {
		return reviewWriter;
	}





	public void setReviewWriter(String reviewWriter) {
		this.reviewWriter = reviewWriter;
	}





	@Override
	public String toString() {
		return "Store [storeNo=" + storeNo 
				+ ", storeName=" + storeName + ", storeTag=" + storeTag + ", storeAddress=" + storeAddress
				+ ", storePhone=" + storePhone + ", storeIntro=" + storeIntro + ", storeImgPath=" + storeImgPath
				+ ", storePopularity=" + storePopularity + ", storePopInfo=" + storePopInfo + ", storePopPath="
				+ storePopPath + ", storeOperating=" + storeOperating + ", storeBreaktime=" + storeBreaktime
				+ ", naverAddress=" + naverAddress + ", dayOff=" + dayOff + ", storeUrl=" + storeUrl
				+ ", storeEnrollDate=" + storeEnrollDate + ", storeReview=" + storeReview + ", reviewImg=" + reviewImg
				+ ", reviewWriter=" + reviewWriter + "]";
	}

	
	
	
	
	

}
