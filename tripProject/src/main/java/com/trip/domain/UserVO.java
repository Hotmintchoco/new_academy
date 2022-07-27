package com.trip.domain;

import java.sql.Date;

import lombok.Data;

/*
  -- user 테이블
CREATE TABLE users (
   usernum number NOT NULL primary key,
   userid varchar2(20) NOT NULL UNIQUE,
   username varchar2(20) NOT NULL,
   nickname varchar2(20) NOT NULL UNIQUE,
   userpass varchar2(16) NOT NULL,
   phone char(13) NOT NULL,  / 010-1234-5678 형식
   birth char(8) NOT NULL,
   gender varchar2(8) NOT NULL, / male - 남성, female - 여성
   joindate date default sysdate,
   email varchar2(50) NOT NULL,
   admin number(1) NOT NULL, / 0 - 관리자, 1 - 일반회원
   question varchar2(50) NULL,
   answer varchar2(30) NULL
);
 */
@Data
public class UserVO {
	private int userNum, admin;
	private String userId, userName, nickName, userPass, gender,
		phone, birth, email, question, answer;
	private Date joinDate;
}