package com.pms.model;

public class Room {
	private String roomType;
	private String roomPrice;
	private String roomNum;
	private String roomAmount;
	private String roomState;
	private String roomHyg;

	public String getRoomType() {
		return roomType;
	}

	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}

	public String getRoomPrice() {
		return roomPrice;
	}

	public void setRoomPrice(String roomPrice) {
		this.roomPrice = roomPrice;
	}

	public String getRoomNum() {
		return roomNum;
	}

	public void setRoomNum(String roomNum) {
		this.roomNum = roomNum;
	}

	public String getRoomAmount() {
		return roomAmount;
	}

	public void setRoomAmount(String roomAmount) {
		this.roomAmount = roomAmount;
	}

	public String getRoomState() {
		return roomState;
	}

	public void setRoomState(String roomState) {
		this.roomState = roomState;
	}

	public String getRoomHyg() {
		return roomHyg;
	}

	public void setRoomHyg(String roomHyg) {
		this.roomHyg = roomHyg;
	}

	public Room(String roomType, String roomPrice, String roomNum, String roomAmount, String roomState,
			String roomHyg) {
		super();
		this.roomType = roomType;
		this.roomPrice = roomPrice;
		this.roomNum = roomNum;
		this.roomAmount = roomAmount;
		this.roomState = roomState;
		this.roomHyg = roomHyg;

	}

	public Room() {
		super();
	}

	@Override
	public String toString() {
		return "Room [roomType=" + roomType + ", roomPrice=" + roomPrice + ", roomNum=" + roomNum
				+ ", roomAmount=" + roomAmount + ", roomState=" + roomState + ", roomHyg=" + roomHyg + "]";
	}

}
