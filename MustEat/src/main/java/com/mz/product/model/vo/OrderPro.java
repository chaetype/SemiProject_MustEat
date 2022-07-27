package com.mz.product.model.vo;

import java.sql.Date;

public class OrderPro {
	private int orderNo;
	private int memNo;
	private int orderQuentity;
	private Date orderDate;
	private String memo;
	private Date modifyDate;
	private int orderStatus;
	private int totalPrice;
	private int deliveryPrice;
	private int discountFee;
	private String payment;
	private String courier;
	private int courierNo;
	private String deliveryStatus;
	private String deliverType;
	
	
	public OrderPro() {

	}


	public OrderPro(int orderNo, int memNo, int orderQuentity, Date orderDate, String memo, Date modifyDate,
			int orderStatus, int totalPrice, int deliveryPrice, int discountFee, String payment, String courier,
			int courierNo, String deliveryStatus, String deliverType) {
		super();
		this.orderNo = orderNo;
		this.memNo = memNo;
		this.orderQuentity = orderQuentity;
		this.orderDate = orderDate;
		this.memo = memo;
		this.modifyDate = modifyDate;
		this.orderStatus = orderStatus;
		this.totalPrice = totalPrice;
		this.deliveryPrice = deliveryPrice;
		this.discountFee = discountFee;
		this.payment = payment;
		this.courier = courier;
		this.courierNo = courierNo;
		this.deliveryStatus = deliveryStatus;
		this.deliverType = deliverType;
	}


	public int getOrderNo() {
		return orderNo;
	}


	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}


	public int getMemNo() {
		return memNo;
	}


	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}


	public int getOrderQuentity() {
		return orderQuentity;
	}


	public void setOrderQuentity(int orderQuentity) {
		this.orderQuentity = orderQuentity;
	}


	public Date getOrderDate() {
		return orderDate;
	}


	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}


	public String getMemo() {
		return memo;
	}


	public void setMemo(String memo) {
		this.memo = memo;
	}


	public Date getModifyDate() {
		return modifyDate;
	}


	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}


	public int getOrderStatus() {
		return orderStatus;
	}


	public void setOrderStatus(int orderStatus) {
		this.orderStatus = orderStatus;
	}


	public int getTotalPrice() {
		return totalPrice;
	}


	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}


	public int getDeliveryPrice() {
		return deliveryPrice;
	}


	public void setDeliveryPrice(int deliveryPrice) {
		this.deliveryPrice = deliveryPrice;
	}


	public int getDiscountFee() {
		return discountFee;
	}


	public void setDiscountFee(int discountFee) {
		this.discountFee = discountFee;
	}


	public String getPayment() {
		return payment;
	}


	public void setPayment(String payment) {
		this.payment = payment;
	}


	public String getCourier() {
		return courier;
	}


	public void setCourier(String courier) {
		this.courier = courier;
	}


	public int getCourierNo() {
		return courierNo;
	}


	public void setCourierNo(int courierNo) {
		this.courierNo = courierNo;
	}


	public String getDeliveryStatus() {
		return deliveryStatus;
	}


	public void setDeliveryStatus(String deliveryStatus) {
		this.deliveryStatus = deliveryStatus;
	}


	public String getDeliverType() {
		return deliverType;
	}


	public void setDeliverType(String deliverType) {
		this.deliverType = deliverType;
	}


	@Override
	public String toString() {
		return "OrderPro [orderNo=" + orderNo + ", memNo=" + memNo + ", orderQuentity=" + orderQuentity + ", orderDate="
				+ orderDate + ", memo=" + memo + ", modifyDate=" + modifyDate + ", orderStatus=" + orderStatus
				+ ", totalPrice=" + totalPrice + ", deliveryPrice=" + deliveryPrice + ", discountFee=" + discountFee
				+ ", payment=" + payment + ", courier=" + courier + ", courierNo=" + courierNo + ", deliveryStatus="
				+ deliveryStatus + ", deliverType=" + deliverType + "]";
	}
	
	
	
}
