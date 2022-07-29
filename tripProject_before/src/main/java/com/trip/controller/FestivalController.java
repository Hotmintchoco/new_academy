package com.trip.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.trip.mapper.FesDataMapper;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping(value="/festival")
public class FestivalController {
	private FesDataMapper mapper;
	

	
	
	@GetMapping("page.do")
	public String list(Model model) {
		return "festival/festival";
	}
}
		
	
