package com.saeyan.dto;

import lombok.Getter;
import lombok.Setter;

/*
 * create table movie (
    code number(4),
    title varchar2(50),
    price number(10),
    director varchar2(20),
    actor varchar2(20),
    poster varchar2(100),
    sysnopsis varchar2(3000),
    primary key(code)
	);
 */
@Setter
@Getter
public class MemberVO {
	private Integer code;
	private String title;
	private Integer price;
	private String director;
	private String actor;
	private String poster;
	private String sysnopsis;
}
