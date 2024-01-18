package com.multi.mvc.culture.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

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
	
	List<Food> list = OpenApiManagerForXml_food.parse();
	
	private static Culture food;
	
	@Bean(initMethod = "init")
	public void init() {
		service.save();
	
	}
	
	@GetMapping("/food/list")
	public String list(Model model, Culture food) {
		
		
		
		
		
		
		//service.count();
		
		model.addAttribute("list", list);
		return "culture/foodList";
	}
	
	
//	@GetMapping("/culture/list")
//	public String list(Model model, Culture food) {
//		
//		
//		
//		
//		
//		
//		//service.count();
//		
//		model.addAttribute("list", list);
//		return "culture/cultureList";
//	}

}