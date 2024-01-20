package com.multi.mvc.culture.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.multi.mvc.culture.model.service.LeisureSportsService;
import com.multi.mvc.culture.model.vo.LeisureSports;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/leports")
public class LeisureSportsController {
	
	@Autowired
	private LeisureSportsService service;
	
	@Bean(initMethod = "initLeports")
	public void initLeports() {
		log.debug("initLeports Controller 확인");
		
		service.createTable();
		if(service.count() == 0) {
			service.initLeports();
		}
	}
	
	@GetMapping("/list")
	public String leportsList(Model model) {
		log.debug("LeisureSports Controller list 확인");
		List<LeisureSports> list = service.showLeportsTable();
		model.addAttribute("LeportsList", list);
		
		return "culture/leisureSportsList";
	}
}
