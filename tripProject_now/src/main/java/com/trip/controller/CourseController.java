package com.trip.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.trip.domain.CourseVO;
import com.trip.domain.DesAndCourseVO;
import com.trip.domain.DesDataDTO;
import com.trip.mapper.CourseMapper;
import com.trip.mapper.DesDataMapper;

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
		
		List<CourseVO> list = courseMapper.getList();	//코스 리스트를 list에 담는다.
		int i = 0;
		
		for (CourseVO vo : list) {
			log.info(vo);
			int courseNum = list.get(i).getCourseNum();
			List<DesAndCourseVO> desNumList = courseMapper.getDesList(courseNum);
			List<DesDataDTO> desList = new ArrayList<DesDataDTO>(); //여행지 리스트를 desList에 담는다.(코스VO의 desList에 담기위해 생성)
			for(DesAndCourseVO destinations : desNumList) {
				log.info(destinations);
				Long long1 = (long) destinations.getDestinationNum();
				DesDataDTO dto = desMapper.read(long1);
				desList.add(dto);
			}
			
			list.get(i).setDesList(desList); // 여행지 리스트를 List객체값을 setter 메소드를 통해 채워준다.
			i++;
		}
		model.addAttribute("list", list);
		log.info("------- courseList -------");
		return "course/courseList";
	}
	
	@RequestMapping("page.do")
	public String page(Model model, int num) {
		log.info("------- coursePage -------");
		
		CourseVO vo = courseMapper.readCourse(num);
		
		List<DesAndCourseVO> desNumList = courseMapper.getDesList(num);
		List<DesDataDTO> desList = new ArrayList<DesDataDTO>(); //여행지 리스트를 desList에 담는다.(코스VO의 desList에 담기위해 생성)
		for(DesAndCourseVO destinations : desNumList) {
			log.info(destinations);
			Long long1 = (long) destinations.getDestinationNum();
			DesDataDTO dto = desMapper.read(long1);
			desList.add(dto);
		}
		vo.setDesList(desList);
		log.info(vo);
		
		model.addAttribute("course", vo);
		model.addAttribute("desList", vo.getDesList());
		return "course/coursePage";
	}
	
	@GetMapping(value = "/page/{num}",
			produces = {MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE})
	public ResponseEntity<List<DesDataDTO>> desList(@PathVariable("num") int num) {
		log.info("getList.........." + num);
		
		List<DesAndCourseVO> desNumList = courseMapper.getDesList(num);
		List<DesDataDTO> desList = new ArrayList<DesDataDTO>(); //여행지 리스트를 desList에 담는다.(코스VO의 desList에 담기위해 생성)
		for(DesAndCourseVO destinations : desNumList) {
			log.info(destinations);
			Long long1 = (long) destinations.getDestinationNum();
			DesDataDTO dto = desMapper.read(long1);
			desList.add(dto);
		}
		
		return new ResponseEntity<>(desList, HttpStatus.OK);
	}
	
}