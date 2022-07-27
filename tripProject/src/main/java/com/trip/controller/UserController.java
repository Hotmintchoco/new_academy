package com.trip.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.trip.domain.UserVO;
import com.trip.mapper.UserMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/users/*")
public class UserController {
	private UserMapper mapper;
	
	@GetMapping("login.do")
	public String loginView(Model model) {
		log.info("-------login Page---------");
		return "users/login";
	}
	
	@PostMapping("login.do")
	public String login(Model model, UserVO vo, HttpSession session) {
		log.info("-------login 실행---------");
		log.info(vo.getAdmin());
		log.info(vo.getUserId());
		log.info(vo.getUserPass());
		UserVO user = mapper.read(vo);
		log.info(user);
		if (user != null) {
			session.setAttribute("user", user);
			return "redirect:/home.do";
		}
		model.addAttribute("message", "잘못된 회원정보입니다.");
		return "users/login";
	}
	
	@GetMapping("join.do")
	public String joinView() {
		log.info("-------join Page---------");
		return "users/join";
	}
	
	@PostMapping("join.do")
	public String join(Model model, UserVO vo) {
		log.info("-------join---------");
		log.info(vo.getUserId());
		log.info(vo.getUserName());
		log.info(vo.getUserPass());
		log.info(vo.getBirth());
		
		String birth = vo.getBirth();
		birth = birth.replace(",", "");
		if(birth.length() < 8) {
			birth = birth.substring(0, 6) + 0 + birth.substring(6);
			vo.setBirth(birth);
		}
		log.info(vo.getBirth());
		log.info(vo.getEmail());
		mapper.insert(vo);
		log.info("-------- user insert ------------");
		return "redirect:/users/login.do";
	}
	
	@GetMapping("idFind.do")
	public String idFindView(Model model) {
		log.info("-------idFind Page---------");
		return "users/idFind";
	}
	
	@GetMapping("pwFind.do")
	public String pwFindView(Model model) {
		log.info("-------pwFind Page---------");
		return "users/pwFind";
	}
	
	
	@RequestMapping("list.do")
	public void list(Model model) {
		log.info("list");
		model.addAttribute("list", mapper.getList());
	}
}