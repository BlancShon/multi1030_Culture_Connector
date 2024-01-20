package com.multi.mvc.culture.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.api.ApiParsing;
import com.multi.mvc.culture.model.mapper.CourseMapper;
import com.multi.mvc.culture.model.vo.Course;

@Service
public class CourseService {

	
	
	@Autowired
	private CourseMapper mapper;
	
	public void dropTable() {
		mapper.deleteTableCourse();
	}
	
	public void createTable() {
		mapper.createTableCourse();
	}
	
	public void initCourse() {
		mapper.initCourse(ApiParsing.listBySidoGroups(Course.class));
	}
	
	public int count() {
		return mapper.selectCount();
	}
}
