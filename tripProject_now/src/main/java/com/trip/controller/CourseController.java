package com.trip.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.trip.domain.DesAndCourseVO;
import com.trip.mapper.CourseMapper;
import com.trip.mapper.UserMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/course/*")
public class CourseController {
	private CourseMapper mapper;
	
	@RequestMapping("list.do")
	public String list(Model model) {
		List<DesAndCourseVO> list = mapper.getList();
		for (DesAndCourseVO vo : list) {
			System.out.println(vo);
		}
		log.info("------- courseList -------");
		return "course/courseList";
	}
	
	@RequestMapping("page.do")
	public String page(Model model) {
		log.info("------- coursePage -------");
		return "course/coursePage";
	}
	
}