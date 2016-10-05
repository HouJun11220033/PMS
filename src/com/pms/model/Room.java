package com.pms.model;

public class Room {
	private Integer id;
	private String roomType;
	private String roomPrice;
	private String roomNum;
	private String roomState;
	private String roomHyg;
	private Orders orders;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Orders getOrders() {
		return orders;
	}

	public void setOrders(Orders orders) {
		this.orders = orders;
	}

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

		this.roomState = roomState;
		this.roomHyg = roomHyg;

	}

	public Room() {
		super();
	}

	@Override
	public String toString() {
		return "Room [roomType=" + roomType + ", roomPrice=" + roomPrice + ", roomNum=" + roomNum
				+ ", roomAmount=" + ", roomState=" + roomState + ", roomHyg=" + roomHyg + "]";
	}

}
