package com.multi.mvc.culture.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.multi.mvc.culture.model.service.EventService;
import com.multi.mvc.culture.model.vo.Event;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/event")
public class EventController {
	
	@Autowired
	private EventService service;
	
//	public static List<Event> list = ApiParsing.parseAndExportToTheList(Event.class);
//	public static List<Event> list = ApiParsing.listBySidoGroups(Event.class);
//	public static List<Event> list = ApiParsing.listBySigunguGroups(Event.class);
//	public static List<Event> list = ApiParsing.eventParseAndExportToTheList(Event.class);
	
	
	
	@Bean(initMethod = "initEvent")
	public void initEvent() {
		log.debug("Event Controller 확인");
		
		service.createTable();
		if(service.count() == 0) {
			service.initEvent();
		}
	}
	
	@GetMapping("/list")
	public String eventList(Model model) {
		log.debug("Event Controller list 확인");
		List<Event> list = service.getEventTable();
		model.addAttribute("eventList", list);
		
		return "culture/eventList";
	}
}
