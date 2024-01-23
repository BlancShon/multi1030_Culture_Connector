package com.multi.mvc.culture.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.mvc.culture.model.service.EventService;
import com.multi.mvc.culture.model.vo.Event;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/event")
public class EventController {
	
	@Autowired
	private EventService service;
	
	
//	@Bean(initMethod = "initEvent")
	public void initEvent() {
		log.info("Event Controller 확인");
		
//		service.createTable();
//		if(service.count() == 0) {
//			service.initEvent();
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
		List<Event> list = service.getListForDB();
		model.addAttribute("list",list);
		return "test/eventList";
	}
	@GetMapping("/createTable")
	public String createTable() {
		service.createTable();
		return "redirect:/dbsave";
	}
	
	@GetMapping("/list")
	public String eventList(Model model) {
		log.debug("Event Controller list 확인");
		List<Event> list = service.getEventTable();
		model.addAttribute("eventList", list);
		
		return "culture/eventList";
	}
}
