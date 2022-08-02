package com.trip.controller;

import java.io.File;
import java.io.IOException;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	public String register(DesDataDTO dto, RedirectAttributes rttr) {
		log.info("register : " + dto);
		mapper.register(dto);
		rttr.addFlashAttribute("result", dto.getNum());
		return "redirect:/destination/list.do";
	}

	@GetMapping({"/get.do"})
	public String get(Long num, @ModelAttribute("cri") Criteria cri, Model model) {
		log.info("-----------------get or modify-----------------");
		model.addAttribute("destination", mapper.read(num));
		return "destination/destinationGet";
	}
	@GetMapping({"/update.do"})
	public String update(Long num, @ModelAttribute("cri") Criteria cri, Model model) {
		log.info("-----------------get or modify-----------------");
		model.addAttribute("destination", mapper.read(num));
		return "destination/destinationModify";
	}
	
	@PostMapping({"/update.do"})
	public String modify(DesDataDTO dto, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
		log.info("modify : " + dto);
		if( mapper.update(dto) == 1) {
			rttr.addFlashAttribute("result", "success");
		}
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		return "redirect:/destination/list.do";
	}
	
	@PostMapping("/delete.do")
	public String delete(Long num, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
		log.info("delete---------" + num);
		if(mapper.delete(num)==1) {
			rttr.addFlashAttribute("result", "success");
		}
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		return "redirect:/destination/list.do";
	}
	
	@RequestMapping(value="resources/summerimages", method=RequestMethod.POST)
	public ResponseEntity<?> summerimage(@RequestParam("file") MultipartFile img, HttpServletRequest request) throws IOException {
		String path = request.getServletContext().getRealPath("destination/img");
		Random random = new Random();
	
		long currentTime = System.currentTimeMillis();
		int	randomValue = random.nextInt(100);
		String fileName = Long.toString(currentTime) + "_"+randomValue+"_a_"+img.getOriginalFilename();
		
		File file = new File(path , fileName);
		img.transferTo(file);
		return ResponseEntity.ok().body("destination/img/"+fileName);

	}
}