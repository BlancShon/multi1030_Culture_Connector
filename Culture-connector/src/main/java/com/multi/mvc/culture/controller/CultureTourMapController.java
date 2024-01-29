package com.multi.mvc.culture.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.multi.mvc.culture.model.service.CultureService;
import com.multi.mvc.culture.model.service.EventService;
import com.multi.mvc.culture.model.service.FestivalService;
import com.multi.mvc.culture.model.service.FoodService;
import com.multi.mvc.culture.model.service.LeisureSportsService;
import com.multi.mvc.culture.model.vo.Culture;
import com.multi.mvc.culture.model.vo.Event;
import com.multi.mvc.culture.model.vo.Festival;
import com.multi.mvc.culture.model.vo.Food;
import com.multi.mvc.culture.model.vo.LeisureSports;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class CultureTourMapController {

	
	private final EventService eventService;
	private final CultureService cultureService;
	private final FestivalService festivalService;
	private final LeisureSportsService leisureSportsService;
	private final FoodService foodService;
    
	@Autowired
	public CultureTourMapController(EventService eventService, CultureService cultureService, FestivalService festivalService, LeisureSportsService leisureSportsService, FoodService foodService) {
		this.eventService = eventService;
		this.cultureService = cultureService;
		this.festivalService = festivalService;
		this.leisureSportsService = leisureSportsService;
		this.foodService = foodService;
	}
    
	@GetMapping("/cultureTourMap")
	public String showCultureTourMap(Model model) {
		log.info("Entering showCultureTourMap method");
		
		try {
            List<Event> events = eventService.getListForMap();
            List<Culture> cultures = cultureService.getListForMap();
            List<Festival> festivals = festivalService.getListForMap();
            List<LeisureSports> leisureSports = leisureSportsService.getListForMap();
            List<Food> foods = foodService.getListForMap();
            
            model.addAttribute("events", events);
            model.addAttribute("cultures", cultures);
            model.addAttribute("festivals", festivals);
            model.addAttribute("leisureSports", leisureSports);
            model.addAttribute("foods", foods);
            
            log.info("CultureTourMap data added to model");
            return "culture/cultureTourMap";
        } catch (Exception e) {
            log.error("Error in showCultureTourMap: {}", e.getMessage(), e);
            return "error";
        }
	}
	
	// AJAX 요청을 처리하는 메소드
    @GetMapping("/cultureTourMap/getCategoryData")
    @ResponseBody
    public ResponseEntity<?> getCategoryData(@RequestParam("category") String category) {
    	log.info("getCategoryData called with category: {}", category);
    	
    	if (category == null || category.trim().isEmpty()) {
            log.warn("Category parameter is empty");
            return ResponseEntity.badRequest().body("Category parameter is required");
        }
    	
    	try {
            // 각 카테고리에 따라 데이터를 조회합니다.
            Map<String, Object> data = new HashMap<>();
            if ("event".equals(category)) {
                List<Event> events = eventService.getListForMap();
                data.put("events", events);
                log.debug("Events data: {}", events); // 이벤트 데이터 로깅
            } else if ("culture".equals(category)) {
                List<Culture> cultures = cultureService.getListForMap();
                data.put("cultures", cultures);
                log.debug("Cultures data: {}", cultures); // 문화 데이터 로깅
            } else if ("festival".equals(category)) {
            	List<Festival> festivals = festivalService.getListForMap();
                data.put("festivals", festivals);
                log.debug("Festivals data: {}", festivals); // 문화 데이터 로깅
            } else if ("leisureSport".equals(category)) {
            	List<LeisureSports> leisureSports = leisureSportsService.getListForMap();
                data.put("leisureSports", leisureSports);
                log.debug("LeisureSports data: {}", leisureSports); // 문화 데이터 로깅
            } else if ("food".equals(category)) {
            	List<Food> foods = foodService.getListForMap();
                data.put("foods", foods);
                log.debug("foods data: {}", foods); // 문화 데이터 로깅
            }
            // 로그에 전체 데이터 구조 기록
            log.debug("Data sent to client: {}", data);

            log.info("Data for categories {} retrieved successfully", category);
            return ResponseEntity.ok(data);
        } catch (Exception e) {
        	log.error("Error in getCategoryData: {}", e.getMessage(), e);
        	return new ResponseEntity<>("Error fetching data for category " + category, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
    
}
