package com.multi.mvc.culture.controller;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.culture.model.service.EventService;
import com.multi.mvc.culture.model.vo.Event;
import com.multi.mvc.culture.model.vo.EventParam;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class EventController {
	
	
	@Autowired
	private EventService service;
	
	private Event event;
	
	
//	@Bean(initMethod = "initEvent")
	public void initEvent() {
		log.info("Event Controller 확인");
		
//		service.createTable();
//		if(service.count() == 0) {
//			service.initEvent();
//		}
	}
	
	// 아래 세개는 디비 주입 확인을 위한 메소드입니다
	@PostMapping("/event/dataSave")
	public String dataSaveForDB(@RequestParam("name") String name) {
		if(service.count() == 0) {
			service.saveData(name);
		}
		return "redirect:/dbsave";
	}
	@GetMapping("/event/listForDB")
	public String listForDB(Model model) {
		List<Event> list = service.getListForDB();
		model.addAttribute("list",list);
		return "test/eventList";
	}
	@GetMapping("/event/createTable")
	public String createTable() {
		service.createTable();
		return "redirect:/dbsave";
	}
	
	@GetMapping("/event/list")
	public String eventList(Model model) {
		log.debug("Event Controller list 확인");
		List<Event> list = service.getEventTable();
		model.addAttribute("eventList", list);
		
		return "culture/eventList";
	}
	
	// 아래는 event 관련데이터를 cultureTheme2.jsp에 보내는 메소드

	@GetMapping("/cultureTheme2")
	public String cultureTheme2(Model model, EventParam param, @RequestParam(name = "useLatest", required = false) Boolean useLatest) {
		log.info("cultureTheme2 request");
		
		if (Boolean.TRUE.equals(useLatest)) {
	        // If the condition is met, fetch the latest 10 events
	        List<Event> latestEvents = service.selectEventListWithTime();
	        if (latestEvents != null) { // 추가된 null 체크
	            model.addAttribute("lists", latestEvents);
	        }
	    } else {
			int eventCount = service.getEventCount(param);
			PageInfo pageInfo = new PageInfo(param.getPage(), 6, eventCount, 8); // page가 보여질 갯수 : 10, 게시글 목록은 12개
			param.setLimit(pageInfo.getListLimit());
			param.setOffset(pageInfo.getStartList() - 1);
			List<Event> list = service.getEventList(param);
			
			if (list != null) { // 추가된 null 체크
	            model.addAttribute("pageInfo", pageInfo);
	            model.addAttribute("lists", list);
	        }
	    }
		model.addAttribute("param", param);
		model.addAttribute("typeList", param.getTypeList());
		
		return "culture/cultureTheme2";
	}
	
	@GetMapping("/getEventDetails")
	@ResponseBody
	public Event getEventDetails(@RequestParam("areacode") String areacode) {
	    // Fetch event details based on areacode
	    Event event = service.getEventDetailsByAreacode(areacode);
	    return event;
	}
	
	
	@RequestMapping("/event/detail")
	public String detailView(Model model, @RequestParam("contentid") int contentid) {
		
		try {
			event = service.findEventByContentId(contentid);
			System.out.println("event = " + event);
		} catch (Exception e) {}
		if(event == null) {
			return "redirect:error";
		}
		
		model.addAttribute("event", event);
		model.addAttribute("contentid", event.getContentid());
		model.addAttribute("overview", event.getOverview());
		
		return "culture/eventDetail";
	}
	
	
	
}
