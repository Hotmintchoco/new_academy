package com.trip.domain;

import lombok.Data;

/*
create table destination_impl (
    num number(5) not null primary key,
    title varchar2(200),
    address varchar2(200),
    firstimg varchar2(500),
    mapx varchar2(50),
    mapy varchar2(50),
    mlevel number(5),
    tel varchar2(150),
    type number     -- 호텔 1, 음식점 2
);
*/

@Data
public class DestinationImplData {
	private int num;
	private String title;
	private String address;
	private String firstimg;
	private String mapx;
	private String mapy;
	private String tel;
	private int mlevel;
	private int type;
}