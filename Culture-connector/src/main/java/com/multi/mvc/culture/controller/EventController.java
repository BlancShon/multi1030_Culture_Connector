package com.multi.mvc.culture.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

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
	public String dataSaveForDB(@RequestParam("name") String name, @RequestParam("page") String page) {
		service.createTable();	
		service.saveData(name, page);
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
	public String latestEvents(Model model) {
	    log.info("Fetching latest events");
	    List<Event> latestEvents = service.selectEventListWithTime();
	    if (latestEvents != null) {
	        log.info("Latest events fetched successfully. Number of events: {}", latestEvents.size());
	        model.addAttribute("list10", latestEvents);
	    } else {
	        log.info("No latest events found");
	    }
	    return "culture/cultureTheme2"; // 최신 이벤트를 보여주는 뷰 이름
	}
	
	// eventSearch에서 실행되야하는 부분
	@GetMapping("/cultureTheme2Search")
	public String cultureTheme2(Model model, EventParam param, @RequestParam("searchValue") Optional<String> searchValue, @RequestParam Optional<String> searchType, @RequestParam(value = "checkBox", required = false) List<String> checkBoxes){
		
		// Set searchType and searchValue in EventParam if present
	    searchType.ifPresent(param::setSearchType);
	    searchValue.ifPresent(param::setSearchValue);
	    
	    // checkBoxes를 EventParam에 설정
	    if (checkBoxes != null) {
	    	param.setCheckBoxes(checkBoxes); // EventParam 클래스에 checkBoxes 필드와 해당 setter 메소드를 추가해야 합니다.
	    	log.info("Received checkBoxes: {}", checkBoxes);
	    } else {
	        log.info("No checkBoxes received");
	    }
	    
	    int eventCount = service.getEventCount(param);
	    PageInfo pageInfo = new PageInfo(param.getPage(), 5, eventCount, 8);
	    param.setLimit(pageInfo.getListLimit());
	    param.setOffset(pageInfo.getStartList() - 1);
	    
	    // Initialize the search results list
	    List<Event> searchResults = service.getEventList(param);
	    
	    if (searchResults != null) {
	        log.info("Events fetched successfully. Number of events: {}", searchResults.size());
	        model.addAttribute("pageInfo", pageInfo);
	        model.addAttribute("list8", searchResults);
	    } else {
	        log.info("No events found for given parameters");
	        model.addAttribute("list8", Collections.emptyList()); // Ensure a non-null model attribute
	    }
	    model.addAttribute("selectedCheckBoxes", checkBoxes);
	    log.info("selectedCheckBoxes: " + checkBoxes);
	    model.addAttribute("param", param);
	    model.addAttribute("typeList", param.getTypeList());
	    // 검색 쿼리도 모델에 추가하여 뷰에서 사용할 수 있도록 함
	    searchValue.ifPresent(q -> model.addAttribute("query", q));
	    
	    return "culture/cultureTheme2Search"; // 기존의 이벤트 리스트를 보여주는 뷰 이름
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
