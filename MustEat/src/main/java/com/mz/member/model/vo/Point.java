package com.mz.member.model.vo;

import java.sql.Date;

public class Point {
	
	private int mpsNo;
	private int memNo;
	private Date suDate;
	private String mpsCategory;
	private int mpsRecord;
	private String mpsStatus;
	private String pStatus;
	private String memName;
	private String memId;
	private String memPhone;	
	private int reviewMonth;
	private int savePoint;
	private String mpsDate;
	private int useableMps;
	private int mpsDelete;
	
	public Point() {
		
	}

	public Point(int mpsNo, int memNo, Date suDate, String mpsCategory, int mpsRecord, String mpsStatus) {
		super();
		this.mpsNo = mpsNo;
		this.memNo = memNo;
		this.suDate = suDate;
		this.mpsCategory = mpsCategory;
		this.mpsRecord = mpsRecord;
		this.mpsStatus = mpsStatus;
	}
		
	
	public Point(Date suDate, int memNo, String memName, String memId, String memPhone, int mpsRecord, String mpsCategory, String mpsStatus) {
		super();
		this.suDate = suDate;
		this.memNo = memNo;
		this.memName = memName;
		this.memId = memId;
		this.memPhone = memPhone;		
		this.mpsRecord = mpsRecord;
		this.mpsCategory = mpsCategory;
		this.mpsStatus = mpsStatus;
	}

	public Point(Date suDate, String mpsCategory, int mpsRecord, String mpsStatus) {
		super();
		this.suDate = suDate;
		this.mpsCategory = mpsCategory;
		this.mpsRecord = mpsRecord;
		this.mpsStatus = mpsStatus;
	}

	public Point(int mpsNo, int memNo, Date suDate, String mpsCategory, int mpsRecord, String mpsStatus, String memName,
			String memId, String memPhone) {
		super();
		this.mpsNo = mpsNo;
		this.memNo = memNo;
		this.suDate = suDate;
		this.mpsCategory = mpsCategory;
		this.mpsRecord = mpsRecord;
		this.mpsStatus = mpsStatus;
		this.memName = memName;
		this.memId = memId;
		this.memPhone = memPhone;
	}
	
	public Point(int memNo, String memName, String memId, int reviewMonth, int savePoint, String mpsDate, String pStatus) {
		super();
		this.memNo = memNo;
		this.memName = memName;
		this.memId = memId;
		this.reviewMonth = reviewMonth;
		this.savePoint = savePoint;
		this.mpsDate = mpsDate;
		this.pStatus = pStatus;
	}
	
	public Point(Date suDate, String mpsCategory, String mpsStatus, int mpsRecord) {
		super();
		this.suDate = suDate;
		this.mpsCategory = mpsCategory;
		this.mpsStatus = mpsStatus;
		this.mpsRecord = mpsRecord;
	}
	
	public Point(int useableMps) {
		super();
		this.useableMps = useableMps;
	}
	
	public int getMpsNo() {
		return mpsNo;
	}

	public void setMpsNo(int mpsNo) {
		this.mpsNo = mpsNo;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public Date getSuDate() {
		return suDate;
	}

	public void setSuDate(Date suDate) {
		this.suDate = suDate;
	}

	public String getMpsCategory() {
		return mpsCategory;
	}

	public void setMpsCategory(String mpsCategory) {
		this.mpsCategory = mpsCategory;
	}

	public int getMpsRecord() {
		return mpsRecord;
	}

	public void setMpsRecord(int mpsRecord) {
		this.mpsRecord = mpsRecord;
	}

	public String getMpsStatus() {
		return mpsStatus;
	}

	public void setMpsStatus(String mpsStatus) {
		this.mpsStatus = mpsStatus;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getMemPhone() {
		return memPhone;
	}

	public void setMemPhone(String memPhone) {
		this.memPhone = memPhone;
	}
	
	public String getpStatus() {
		return pStatus;
	}

	public void setpStatus(String pStatus) {
		this.pStatus = pStatus;
	}

	public int getReviewMonth() {
		return reviewMonth;
	}

	public void setReviewMonth(int reviewMonth) {
		this.reviewMonth = reviewMonth;
	}

	public int getSavePoint() {
		return savePoint;
	}

	public void setSavePoint(int savePoint) {
		this.savePoint = savePoint;
	}

	public String getMpsDate() {
		return mpsDate;
	}

	public void setMpsDate(String mpsDate) {
		this.mpsDate = mpsDate;
	}
	
	public int getUseableMps() {
		return useableMps;
	}

	public void setUseableMps(int useableMps) {
		this.useableMps = useableMps;
	}	

	public int getMpsDelete() {
		return mpsDelete;
	}

	public void setMpsDelete(int mpsDelete) {
		this.mpsDelete = mpsDelete;
	}

	@Override
	public String toString() {
		return "Point [mpsNo=" + mpsNo + ", memNo=" + memNo + ", suDate=" + suDate + ", mpsCategory=" + mpsCategory
				+ ", mpsRecord=" + mpsRecord + ", mpsStatus=" + mpsStatus + ", memName=" + memName + ", memId=" + memId
				+ ", memPhone=" + memPhone + "]";
	}

	
}
