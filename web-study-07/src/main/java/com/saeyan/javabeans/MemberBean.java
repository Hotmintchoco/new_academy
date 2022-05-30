package com.saeyan.javabeans;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MemberBean {
	private String name;
	private String userid;
	
	public MemberBean(String name, String userid) {
		this.name = name;
		this.userid = userid;
	}
	
	public MemberBean() {
	}
}
