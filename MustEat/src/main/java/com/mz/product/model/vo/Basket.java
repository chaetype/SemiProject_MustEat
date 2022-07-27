package com.mz.product.model.vo;

import java.sql.Date;

public class Basket {
	
	private int memNo;
	private String productCode;
	private int count;
	private Date basketDate;
	
	public Basket() {
		
	}

	public Basket(int memNo, String productCode, int count, Date basketDate) {
		super();
		this.memNo = memNo;
		this.productCode = productCode;
		this.count = count;
		this.basketDate = basketDate;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getProductCode() {
		return productCode;
	}

	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public Date getBasketDate() {
		return basketDate;
	}

	public void setBasketDate(Date basketDate) {
		this.basketDate = basketDate;
	}

	@Override
	public String toString() {
		return "Basket [memNo=" + memNo + ", productCode=" + productCode + ", count=" + count + ", basketDate="
				+ basketDate + "]";
	}
	
}
