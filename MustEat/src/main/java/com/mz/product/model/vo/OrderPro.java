package com.mz.product.model.vo;

import java.sql.Date;

public class OrderPro {
	private int orderNo;
	private String memNo;
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
	// 추가문
	private String memId; // 주문현황에서 조회하는 아이디
	private String productName; // 주문현황에서 조회하는 상품명
	private String seller; // 주문현황에서 조회하는 상품판매자명
	private String sellerPhone; // 주문현황에서 조회하는 상품판매자 전화번호
	private int basket; // 장바구니 수량
	private int orderConfirm; // 구매확정 수량
	private int orderCancel; // 구매취소 수량
	private int orderReady; // 배송준비중 수량
	private int orderTransit; // 배송중 수량
	private int orderDelivered; // 배송완료 수량
	private String orderMonth; // 주문한 월
	
	public OrderPro() {

	}


	public OrderPro(int orderNo, String memNo, int orderQuentity, Date orderDate, String memo, Date modifyDate,
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
	
	public OrderPro(int orderNo, String memNo, int orderQuentity, Date orderDate, String memo, Date modifyDate,
			int orderStatus, int totalPrice, int deliveryPrice, int discountFee, String payment, String courier,
			int courierNo, String deliveryStatus, String deliverType, String memId, String productName, String seller,
			String sellerPhone) {
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
		this.memId = memId;
		this.productName = productName;
		this.seller = seller;
		this.sellerPhone = sellerPhone;
	}

	public OrderPro(int orderNo, int orderQuentity, Date orderDate, int totalPrice, String deliveryStatus, String memId,
			String productName, String seller, String sellerPhone) {
		super();
		this.orderNo = orderNo;
		this.orderQuentity = orderQuentity;
		this.orderDate = orderDate;
		this.totalPrice = totalPrice;
		this.deliveryStatus = deliveryStatus;
		this.memId = memId;
		this.productName = productName;
		this.seller = seller;
		this.sellerPhone = sellerPhone;
	}
	
	
	public OrderPro(String memNo, int basket, int orderConfirm, int orderCancel, int orderReady, int orderTransit,
			int orderDelivered) {
		super();
		this.memNo = memNo;
		this.basket = basket;
		this.orderConfirm = orderConfirm;
		this.orderCancel = orderCancel;
		this.orderReady = orderReady;
		this.orderTransit = orderTransit;
		this.orderDelivered = orderDelivered;
	}
	
	public OrderPro(Date orderDate, int orderStatus, int totalPrice, String deliveryStatus, String productName) {
		super();
		this.orderDate = orderDate;
		this.orderStatus = orderStatus;
		this.totalPrice = totalPrice;
		this.deliveryStatus = deliveryStatus;
		this.productName = productName;
	}
	
	public OrderPro(int orderNo, int orderQuentity, Date orderDate, int orderStatus, int totalPrice, String productName,
			String seller, String sellerPhone, String orderMonth) {
		super();
		this.orderNo = orderNo;
		this.orderQuentity = orderQuentity;
		this.orderDate = orderDate;
		this.orderStatus = orderStatus;
		this.totalPrice = totalPrice;
		this.productName = productName;
		this.seller = seller;
		this.sellerPhone = sellerPhone;
		this.orderMonth = orderMonth;
	}


	public OrderPro(String orderMonth) {
		super();
		this.orderMonth = orderMonth;
	}


	public String getMemId() {
		return memId;
	}


	public void setMemId(String memId) {
		this.memId = memId;
	}


	public String getProductName() {
		return productName;
	}


	public void setProductName(String productName) {
		this.productName = productName;
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


	public int getOrderNo() {
		return orderNo;
	}


	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}


	public String getMemNo() {
		return memNo;
	}


	public void setMemNo(String memNo) {
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


	public int getBasket() {
		return basket;
	}


	public void setBasket(int basket) {
		this.basket = basket;
	}


	public int getOrderConfirm() {
		return orderConfirm;
	}


	public void setOrderConfirm(int orderConfirm) {
		this.orderConfirm = orderConfirm;
	}


	public int getOrderCancel() {
		return orderCancel;
	}


	public void setOrderCancel(int orderCancel) {
		this.orderCancel = orderCancel;
	}


	public int getOrderReady() {
		return orderReady;
	}


	public void setOrderReady(int orderReady) {
		this.orderReady = orderReady;
	}


	public int getOrderTransit() {
		return orderTransit;
	}


	public void setOrderTransit(int orderTransit) {
		this.orderTransit = orderTransit;
	}


	public int getOrderDelivered() {
		return orderDelivered;
	}


	public void setOrderDelivered(int orderDelivered) {
		this.orderDelivered = orderDelivered;
	}
	
	public String getOrderMonth() {
		return orderMonth;
	}


	public void setOrderMonth(String orderMonth) {
		this.orderMonth = orderMonth;
	}


	@Override
	public String toString() {
		return "OrderPro [orderNo=" + orderNo + ", memNo=" + memNo + ", orderQuentity=" + orderQuentity + ", orderDate="
				+ orderDate + ", memo=" + memo + ", modifyDate=" + modifyDate + ", orderStatus=" + orderStatus
				+ ", totalPrice=" + totalPrice + ", deliveryPrice=" + deliveryPrice + ", discountFee=" + discountFee
				+ ", payment=" + payment + ", courier=" + courier + ", courierNo=" + courierNo + ", deliveryStatus="
				+ deliveryStatus + ", deliverType=" + deliverType + ", memId=" + memId + ", productName=" + productName
				+ ", seller=" + seller + ", sellerPhone=" + sellerPhone + ", basket=" + basket + ", orderConfirm="
				+ orderConfirm + ", orderCancel=" + orderCancel + ", orderReady=" + orderReady + ", orderTransit="
				+ orderTransit + ", orderDelivered=" + orderDelivered + ", orderMonth=" + orderMonth + "]";
	}

}
