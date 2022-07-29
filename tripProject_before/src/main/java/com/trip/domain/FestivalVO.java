package com.trip.domain;

import lombok.Data;

/*
 * CREATE TABLE festival ( festival_num number NOT NULL primary key,
 * festival_title varchar2(50) NOT NULL, festival_content varchar2(4000) NOT
 * NULL, festival_image varchar2(4000) NULL, festival_schedule varchar2(30)
 * NULL, festival_city varchar2(10) not null, usernum number not null,
 * CONSTRAINT fk_user_to_festival foreign key(usernum) references users(usernum)
 * );
 */

@Data
public class FestivalVO {
	private int festival_num;
	private String festival_title;
	private String festival_content;
	private String festival_image;
	private String festival_schedule;
	private String festival_city;
	private String usernum;

}

	


