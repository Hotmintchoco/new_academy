package com.saeyan.dto;

import java.sql.Timestamp;

import lombok.Data;

/*
 *create table employees(
    id varchar2(10) not null primary key,
    pass varchar2(10) not null,
    name varchar2(20),
    lev char(1) default 'A',
    enter date default sysdate,
    gender char(1) default '1',
    phone varchar2(30)
	);
 */

@Data
public class EmployeeVO {
	private String id;
	private String pass;
	private String name;
	private String lev;
	private Timestamp enter;
	private Integer gender;
	private String phone;
}
