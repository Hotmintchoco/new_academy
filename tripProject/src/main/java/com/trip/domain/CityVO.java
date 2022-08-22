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
	
}