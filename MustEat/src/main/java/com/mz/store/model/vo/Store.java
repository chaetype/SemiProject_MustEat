package com.mz.store.model.vo;

import java.sql.Date;

public class Store {
	
	private int storeNo;
	private String localSi;
	private String localGu;
	private String localRo;
	private String storeName;
	private String storeTag;
	private String storeAddress;
	private String storePhone;
	private String storeIntro;
	private String storeImgPath;
	private String storePopularity;
	private String storePopInfo;
	private String storePopPath;
	private String storeOperating;
	private String storeBreaktime;
	private String naverAddress;
	private String dayOff;
	private String storeUrl;
	private Date storeEnrollDate;
	
	public Store() {
		
	}

	public Store(int storeNo, String localSi, String localGu, String localRo, String storeName, String storeTag,
			String storeAddress, String storePhone, String storeIntro, String storeImgPath, String storePopularity,
			String storePopInfo, String storePopPath, String storeOperating, String storeBreaktime, String naverAddress,
			String dayOff, String storeUrl, Date storeEnrollDate) {
		super();
		this.storeNo = storeNo;
		this.localSi = localSi;
		this.localGu = localGu;
		this.localRo = localRo;
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
	}
		
	public int getStoreNo() {
		return storeNo;
	}

	public void setStoreNo(int storeNo) {
		this.storeNo = storeNo;
	}

	public String getLocalSi() {
		return localSi;
	}

	public void setLocalSi(String localSi) {
		this.localSi = localSi;
	}

	public String getLocalGu() {
		return localGu;
	}

	public void setLocalGu(String localGu) {
		this.localGu = localGu;
	}

	public String getLocalRo() {
		return localRo;
	}

	public void setLocalRo(String localRo) {
		this.localRo = localRo;
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

	@Override
	public String toString() {
		return "Store [storeNo=" + storeNo + ", localSi=" + localSi + ", localGu=" + localGu + ", localRo=" + localRo
				+ ", storeName=" + storeName + ", storeTag=" + storeTag + ", storeAddress=" + storeAddress
				+ ", storePhone=" + storePhone + ", storeIntro=" + storeIntro + ", storeImgPath=" + storeImgPath
				+ ", storePopularity=" + storePopularity + ", storePopInfo=" + storePopInfo + ", storePopPath="
				+ storePopPath + ", storeOperating=" + storeOperating + ", storeBreaktime=" + storeBreaktime
				+ ", naverAddress=" + naverAddress + ", dayOff=" + dayOff + ", storeUrl=" + storeUrl
				+ ", storeEnrollDate=" + storeEnrollDate + "]";
	}
	
	
	
	

}