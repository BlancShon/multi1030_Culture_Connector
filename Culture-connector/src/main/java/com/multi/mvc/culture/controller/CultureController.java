package com.multi.mvc.culture.controller;

import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.multi.mvc.api.OpenApiManagerForXml;
import com.multi.mvc.board.controller.BoardController;
import com.multi.mvc.board.model.vo.BoardCategory;
import com.multi.mvc.culture.model.mapper.CultureMapper;
//import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.culture.model.service.CultureService;
import com.multi.mvc.culture.model.vo.Culture;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class CultureController {
	
	@Autowired
	private CultureService service;
	
	List<Culture> list = OpenApiManagerForXml.parse();
	
	private static Culture culture;
	
	@Bean(initMethod = "init")
	public void init() {
		log.debug("culture init 호출 확인");
		service.createTable();
		log.debug("culture createTable 성공 호출 확인");
		log.debug("service count is {}", service.count());
		if(service.count() == 0) {
			service.save();
		}
	}
	
	@GetMapping("/culture/list")
	public String list(Model model, Culture culture) {
		
		
		
		
		
		
		//service.count();
		
		model.addAttribute("list", list);
		return "culture/cultureList";
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
