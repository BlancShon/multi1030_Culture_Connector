package com.multi.mvc.culture.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.mvc.api.OpenApiManagerForXml_food;
//import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.culture.model.service.FoodService;
import com.multi.mvc.culture.model.vo.Culture;
import com.multi.mvc.culture.model.vo.Food;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class FoodController {
	
	@Autowired
	private FoodService service;
	
//	List<Food> FoodList = OpenApiManagerForXml_food.parse();
	
	private  Food food;
	
	@Bean(initMethod = "init2")
	public void init2() {
		log.debug("food controller 확인");
		service.createTable();
//		if(service.count() == 0) {
//			service.save();
//		}
	}
	
	@GetMapping("/food/list")
	public String list(Model model, Food food) {
		
		
		
		
		
		
		//service.count();
		
//		model.addAttribute("FoodList", FoodList);
		return "culture/foodList";
	}
	
	
	@RequestMapping(value = "/food", method = RequestMethod.GET)
    public String food() {
        return "/culture/food"; // This forwards to /WEB-INF/views/culture/food.jsp
    }
	
	
	@RequestMapping("/food/detail")
	public String detailView() {
			
//		try {
//			food = service.findCultureByContentId(contentid);
//			System.out.println("culture = " + culture);
//		} catch (Exception e) {}
//		if(food == null) {
//			return "redirect:error";
//		}
//		
//		//model.addAttribute("typeMap", typeMap);
//		model.addAttribute("food", food);
//		model.addAttribute("contentid", food.getContentid());
//		model.addAttribute("overview", food.getOverview());
		
		return "culture/food_detail";
	
	
	}
	
	
	
	
	
	
	
	

}
