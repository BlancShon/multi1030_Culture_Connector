package com.multi.mvc.culture.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.culture.model.vo.Course;

@Mapper
public interface CourseMapper {
	void deleteTableCourse();
	
	void createTableCourse();
	
	void initCourse(List<Course> list);
	
	int selectCount();
}
