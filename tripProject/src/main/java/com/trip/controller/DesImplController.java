package com.trip.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.trip.domain.CityVO;
import com.trip.domain.Criteria;
import com.trip.domain.DestinationImplData;
import com.trip.domain.FesDataDTO;
import com.trip.domain.PageDTO;
import com.trip.mapper.DestinationImplMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/desImpl/*")
public class DesImplController {
	
	private DestinationImplMapper mapper;
	
	@GetMapping("list.do")
	public String list(Criteria cri, Model model, String desCity) {
		log.info("지역 : " + desCity);
		List<DestinationImplData> list = new ArrayList<>();

		CityVO city = new CityVO();
		city.setAddress(desCity);
		log.info(city.getAddress());
		city.setPageNum(cri.getPageNum());
		city.setAmount(cri.getAmount());
		
		list = searchCityList(list, desCity, city);
		
		if(city.getAddress() == null) {
			log.info("---------- 전체 list 조회-------------");
			list = mapper.getList(cri);
		}
		
		int total = mapper.getTotalCount(city);
		
		log.info("list :" + list);
		log.info("total :" + total);
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", new PageDTO(cri, total, city));
		
		return "/desImpl/list";
	}
	
	@GetMapping("get.do")
	   public String read(@RequestParam("num") int num, Model model) {
			DestinationImplData data = mapper.get(num);
			model.addAttribute("data", data);
	      return "/desImpl/get";
	   }
	
	public List<DestinationImplData> searchCityList(List<DestinationImplData> list, String desCity, CityVO city) {
		if (desCity != null) {
			switch (desCity) {
			case "경기":
				city.setCity("인천");
				log.info(city.getAddress());
				list = mapper.getAddressList(city);
				log.info(list.get(0));
				break;
			case "충청북":
				city.setCity("세종");
				list = mapper.getAddressList(city);
				break;
			case "충청남":
				city.setCity("대전");
				list = mapper.getAddressList(city);
				break;
			case "경상북":
				city.setCity("대구");
				list = mapper.getAddressList(city);
				break;
			case "경상남":
				city.setCity("울산 부산");
				list = mapper.getAddressList(city);
				break;
			case "전라남":
				city.setCity("광주");
				list = mapper.getAddressList(city);
				break;
			default:
				log.info("------ default --------");
				list = mapper.getAddressList(city);
			}
		}
		
		return list;
	}

}
