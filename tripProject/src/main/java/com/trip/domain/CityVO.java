package com.trip.domain;

import lombok.Data;

@Data
public class CityVO {
	private String address, city;
	private int pageNum;
	private int amount;
	private int type;

	public String[] getCityArr() {
		return city == null ? new String[] {} : city.split(" ");
	}
	
	public CityVO() {
		this(1, 10);
	}
	
	public CityVO(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
}