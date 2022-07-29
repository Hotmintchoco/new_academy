package com.trip.domain;

import lombok.Data;

/*
create table destinatinodata (
    num number(10) not null primary key,
    title varchar2(150),
    address varchar2(200),
    firstimg varchar2(500),
    secondimg varchar2(500),
    mapx varchar2(50),
    mapy varchar2(50)
);
*/
@Data
public class DesDataDTO {
	private int num;
	private String title;
	private String content;
	private String address;
	private String firstImg;
	private String secondImg;
	private String mapX;
	private String mapY;
}
