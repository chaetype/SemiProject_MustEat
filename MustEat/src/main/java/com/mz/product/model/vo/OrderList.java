package com.mz.product.model.vo;

public class OrderList {
	
	private int orderNo;
	private int productCode;
	private int amount;
	
	public OrderList() {
		
	}

	public OrderList(int orderNo, int productCode, int amount) {
		super();
		this.orderNo = orderNo;
		this.productCode = productCode;
		this.amount = amount;
	}

	
	public OrderList(int productCode, int amount) {
		super();
		this.productCode = productCode;
		this.amount = amount;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public int getProductCode() {
		return productCode;
	}

	public void setProductCode(int productCode) {
		this.productCode = productCode;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	@Override
	public String toString() {
		return "OrderList [orderNo=" + orderNo + ", productCode=" + productCode + ", amount=" + amount + "]";
	}
	
	
}
