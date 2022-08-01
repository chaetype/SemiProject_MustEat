package com.mz.product.model.vo;

import java.sql.Date;

/**
 * @author gdj49
 *
 */
public class Basket {
	
	private String memNo;
	private String productCode;
	private int count; // 장바구니 담은 갯수
	private Date basketDate;
	// 추가분
	private String month; // 장바구니 담은 달
	private int price; // 총금액 
	private String seller; // 판매자
	private String sellerPhone; // 판매자 연락처
	
	public Basket() {
		
	}

	public Basket(String memNo, String productCode, int count, Date basketDate) {
		super();
		this.memNo = memNo;
		this.productCode = productCode;
		this.count = count;
		this.basketDate = basketDate;
	}


	public Basket(String memNo, String productCode, int count, Date basketDate, String month, int price, String seller,
			String sellerPhone) {
		super();
		this.memNo = memNo;
		this.productCode = productCode;
		this.count = count;
		this.basketDate = basketDate;
		this.month = month;
		this.price = price;
		this.seller = seller;
		this.sellerPhone = sellerPhone;
	}

	public Basket(String month) {
		super();
		this.month = month;
	}

	public String getMemNo() {
		return memNo;
	}

	public void setMemNo(String memNo) {
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

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getSeller() {
		return seller;
	}

	public void setSeller(String seller) {
		this.seller = seller;
	}

	public String getSellerPhone() {
		return sellerPhone;
	}

	public void setSellerPhone(String sellerPhone) {
		this.sellerPhone = sellerPhone;
	}

	@Override
	public String toString() {
		return "Basket [memNo=" + memNo + ", productCode=" + productCode + ", count=" + count + ", basketDate="
				+ basketDate + ", month=" + month + ", price=" + price + ", seller=" + seller + ", sellerPhone="
				+ sellerPhone + "]";
	}

}
