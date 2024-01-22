package com.multi.mvc.culture.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.multi.mvc.culture.model.service.CourseService;
import com.multi.mvc.culture.model.vo.Course;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/course")
public class CourseController {
	
	@Autowired
	private CourseService service;
	
//	public static List<Course> list = ApiParsing.parseAndExportToTheList(Event.class);
//	public static List<Course> list = ApiParsing.listBySidoGroups(Course.class);
//	public static List<Course> list = ApiParsing.listBySigunguGroups(Event.class);
	
	
	@Bean(initMethod = "init5")
	public void init5() {
		log.debug("Course Controller 확인");
		
		service.createTable();
		if(service.count() == 0) {
			service.initCourse();
		}
	}
	
	@GetMapping("/list")
	public String courseList(Model model) {
		List<Course> list = service.showCourseTable();
		model.addAttribute("courseList", list);
		
		return "culture/courseList";
	}
}
