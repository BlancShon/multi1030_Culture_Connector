package com.multi.mvc.culture.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.multi.mvc.api.ApiParsing;
import com.multi.mvc.culture.model.service.FestivalService;
import com.multi.mvc.culture.model.vo.Event;
import com.multi.mvc.culture.model.vo.Festival;
import com.multi.mvc.culture.model.vo.SearchForm;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/festival")
public class FestivalController {

	@Autowired
	private FestivalService service;
	
	
	
	@Bean(initMethod = "init1")
	public void init1() {
		log.debug("Festival Controller init 확인");
		
		service.createTable();
		if(service.count() == 0) {
			service.initFestival();
		}
	}
	
	@GetMapping("/list")
	public String festivalList(Model model) {
		log.debug("Controller list 확인");
		List<Festival> list = service.getFestivalTable();
		model.addAttribute("festivalList", list);
		
		return "culture/festivalList";
	}
	

	@GetMapping("/searchTestList")
	public String testList(Model model, @ModelAttribute SearchForm searchForm) {
		List<Festival> testList = service.getTestList(searchForm);
		model.addAttribute("testList", testList);
		
		return "culture/testList";
	}
	
}
