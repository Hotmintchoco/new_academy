package com.trip.mapper;

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
        try {
			Document doc = Jsoup.connect("http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList"
					+ "?serviceKey=sWi23NfHCswD2JLkVzlAjWdx84T9hH%2B4%2BgYdeHg5rakMR397CZtjr1hoq8Mo56LMzSCjxrlMzLEkI0Bi%2FwFQ0Q%3D%3D&pageNo=1&numOfRows=250&MobileApp=AppTest&MobileOS=ETC&arrange=B&cat1=&contentTypeId=12&listYN=Y").get();
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
				
				
				System.out.println("¹øÈ£ : " + (i+1));
				
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
				mapper.insert(dto);
			}		
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}