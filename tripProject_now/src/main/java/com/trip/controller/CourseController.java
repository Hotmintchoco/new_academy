package com.trip.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.trip.domain.CourseVO;
import com.trip.domain.DesAndCourseVO;
import com.trip.domain.DesDataDTO;
import com.trip.mapper.CourseMapper;
import com.trip.mapper.DesDataMapper;
import com.trip.mapper.UserMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/course/*")
public class CourseController {
	private CourseMapper courseMapper;
	private DesDataMapper desMapper;
	
	@RequestMapping("list.do")
	public String list(Model model) {
		List<CourseVO> list = courseMapper.getList();
		int i = 0;
		for (CourseVO vo : list) {
			log.info(vo);
			int courseNum = list.get(i).getCourseNum();
			List<DesAndCourseVO> desNumList = courseMapper.getDesList(courseNum);
			List<DesDataDTO> desList;
			for(DesAndCourseVO destinations : desNumList) {
				log.info(destinations);
				
			}
			
			
			i++;
		}
		model.addAttribute("list", list);
		log.info("------- courseList -------");
		return "course/courseList";
	}
	
	@RequestMapping("page.do")
	public String page(Model model) {
		log.info("------- coursePage -------");
		return "course/coursePage";
	}
	
}