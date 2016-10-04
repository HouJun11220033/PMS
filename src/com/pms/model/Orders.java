package com.pms.model;

import java.util.Date;

public class Orders {
	private Integer orderId;
	private String roomNum;
	private String roomType;
	private String phoneNum;
	private String orderNum;
	private Date startTime;
	private Date endTime;
	private String price;
	private Integer roomAmount;
	private String remark;

	public void setRoomAmount(Integer roomAmount) {
		this.roomAmount = roomAmount;
	}

	public Integer getOrderId() {
		return orderId;
	}

	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

	public String getRoomNum() {
		return roomNum;
	}

	public void setRoomNum(String roomNum) {
		this.roomNum = roomNum;
	}

	public String getRoomType() {
		return roomType;
	}

	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}

	public String getPhoneNum() {
		return phoneNum;
	}

	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}

	public String getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public int getRoomAmount() {
		return roomAmount;
	}

	public void setRoomAmount(int roomAmount) {
		this.roomAmount = roomAmount;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Orders(String roomType, String phoneNum, String orderNum, Date startTime, Date endTime,
			String price, int roomAmount, String remark) {
		super();
		this.roomType = roomType;
		this.phoneNum = phoneNum;
		this.orderNum = orderNum;
		this.startTime = startTime;
		this.endTime = endTime;
		this.price = price;
		this.roomAmount = roomAmount;
		this.remark = remark;
	}

	public Orders() {
		super();
	}

	@Override
	public String toString() {
		return "Order [roomType=" + roomType + ", phoneNum=" + phoneNum + ", orderNum=" + orderNum
				+ ", startTime=" + startTime + ", endTime=" + endTime + ", price=" + price + ", roomAmount="
				+ roomAmount + ", remark=" + remark + "]";
	}

}
