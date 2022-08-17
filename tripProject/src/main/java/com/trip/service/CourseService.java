package com.trip.service;

import java.util.List;

import com.trip.domain.CourseVO;
import com.trip.domain.DesAndCourseVO;

public interface CourseService {
	public List<CourseVO> getCourseList();
	public List<CourseVO> searchCityList(String city);
	public List<DesAndCourseVO> getDesList(int courseNum);
	public CourseVO getCourse(int courseNum);
	public int likesCourse(int courseNum);
}
