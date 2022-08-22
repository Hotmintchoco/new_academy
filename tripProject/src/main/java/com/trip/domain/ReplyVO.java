package com.trip.domain;

import java.util.Date;

import lombok.Data;

/*
create table board_reply(
    rno number(10, 0) primary key,
    bno number(10, 0) not null,
    reply varchar2(1000) not null,
    replyDate date default sysdate,
    usernum number not null,
    CONSTRAINT fk_user_to_reply 
    foreign key(usernum) references users(usernum)
);
*/

@Data
public class ReplyVO {
	private Long rno, bno, usernum;
	private String reply;
	private Date replyDate;
	
	private UserVO user;
}