package com.trip.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.trip.domain.Criteria;
import com.trip.domain.DesDataDTO;
import com.trip.domain.FesDataDTO;
import com.trip.domain.PageDTO;
import com.trip.mapper.FesDataMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping(value = "/festival/*")
public class FestivalController {
	private FesDataMapper mapper;

	@GetMapping("page.do")
	public String list(Criteria cri, Model model, String fesCity) {
		int total = mapper.getTotalCount(cri);
		log.info("여행지 : " + fesCity);
		List<FesDataDTO> list = mapper.getListWithPagging(cri);

		if (fesCity != null) {
		switch (fesCity) {
		case "경기":
			list = mapper.getAddressListggd(fesCity);
			break;
		case "충청북":
			list = mapper.getAddressListcb(fesCity);
			break;
		case "충청남":
			list = mapper.getAddressListcn(fesCity);
			break;
		case "경상북":
			list = mapper.getAddressListgb(fesCity);
			break;
		case "경상남":
			list = mapper.getAddressListgn(fesCity);
			break;
		case "전라남":
			list = mapper.getAddressListgn(fesCity);
			break;
		default:
			list = mapper.getAddressList(fesCity);
		}
	}
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		
		
		
		return "festival/festival";
	}

	@GetMapping(value = "detail.do")
	   public String read(@RequestParam("num") int num, Model model) {
//	      System.out.println(num);
	      FesDataDTO dto = mapper.selectOne(num);
	      model.addAttribute("data",dto);
//	      model.addAttribute("data", dto);
	      return "/festival/list";
	   }
}
