package com.trip.mapper;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.trip.domain.CourseVO;
import com.trip.domain.DesAndCourseVO;
import com.trip.domain.DesDataDTO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class CourseMapperTests {
	@Autowired
	private CourseMapper courseMapper;
	@Autowired
	private DesDataMapper desMapper;
	
	@Test
	public void test() {
		List<CourseVO> list = courseMapper.getList();
		int i = 0;
		for (CourseVO vo : list) {
			log.info(vo);
			int courseNum = list.get(i).getCourseNum();
			List<DesAndCourseVO> desNumList = courseMapper.getDesList(courseNum);
			List<DesDataDTO> desList = new ArrayList<DesDataDTO>();
			for (DesAndCourseVO destinations : desNumList) {
				log.info(destinations);
				Long long1 = (long) destinations.getDestinationNum();
				DesDataDTO dto = desMapper.read(long1);
				log.info(dto);
				desList.add(dto);
			}
			list.get(i).setDesList(desList);
			i++;
		}
		log.info("------- courseList -------");
	}
}