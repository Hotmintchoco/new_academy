package com.trip.domain;

import java.util.Date;

import lombok.Data;

/*
      	destination_num number not null primary key,
	    destination_title varchar2(50) not null,
	    destination_date date default sysdate,
	    destination_image varchar2(4000),
	    destination_content varchar2(4000) not null,
 */
@Data
public class DestinationVO {
	private int destination_num;
	private String destination_title;
	private String destination_image;
	private String destination_content;
	private String destination_city;
	private int usernum;
	private Date destination_date;
}
