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

import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.culture.model.service.FestivalService;
import com.multi.mvc.culture.model.vo.Event;
import com.multi.mvc.culture.model.vo.Festival;
import com.multi.mvc.culture.model.vo.FestivalParam;
import com.multi.mvc.culture.model.vo.Food;
import com.multi.mvc.culture.model.vo.FoodParam;
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
	
	@RequestMapping("/FestivalSearch")
	public String FestivalList(Model model, FestivalParam param) {
		System.out.println("@@ festival list 요청 param : " + param);
		
		int festivalCount = service.getFestivalCount(param);
//			PageInfo pageInfo = new PageInfo(param.getPage(), 10, boardCount, 15); // page가 보여질 갯수 : 10, 게시글 목록은 15개
		PageInfo pageInfo = new PageInfo(param.getPage(), 10, festivalCount, 12); // page가 보여질 갯수 : 10, 게시글 목록은 12개
		param.setLimit(pageInfo.getListLimit());
		param.setOffset(pageInfo.getStartList() - 1);
		List<Festival> list = service.getFestivalSearchList(param);
		
		System.out.println(list);
		System.out.println(param.getFestivaltypeList());
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("list", list);
		model.addAttribute("localtypeList", param.getLocaltypeList());
		model.addAttribute("festivaltypeList", param.getFestivaltypeList());
		model.addAttribute("size", list.size());		
		model.addAttribute("param", param);
		
		return "/culture/cultureTheme3";
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
