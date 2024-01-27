package com.multi.mvc.culture.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.culture.model.service.LeisureSportsService;
import com.multi.mvc.culture.model.vo.LeisureSports;
import com.multi.mvc.culture.model.vo.LeisureSportsParam;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/leports")
public class LeisureSportsController {
	@Autowired
	private LeisureSportsService service;
	
	private LeisureSports leisure;
//	@Bean(initMethod = "initLeports")
	public void initLeports() {
		log.debug("initLeports Controller 확인");

//		service.createTable();
//		if(service.count() == 0) {
//			service.initLeports();
//		}
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
		List<LeisureSports> list = service.getListForDB();
		model.addAttribute("list", list);
		return "test/leportsList";
	}

	@GetMapping("/createTable")
	public String createTable() {
		service.createTable();
		return "redirect:/dbsave";
	}

	@GetMapping("/list")
	public String leportsList(Model model, LeisureSportsParam param) {
		log.debug("LeisureSports Controller list 확인 param : " + param);
		int leisureCount = service.getLeportsCount(param);
		PageInfo pageInfo = new PageInfo(param.getPage(), 6, leisureCount, 9);
		param.setLimit(pageInfo.getListLimit());
		param.setOffset(pageInfo.getStartList() - 1);
		List<LeisureSports> list = service.getLeportsList(param);
		for(LeisureSports item : list) {
			System.out.println("@@@@ LeisureSports: " + item);
		}
		
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("list", list);
		// model.addAttribute("typeMap", typeMap);
		model.addAttribute("param", param);
		model.addAttribute("locationList", param.getLocationList());

		return "culture/leisureSportsList";
	}
	
	
	@RequestMapping("/leisureSports/detail")
	public String detailView(Model model, @RequestParam("contentid") int contentid) {
	    
	    try {
	        leisure = service.findLeportsByLeportsId(contentid);  
	        System.out.println("leisure = " + leisure);
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    
	    if (leisure == null) {
	        return "redirect:error";
	    }
	    
	    model.addAttribute("leisure", leisure);
	    model.addAttribute("contentid", leisure.getContentid());
	    model.addAttribute("overview", leisure.getOverview());
	    
	    return "culture/leisureDetail";
	}

	
	
}

