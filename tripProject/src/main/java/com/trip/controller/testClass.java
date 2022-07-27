package com.trip.controller;

public class testClass {

	public static void main(String[] args) {
		String str = "1992,02,7";
		
		str = str.replace(",", "");
		System.out.println(str);
		
		str = str.substring(0, 6) + 0 + str.substring(6);
		System.out.println(str);
		if(str.length() < 8) {
			System.out.println(str);
		}	
	}

}
