package com.trip.mapper;

import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.io.BufferedReader;
import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.trip.domain.DesDataDTO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class DesDataMapperTest {
	@Autowired
	private DesDataMapper mapper;
	
	@Test
	public void testInsert() throws IOException {
		StringBuilder urlBuilder = new StringBuilder("http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList"); /*URL*/
        urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") + "=sWi23NfHCswD2JLkVzlAjWdx84T9hH%2B4%2BgYdeHg5rakMR397CZtjr1hoq8Mo56LMzSCjxrlMzLEkI0Bi%2FwFQ0Q%3D%3D"); /*Service Key*/
        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*현재 페이지 번호*/
        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("250", "UTF-8")); /*한 페이지 결과 수*/
        urlBuilder.append("&" + URLEncoder.encode("MobileApp","UTF-8") + "=" + URLEncoder.encode("AppTest", "UTF-8")); /*서비스명=어플명*/
        urlBuilder.append("&" + URLEncoder.encode("MobileOS","UTF-8") + "=" + URLEncoder.encode("ETC", "UTF-8")); /*IOS (아이폰), AND (안드로이드),WIN (원도우폰), ETC*/
        urlBuilder.append("&" + URLEncoder.encode("arrange","UTF-8") + "=" + URLEncoder.encode("A", "UTF-8")); /*(A=제목순, B=조회순, C=수정일순, D=생성일순) , 대표이미지가 반드시 있는 정렬 (O=제목순, P=조회순, Q=수정일순, R=생성일순)*/
        urlBuilder.append("&" + URLEncoder.encode("cat1","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*대분류 코드*/
        urlBuilder.append("&" + URLEncoder.encode("contentTypeId","UTF-8") + "=" + URLEncoder.encode("12", "UTF-8")); /*관광타입(관광지, 숙박 등) ID*/
        urlBuilder.append("&" + URLEncoder.encode("listYN","UTF-8") + "=" + URLEncoder.encode("Y", "UTF-8")); /*목록 구분 (Y=목록, N=개수)*/
        URL url = new URL(urlBuilder.toString());
        
        System.out.println(url);
        
        try {
			int k=1;
			Document doc = Jsoup.connect("http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList"
					+ "?serviceKey=sWi23NfHCswD2JLkVzlAjWdx84T9hH%2B4%2BgYdeHg5rakMR397CZtjr1hoq8Mo56LMzSCjxrlMzLEkI0Bi%2FwFQ0Q%3D%3D&pageNo=1&numOfRows=250&MobileApp=AppTest&MobileOS=ETC&arrange=A&cat1=&contentTypeId=12&listYN=Y").get();
			Elements all = doc.select("item");
			Elements el = doc.getElementsByAttribute("firstimage");
			
//			Elements row = doc.select("item");
//			for(Element row2 : row){
//				Iterator<Element> it = row2.getElementsByTag("title").iterator();
//				while(it.hasNext()) {
//					String title = it.next().text();
//					System.out.println(title);
//					}
//				} 
			Elements eltitle = all.select("title");
			Elements eladdress = all.select("addr1");
			Elements elfirstImg = all.select("firstimage");
			Elements elsecondImg = all.select("firstimage2");
			Elements elmapX = all.select("mapx");
			Elements elmapY = all.select("mapy");
			
			for(int i=0; i<200; i++) {
				
				String htmlTmp = all.get(i).html();
				if (!(htmlTmp.contains("firstimage"))) {
					Element elImg = new Element("firstimage");
					elfirstImg.add(i, elImg);
					System.out.println("noimage");
				}
				if (!(htmlTmp.contains("firstimage2"))) {
					Element elImg = new Element("firstimage2");
					elsecondImg.add(i, elImg);
					System.out.println("noimage2");
				}
				
				String title = eltitle.get(i).text();
				String address = eladdress.get(i).text();
				String firstImg = elfirstImg.get(i).text();
				String secondImg = elsecondImg.get(i).text();
				String mapX = elmapX.get(i).text();
				String mapY = elmapY.get(i).text();
				
				
				System.out.println("번호 : " + (i+1));
				
				DesDataDTO dto = new DesDataDTO();
				dto.setTitle(title);
				dto.setAddress(address);
				dto.setFirstImg(firstImg);
				dto.setSecondImg(secondImg);
				dto.setMapX(mapX);
				dto.setMapY(mapY);
				
				System.out.println(dto.getTitle());
				System.out.println(dto.getAddress());
				System.out.println(dto.getFirstImg());
				System.out.println(dto.getSecondImg());
				System.out.println(dto.getMapX());
				System.out.println(dto.getMapY());
			}		
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}