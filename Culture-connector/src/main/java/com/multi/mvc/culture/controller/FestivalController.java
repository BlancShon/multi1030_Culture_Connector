package com.multi.mvc.culture.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	
	
//	@Bean(initMethod = "init1")
	public void init1() {
		log.debug("Festival Controller init 확인");
		
		service.createTable();
//		if(service.count() == 0) {
//			service.initFestival();
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
			List<Festival> list = service.getListForDB();
			model.addAttribute("list",list);
			return "test/festivalList";
		}
		@GetMapping("/createTable")
		public String createTable() {
			service.createTable();
			return "redirect:/dbsave";
		}
	
	@GetMapping("/list")
	public String festivalList(Model model) {
		log.debug("Controller list 확인");
		List<Festival> list = service.getListForDB();
		model.addAttribute("festivalList", list);
		
		return "culture/festivalList";
	}
	

	@GetMapping("/searchTestList")
	public String testList(Model model, @ModelAttribute SearchForm searchForm) {
		List<Festival> testList = service.getTestList(searchForm);
		model.addAttribute("testList", testList);
		
		return "culture/test/testList";
	}
	
}
