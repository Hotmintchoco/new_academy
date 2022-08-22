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
import com.trip.domain.DestinationImplData;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class HotelDataMapperTest {
	@Autowired
	private DestinationImplMapper mapper;
	
	@Test
	public void testInsert() throws IOException {
        try {
			Document doc = Jsoup.connect("http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList"
					+ "?serviceKey=sWi23NfHCswD2JLkVzlAjWdx84T9hH%2B4%2BgYdeHg5rakMR397CZtjr1hoq8Mo56LMzSCjxrlMzLEkI0Bi%2FwFQ0Q%3D%3D&pageNo=1&numOfRows=2610&MobileApp=AppTest&MobileOS=ETC&arrange=B&cat1=&contentTypeId=32&listYN=Y").get();
			Elements all = doc.select("item");
			
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
			Elements elmapX = all.select("mapx");
			Elements elmapY = all.select("mapy");
			Elements elmLevel = all.select("mlevel");
			Elements eltel = all.select("tel");
			
			for(int i=0; i<2610; i++) {
				
				String htmlTmp = all.get(i).html();
				if (!(htmlTmp.contains("firstimage"))) {
					Element elImg = new Element("firstimage");
					elfirstImg.add(i, elImg);
					System.out.println("noimage");
				}
				
				String title = eltitle.get(i).text();
				String address = eladdress.get(i).text();
				String firstImg = elfirstImg.get(i).text();
				String mapX = elmapX.get(i).text();
				String mapY = elmapY.get(i).text();
				String mLevel = elmLevel.get(i).text();
				String tel = eltel.get(i).text();
				
				
				log.info("¹øÈ£ : " + (i+1));
				
				DestinationImplData dto = new DestinationImplData();
				dto.setTitle(title);
				dto.setAddress(address);
				dto.setFirstimg(firstImg);
				dto.setMapx(mapX);
				dto.setMapy(mapY);
				
				if(tel.contains("<br />")) {
					tel = tel.replaceAll("<br />", " / ");
				}
				dto.setTel(tel);
				dto.setType(1);
				if(elmLevel.get(i).text().length() > 0) {
					dto.setMlevel(Integer.parseInt(mLevel));
				}
				
				
				log.info(dto.getTitle());
				log.info(dto.getAddress());
				log.info(dto.getFirstimg());
				log.info(dto.getMapx());
				log.info(dto.getMapy());
				log.info(dto.getMlevel());
				log.info(dto.getTel());
				mapper.insert(dto);
			}		
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}