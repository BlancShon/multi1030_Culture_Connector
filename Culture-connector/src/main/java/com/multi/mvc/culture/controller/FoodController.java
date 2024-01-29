package com.multi.mvc.culture.controller;

import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.mvc.api.OpenApiManagerForXml_food;
import com.multi.mvc.board.model.vo.Board;
import com.multi.mvc.common.util.PageInfo;
//import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.culture.model.service.FoodService;
import com.multi.mvc.culture.model.vo.Culture;
import com.multi.mvc.culture.model.vo.Food;
import com.multi.mvc.culture.model.vo.FoodCategory;
import com.multi.mvc.culture.model.vo.FoodParam;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class FoodController {
	
	@Autowired
	private FoodService service;
	
	List<Food> FoodList = OpenApiManagerForXml_food.parse();
	
	private static Vector<FoodCategory> FoodcategoryList;
	private static ConcurrentHashMap<String, String> typeMap; 
	
	
	@Bean(initMethod = "init2")
	public void init2() {
		log.debug("food controller 확인");
		service.createTable();
		if(service.count() == 0) {
			service.save();
		}
		
	}
	
	@GetMapping("/food/list")
	public String list(Model model, Culture food) {
		
		//service.count();
		
		model.addAttribute("FoodList", FoodList);
		return "culture/foodList";
	}
	
	
//	@GetMapping("/food")
//	public String foodMain() {
//		log.debug("푸드 메인 요청");
//		return "/culture/food"; // This forwards to /WEB-INF/views/culture/food.jsp
//	}
	
	@RequestMapping("/food")
	public String Foodlist2(Model model, FoodParam param) {
		log.debug("@@ food list2 메인 요청 param : " + param);
		
		int foodCount = service.getFoodCount(param);
//			PageInfo pageInfo = new PageInfo(param.getPage(), 10, boardCount, 15); // page가 보여질 갯수 : 10, 게시글 목록은 15개
		PageInfo pageInfo = new PageInfo(param.getPage(), 10, foodCount, 12); // page가 보여질 갯수 : 10, 게시글 목록은 12개
		param.setLimit(pageInfo.getListLimit());
		param.setOffset(pageInfo.getStartList() - 1);
		List<Food> list = service.getFoodSearchList(param);
		List<Food> Randlist = service.getFoodRandList(param);
		
		System.out.println(list);
		
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("list", list);
		model.addAttribute("Randlist", Randlist);
		model.addAttribute("size", list.size());		
		model.addAttribute("Randlistsize", Randlist.size());		
		model.addAttribute("param", param);
		
		return "/culture/food";
	}
	
	//http://localhost:8085/mvc/foodSearch?searchValue=search&localtypes=%EC%9D%B8%EC%B2%9C&localtypes=%EA%B2%BD%EB%B6%81&localtypes=%EB%B6%80%EC%82%B0&localtypes=%EC%A0%9C%EC%A3%BC&foodtypes=on
	@RequestMapping("/foodSearch")
	public String Foodlist(Model model, FoodParam param) {
		System.out.println("@@ food list 요청 param : " + param);
		
		int foodCount = service.getFoodCount(param);
//			PageInfo pageInfo = new PageInfo(param.getPage(), 10, boardCount, 15); // page가 보여질 갯수 : 10, 게시글 목록은 15개
		PageInfo pageInfo = new PageInfo(param.getPage(), 10, foodCount, 12); // page가 보여질 갯수 : 10, 게시글 목록은 12개
		param.setLimit(pageInfo.getListLimit());
		param.setOffset(pageInfo.getStartList() - 1);
		List<Food> list = service.getFoodSearchList(param);
		List<Food> Randlist = service.getFoodRandList(param);
		
		System.out.println(list);
		System.out.println(param.getFoodtypeList());
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("list", list);
		model.addAttribute("Randlist", Randlist);
		model.addAttribute("localtypeList", param.getLocaltypeList());
		model.addAttribute("foodtypeList", param.getFoodtypeList());
		model.addAttribute("size", list.size());		
		model.addAttribute("Randlistsize", Randlist.size());
		model.addAttribute("param", param);
		
		return "/culture/foodSearch";
	}
	
//	@RequestMapping("/food/foodSearch3")
//	public String FoodView(Model model, @RequestParam("addr1") Food addr1) {
//		Food foodAddr = null;
//		try {
//			foodAddr = service.findFoodByAddr1(addr1);
//		} catch (Exception e) {}
//		if(foodAddr == null) {
//			return "redirect:error";
//		}
//		
////		model.addAttribute("typeMap", typeMap);
//		model.addAttribute("foodAddr", foodAddr);
//		
//		return "culture/foodSearch";
//	}

	@RequestMapping("/food/detail")
	public String FoodView(Model model, @RequestParam("cfno") int cfno) {
		Food food = null;
		try {
			food = service.findFoodByNo(cfno);
		} catch (Exception e) {}
		if(food == null) {
			return "redirect:error";
		}
		
//		model.addAttribute("typeMap", typeMap);
		model.addAttribute("food", food);
		
		return "culture/foodDetail";
	}
//
//	equestMapping(value = "/food", method = RequestMethod.GET)
//    public String food() {
//        return "/culture/food"; // This forwards to /WEB-INF/views/culture/food.jsp
//    }
}
