package com.multi.mvc.culture.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.mvc.culture.model.service.CourseService;
import com.multi.mvc.culture.model.vo.Course;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/course")
public class CourseController {
	
	@Autowired
	private CourseService service;
	
	
//	@Bean(initMethod = "init5")
	public void init5() {
		log.debug("Course Controller 확인");
		
//		service.createTable();
//		if(service.count() == 0) {
//			service.initCourse();
//		}
	}
	
	// 아래 세개는 디비 주입 확인을 위한 메소드입니다
		@PostMapping("/dataSave")
		public String dataSaveForDB(@RequestParam("name") String name) {
			if(service.count() == 0) {
				service.saveData(name);
			}
			return "redirect:/dbsave";
		}
		@GetMapping("/listForDB")
		public String listForDB(Model model) {
			List<Course> list = service.getListForDB();
			model.addAttribute("list",list);
			return "test/courseList";
		}
		@GetMapping("/createTable")
		public String createTable() {
			service.createTable();
			return "redirect:/dbsave";
		}
	
	@GetMapping("/list")
	public String courseList(Model model) {
		List<Course> list = service.getCourseTable();
		model.addAttribute("courseList", list);
		
		return "culture/courseList";
	}
}
