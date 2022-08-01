package com.mz.product.model.vo;

import java.sql.Date;

public class Product {
	
	
	private int productCode;
	private String productName;
	private int price;
	private Date enrollDate;
	private String seller;
	private String sellerPhone;
	private String salesUnit;
	private String capacity;
	private String packing;
	private String allergy;
	private String expirationDate;
	private String imgPath;
	
	public Product() {
		
	}

	public Product(int productCode, String productName, int price, Date enrollDate, String seller, String sellerPhone,
			String salesUnit, String capacity, String packing, String allergy, String expirationDate, String imgPath) {
		super();
		this.productCode = productCode;
		this.productName = productName;
		this.price = price;
		this.enrollDate = enrollDate;
		this.seller = seller;
		this.sellerPhone = sellerPhone;
		this.salesUnit = salesUnit;
		this.capacity = capacity;
		this.packing = packing;
		this.allergy = allergy;
		this.expirationDate = expirationDate;
		this.imgPath = imgPath;
	}
	



	public Product(int productCode, String productName, int price, String imgPath) {
		super();
		this.productCode = productCode;
		this.productName = productName;
		this.price = price;
		this.imgPath = imgPath;
	}

	
	public Product(int productCode, String productName, int price, String salesUnit, String capacity, String packing,
			String allergy, String expirationDate, String imgPath) {
		super();
		this.productCode = productCode;
		this.productName = productName;
		this.price = price;
		this.salesUnit = salesUnit;
		this.capacity = capacity;
		this.packing = packing;
		this.allergy = allergy;
		this.expirationDate = expirationDate;
		this.imgPath = imgPath;
	}

	public int getProductCode() {
		return productCode;
	}

	public void setProductCode(int productCode) {
		this.productCode = productCode;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
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

	public String getSalesUnit() {
		return salesUnit;
	}

	public void setSalesUnit(String salesUnit) {
		this.salesUnit = salesUnit;
	}

	public String getCapacity() {
		return capacity;
	}

	public void setCapacity(String capacity) {
		this.capacity = capacity;
	}

	public String getPacking() {
		return packing;
	}

	public void setPacking(String packing) {
		this.packing = packing;
	}

	public String getAllergy() {
		return allergy;
	}

	public void setAllergy(String allergy) {
		this.allergy = allergy;
	}

	public String getExpirationDate() {
		return expirationDate;
	}

	public void setExpirationDate(String expirationDate) {
		this.expirationDate = expirationDate;
	}

	public String getImgPath() {
		return imgPath;
	}

	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}

	@Override
	public String toString() {
		return "Product [productCode=" + productCode + ", productName=" + productName + ", price=" + price
				+ ", enrollDate=" + enrollDate + ", seller=" + seller + ", sellerPhone=" + sellerPhone + ", salesUnit="
				+ salesUnit + ", capacity=" + capacity + ", packing=" + packing + ", allergy=" + allergy
				+ ", expirationDate=" + expirationDate + ", imgPath=" + imgPath + "]";
	}
	
	
}
