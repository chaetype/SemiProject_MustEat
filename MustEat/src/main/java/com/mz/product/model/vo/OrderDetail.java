package com.mz.product.model.vo;

import java.sql.Date;

/**
 * @author gdj49
 *
 */
public class OrderDetail {
	
	// 은영 
	// 주문 상세 조회시 사용할 class

	private int orderNo;
	private Date orderDate;
	private int productCode;
	private String productName;
	private int amount;
	private int price;
	private int deliveryPrice;
	private int discountPrice;
	private int totalPrice;
	private String seller;
	private String sellerPhone;
	private String deliveryStatus;
	private String delName; // 배송지 이름
	private String delPhone;
	private String delEmail;
	private int addressCode;
	private String address;
	private String addressDetail;
	private String addressRef;
	private String memo;
	private String memName; // 회원 이름
	private String memPhone;
	
	public OrderDetail() {
		
	}

	public OrderDetail(int orderNo, Date orderDate, int productCode, String productName, int amount, int price,
			int deliveryPrice, int discountPrice, int totalPrice, String seller, String sellerPhone,
			String deliveryStatus, String delName, String delPhone, String delEmail, int addressCode, String address,
			String addressDetail, String addressRef, String memo, String memName, String memPhone) {
		this.orderNo = orderNo;
		this.orderDate = orderDate;
		this.productCode = productCode;
		this.productName = productName;
		this.amount = amount;
		this.price = price;
		this.deliveryPrice = deliveryPrice;
		this.discountPrice = discountPrice;
		this.totalPrice = totalPrice;
		this.seller = seller;
		this.sellerPhone = sellerPhone;
		this.deliveryStatus = deliveryStatus;
		this.delName = delName;
		this.delPhone = delPhone;
		this.delEmail = delEmail;
		this.addressCode = addressCode;
		this.address = address;
		this.addressDetail = addressDetail;
		this.addressRef = addressRef;
		this.memo = memo;
		this.memName = memName;
		this.memPhone = memPhone;
	}

	public OrderDetail(int orderNo, String productName, int amount, int price, int deliveryPrice, String seller,
			String sellerPhone, String deliveryStatus) {
		this.orderNo = orderNo;
		this.productName = productName;
		this.amount = amount;
		this.price = price;
		this.deliveryPrice = deliveryPrice;
		this.seller = seller;
		this.sellerPhone = sellerPhone;
		this.deliveryStatus = deliveryStatus;
	}
	
	public OrderDetail(int orderNo, Date orderDate, int price, int deliveryPrice, int discountPrice, int totalPrice,
			String delName, String delPhone, String delEmail, int addressCode, String address, String addressDetail,
			String addressRef, String memo, String memName, String memPhone) {
		this.orderNo = orderNo;
		this.orderDate = orderDate;
		this.price = price;
		this.deliveryPrice = deliveryPrice;
		this.discountPrice = discountPrice;
		this.totalPrice = totalPrice;
		this.delName = delName;
		this.delPhone = delPhone;
		this.delEmail = delEmail;
		this.addressCode = addressCode;
		this.address = address;
		this.addressDetail = addressDetail;
		this.addressRef = addressRef;
		this.memo = memo;
		this.memName = memName;
		this.memPhone = memPhone;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
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

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getDeliveryPrice() {
		return deliveryPrice;
	}

	public void setDeliveryPrice(int deliveryPrice) {
		this.deliveryPrice = deliveryPrice;
	}
	
	public int getDiscountPrice() {
		return discountPrice;
	}

	public void setDiscountPrice(int discountPrice) {
		this.discountPrice = discountPrice;
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
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

	public String getDeliveryStatus() {
		return deliveryStatus;
	}

	public void setDeliveryStatus(String deliveryStatus) {
		this.deliveryStatus = deliveryStatus;
	}

	public String getDelName() {
		return delName;
	}

	public void setDelName(String delName) {
		this.delName = delName;
	}

	public String getDelPhone() {
		return delPhone;
	}

	public void setDelPhone(String delPhone) {
		this.delPhone = delPhone;
	}

	public String getDelEmail() {
		return delEmail;
	}

	public void setDelEmail(String delEmail) {
		this.delEmail = delEmail;
	}

	public int getAddressCode() {
		return addressCode;
	}

	public void setAddressCode(int addressCode) {
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

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
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

	@Override
	public String toString() {
		return "OrderDetail [orderNo=" + orderNo + ", orderDate=" + orderDate + ", productCode=" + productCode
				+ ", productName=" + productName + ", amount=" + amount + ", price=" + price + ", deliveryPrice="
				+ deliveryPrice + ", discountPrice=" + discountPrice + ", totalPrice=" + totalPrice + ", seller="
				+ seller + ", sellerPhone=" + sellerPhone + ", deliveryStatus=" + deliveryStatus + ", delName="
				+ delName + ", delPhone=" + delPhone + ", delEmail=" + delEmail + ", addressCode=" + addressCode
				+ ", address=" + address + ", addressDetail=" + addressDetail + ", addressRef=" + addressRef + ", memo="
				+ memo + ", memName=" + memName + ", memPhone=" + memPhone + "]";
	}

}
