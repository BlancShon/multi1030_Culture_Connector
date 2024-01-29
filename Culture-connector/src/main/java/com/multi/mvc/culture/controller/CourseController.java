package com.multi.mvc.culture.controller;

import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.culture.model.service.CourseService;
import com.multi.mvc.culture.model.vo.AreaCodes;
import com.multi.mvc.culture.model.vo.Course;
import com.multi.mvc.culture.model.vo.course.CourseCategory;
import com.multi.mvc.culture.model.vo.course.CourseParam;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/course")
public class CourseController {
	
	@Autowired
	private CourseService service;
	private Course course;
	
	private static Vector<CourseCategory> categoryList;
	private static Vector<AreaCodes> areaList;
	private static ConcurrentHashMap<String, String> typeMap; 
	private static ConcurrentHashMap<String, String> areaMap;
	
	@Bean(initMethod = "initCourse")
	public void initCourse() {
		log.debug("Course Controller 확인");
		categoryList = service.getCategoryList();
		typeMap = new ConcurrentHashMap<String, String>();
		for(CourseCategory item : categoryList) {
			typeMap.put(item.getName(), item.getCode());
		}
		
		areaList = service.getAreaList();
		areaMap = new ConcurrentHashMap<String, String>();
		for(AreaCodes item : areaList) {
			areaMap.put(item.getName(), item.getCode());
		}
		
	}
	
	// 아래 세개는 디비 주입 확인을 위한 메소드입니다
		@PostMapping("/dataSave")
		public String dataSaveForDB(@RequestParam("name") String name, @RequestParam("page") String page) {
			service.createTable();	
			service.saveData(name, page);
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
	
	@RequestMapping("/list")
	public String courseList(CourseParam param, Model model) {
		int courseCount = service.getCourseCount(param);
		PageInfo pageInfo = new PageInfo(param.getPage(), 10, courseCount, 12);
		param.setLimit(pageInfo.getListLimit());
		param.setOffset(pageInfo.getStartList() - 1);
		List<Course> list = service.getCourseList(param);
		
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("list", list);
		model.addAttribute("categoryList", categoryList);
		model.addAttribute("areaList", areaList);
		model.addAttribute("areaMap", areaMap);
		model.addAttribute("typeMap", typeMap);
		model.addAttribute("typeList", param.getTypeList());
		model.addAttribute("localTypeList", param.getLocalTypeList());
		model.addAttribute("searchTypeList", param.getSearchTypeList());
		model.addAttribute("param", param);
		model.addAttribute("courseCount", courseCount);

		log.info("여기 서치 타입리스트 정보다 {} ", param.getSearchTypeList());
		return "/culture/cultureNews2";
	}
	
	@GetMapping("/detail")
	public String courseDetail(Model model, @RequestParam("contentid") int contentid) {
		try {
			course = service.getCourse(contentid);
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    
	    if (course == null) {
	        return "redirect:error";
	    }
	
		model.addAttribute("course", course);
		return "/culture/courseDetail";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
