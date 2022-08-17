package com.trip.mapper;

import java.util.List;

import com.trip.domain.CourseVO;
import com.trip.domain.DesAndCourseVO;

public interface CourseMapper {
	public List<CourseVO> getList();
	public List<CourseVO> getCityList(String city);
	public List<DesAndCourseVO> getDesList(int courseNum);
	public CourseVO readCourse(int courseNum);
	public int likesCourse(int courseNum);
}
