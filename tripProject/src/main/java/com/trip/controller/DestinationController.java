package com.trip.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

import org.apache.tomcat.util.http.fileupload.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.JsonObject;
import com.trip.domain.Criteria;
import com.trip.domain.DesDataDTO;
import com.trip.domain.PageDTO;
import com.trip.mapper.DesDataMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/destination/*")
public class DestinationController {
	private DesDataMapper mapper;
	
	@GetMapping("list.do")
	public String list(Criteria cri, Model model) {
		int total = mapper.getTotalCount(cri);
		model.addAttribute("list", mapper.getListWithPagging(cri));
		model.addAttribute("pageMaker",new PageDTO(cri, total));
		return "destination/destination3";
		
	}
	
	@GetMapping("/register.do")
	public String register() {
		return "destination/destinationInsert";
	
	}
	
	@PostMapping("/register.do")
	public String register(DesDataDTO vo, RedirectAttributes rttr) {
		log.info("register : " + vo);
		mapper.register(vo);
		rttr.addFlashAttribute("result", vo.getNum());
		return "redirect:/destination/destination";
	}

	@GetMapping({"/get.do","/modify.do"})
	public String get(Long num, @ModelAttribute("cri") Criteria cri, Model model) {
		log.info("-----------------get or modify-----------------");
		model.addAttribute("destination", mapper.read(num));
		return "destination/destinationGet";
	}	
}
