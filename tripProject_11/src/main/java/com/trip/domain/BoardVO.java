package com.trip.domain;

import java.util.Date;

/*
 *   board_num number NOT NULL primary key,
   board_title varchar2(50) NOT NULL,
   board_content varchar2(4000) not null,
   board_date date default sysdate,
   hits number NOT NULL,
   board_image varchar2(4000) NULL,
   board_like number not null,
   --fk Ãß°¡
   usernum number not null,
 */
public class BoardVO {
	private int board_num;
	private String board_title;
	private String board_content;
	private Date board_date;
	private String hits;
	private String board_image;
	private String board_like;
}
