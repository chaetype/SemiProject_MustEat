package com.mz.member.model.vo;

import java.sql.Date;

public class Member {
	
	private int memNo;
	private String memId;
	private String memPwd;
	private String memName;
	private String memPhone;
	private String memEmail;
	private Date enrollDate;
	private Date modifyDate;
	private String memStatus;
	private String memNickname;
	private String memGrade;
	private String addressCode;
	private String address;
	private String addressDetail;
	private String addressRef;
	private String memImgPath;
	private String withDraw;
	
	private String secreatId;
	
	private String following;//나를 팔로우 하는 회원들
	private String streview;//내가쓴 식당리뷰
	private int cfollowing;//나를 팔로우 하는 회원들수
	private int cstreview;//내가쓴 식당리뷰수
	
	
	
	public Member() {
		
	}
	
	public Member() {
		
	}
	
	// 태민 아이디 찾기에 사용
	
	public Member(String memId) {
		super();
		this.memId = memId;
	}
	
	public Member(String memId, String memEmail, String secreatId) {
		super();
		this.memId = memId;
		this.memEmail = memEmail;
		this.secreatId = secreatId;
	}
	
	// 태민 비밀번호 찾기에 사용
	public Member(String memPwd, String memEmail) {
		super();
		this.memPwd = memPwd;
		this.memEmail = memEmail;
	}

	
	public Member(int memNo, String memId, String memPwd, String memName, String memPhone, String memEmail,
			Date enrollDate, Date modifyDate, String memStatus, String memNickname, String memGrade, String addressCode,
			String address, String addressDetail, String addressRef, String memImgPath, String withDraw) {
		super();
		this.memNo = memNo;
		this.memId = memId;
		this.memPwd = memPwd;
		this.memName = memName;
		this.memPhone = memPhone;
		this.memEmail = memEmail;
		this.enrollDate = enrollDate;
		this.modifyDate = modifyDate;
		this.memStatus = memStatus;
		this.memNickname = memNickname;
		this.memGrade = memGrade;
		this.addressCode = addressCode;
		this.address = address;
		this.addressDetail = addressDetail;
		this.addressRef = addressRef;
		this.memImgPath = memImgPath;
		this.withDraw = withDraw;
	}

	public Member(String memId, String memPwd, String memName, String memPhone, String memEmail, String memNickname,
			String addressCode, String address, String addressDetail, String addressRef, String memImgPath) {
		this.memId = memId;
		this.memPwd = memPwd;
		this.memName = memName;
		this.memPhone = memPhone;
		this.memEmail = memEmail;
		this.memNickname = memNickname;
		this.addressCode = addressCode;
		this.address = address;
		this.addressDetail = addressDetail;
		this.addressRef = addressRef;
		this.memImgPath = memImgPath;
	}

	public Member(int memNo,String memName, String memImgPath) {
		super();
		this.memNo = memNo;
		this.memName = memName;
		this.memImgPath = memImgPath;
	}
	
	
	
	
	
	

	public Member(int memNo, String memImgPath,String memNickname,String memId,   /* int cfollowing, */ int cstreview) {
		super();
		this.memNo = memNo;
		this.memImgPath = memImgPath;
		this.memNickname = memNickname;
		this.memId = memId;
		/* this.cfollowing = cfollowing; */
		this.cstreview = cstreview;
	}

	public int getCfollowing() {
		return cfollowing;
	}

	public void setCfollowing(int cfollowing) {
		this.cfollowing = cfollowing;
	}

	public int getCstreview() {
		return cstreview;
	}

	public void setCstreview(int cstreview) {
		this.cstreview = cstreview;
	}

	public String getStreview() {
		return streview;
	}

	public void setStreview(String streview) {
		this.streview = streview;
	}

	public String getFollowing() {
		return following;
	}

	public void setFollowing(String following) {
		this.following = following;
	}

	public String getSecreatId() {
		return secreatId;
	}


	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getMemPwd() {
		return memPwd;
	}

	public void setMemPwd(String memPwd) {
		this.memPwd = memPwd;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public String getMemPhone() {
		return memPhone;
	}

	public void setMemPhone(String memPhone) {
		this.memPhone = memPhone;
	}

	public String getMemEmail() {
		return memEmail;
	}

	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public Date getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}

	public String getMemStatus() {
		return memStatus;
	}

	public void setMemStatus(String memStatus) {
		this.memStatus = memStatus;
	}

	public String getMemNickname() {
		return memNickname;
	}

	public void setMemNickname(String memNickname) {
		this.memNickname = memNickname;
	}

	public String getMemGrade() {
		return memGrade;
	}

	public void setMemGrade(String memGrade) {
		this.memGrade = memGrade;
	}

	public String getAddressCode() {
		return addressCode;
	}

	public void setAddressCode(String addressCode) {
		this.addressCode = addressCode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAddressDetail() {
		return addressDetail;
	}

	public void setAddressDetail(String addressDetail) {
		this.addressDetail = addressDetail;
	}

	public String getAddressRef() {
		return addressRef;
	}

	public void setAddressRef(String addressRef) {
		this.addressRef = addressRef;
	}

	public String getMemImgPath() {
		return memImgPath;
	}

	public void setMemImgPath(String memImgPath) {
		this.memImgPath = memImgPath;
	}

	public String getWithDraw() {
		return withDraw;
	}

	public void setWithDraw(String withDraw) {
		this.withDraw = withDraw;
	}
	
	public void setSecreatId(String secreatId) {
		this.secreatId = secreatId;
	}

	@Override
	public String toString() {
		return "Member [memNo=" + memNo + ", memId=" + memId + ", memPwd=" + memPwd + ", memName=" + memName
				+ ", memPhone=" + memPhone + ", memEmail=" + memEmail + ", enrollDate=" + enrollDate + ", modifyDate="
				+ modifyDate + ", memStatus=" + memStatus + ", memNickname=" + memNickname + ", memGrade=" + memGrade
				+ ", addressCode=" + addressCode + ", address=" + address + ", addressDetail=" + addressDetail
				+ ", addressRef=" + addressRef + ", memImgPath=" + memImgPath + ", withDraw=" + withDraw + "]";
	}
	
	

}
