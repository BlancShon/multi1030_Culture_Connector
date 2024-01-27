package com.multi.mvc.culture.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.culture.model.vo.Course;
import com.multi.mvc.culture.model.vo.course.CourseParam;

@Mapper
public interface CourseMapper {
	
	void createTableCourse();
	
	int selectCount();

	List<Course> selectTable();

	int insertCourse(Course item);

	List<Course> selectCourseList(CourseParam param);

	int selectCourseCount(CourseParam param);
	
	Course selectById(int contentid);

}
