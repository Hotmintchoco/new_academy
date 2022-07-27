package com.trip.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.trip.mapper.UserMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/users/*")
public class UserController {
	private UserMapper mapper;
	
	@RequestMapping("list.do")
	public void list(Model model) {
		log.info("list");
		model.addAttribute("list", mapper.getList());
	}
	
	@GetMapping("login.do")
	public String login(Model model) {
		log.info("-------login Page---------");
		return "users/login";
	}
	
}