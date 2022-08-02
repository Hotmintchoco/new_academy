package com.trip.controller.user;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.trip.domain.UserVO;
import com.trip.mapper.UserMapper;
import com.trip.service.UserService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/users/*")
public class UserController {
	private UserService serivce;
	
	@GetMapping("login.do")
	public String loginView() {
		log.info("-------login Page---------");
		return "users/login";
	}
	
	@PostMapping("login.do")
	public String login(Model model, UserVO vo, HttpSession session) {
		log.info("-------login 실행---------");
		UserVO user = serivce.login(vo);
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
	public String join(UserVO vo) {
		log.info("-------join---------");
		log.info(vo.getUserName());
		String birth = vo.getBirth();
		log.info(birth);
		birth = birth.replace(",", "");
		log.info(birth);
		if(birth.length() < 8) {
			birth = birth.substring(0, 6) + 0 + birth.substring(6);
			log.info(birth);
			vo.setBirth(birth);
		}
		vo.setBirth(birth);
		serivce.register(vo);
		log.info("-------- user insert ------------");
		return "redirect:/users/login.do";
	}
	
	@RequestMapping("idFind.do")
	public String idFindView() {
		log.info("-------idFind Page---------");
		return "users/idFind";
	}
	
	@GetMapping("idFindList.do")
	public String idFind(Model model, UserVO vo) {
		log.info("------- idFind ---------");
		List<UserVO> list = serivce.idList(vo);
		log.info(list.isEmpty());
		
		model.addAttribute("list", list);
		
		if(list.isEmpty() == true) {
			model.addAttribute("list", null);
		}
		return "users/userIncludes/idFindList";
	}
	
	@RequestMapping("pwFind.do")
	public String pwFindView() {
		log.info("-------pwFind Page---------");
		return "users/pwFind";
	}
	
	@RequestMapping("passwordFind.do")
	public String pwFind(Model model, UserVO vo) {
		log.info("------- passwordFind ---------");
		UserVO user = serivce.findPassword(vo);
		UserVO rightId = serivce.getId(vo);
		
		model.addAttribute("user", user);
		model.addAttribute("id", rightId);
		
		return "users/userIncludes/findPassword";
	}
	
	
	@RequestMapping("list.do")
	public void list(Model model) {
		log.info("list");
		model.addAttribute("list", serivce.getUserList());
	}
	
	@RequestMapping("mypage.do")
	public String mypage(Model model) {
		log.info("-------- mypage -----------");
		return "users/mypage";
	}
	
	@GetMapping("withdraw.do")
	public String withdraw(UserVO vo, HttpSession session) {
		log.info(vo.getUserNum());
		serivce.remove(vo.getUserNum());
		session.invalidate();
		return "redirect:/home.do";
	}
	@GetMapping("modify.do")
	public String modifyPage() {
		log.info("------ modifyPage ------");
		return "users/modify";
	}
	
	@PostMapping("modify.do")
	public String modify(UserVO vo, HttpSession session) {
		log.info(vo);
		serivce.modify(vo);
		
		UserVO user = serivce.get(vo.getUserNum());
		session.setAttribute("user", user);
		return "users/mypage";
	}
}