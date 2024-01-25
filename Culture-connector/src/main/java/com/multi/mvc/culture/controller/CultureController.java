package com.multi.mvc.culture.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.mvc.common.util.PageInfo;
//import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.culture.model.service.CultureService;
import com.multi.mvc.culture.model.vo.Culture;
import com.multi.mvc.culture.model.vo.CultureParam;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class CultureController {
	
	@Autowired
	private CultureService service;
	
//	List<Culture> list = OpenApiManagerForXml.parse();
	private Culture culture;
	
	
//	@Bean(initMethod = "init")
	public void init() {
		log.info("culture init 호출 확인");
//		service.createTable();
//		if(service.count() == 0) {
//			service.save();
//		}
	}

	// 아래 두개는 디비 주입 확인을 위한 메소드입니다
	@PostMapping("/culture/dataSave")
	public String dataSaveForDB(@RequestParam("name") String name, @RequestParam("page") String page) {
			service.createTable();
			service.saveData(name, page);
		return "redirect:/dbsave";
	}
	@GetMapping("/culture/listForDB")
	public String listForDB(Model model) {
		List<Culture> list = service.getListForDB();
		model.addAttribute("list",list);
		return "test/cultureList";
	}
	@GetMapping("/culture/createTable")
	public String createTable() {
		service.createTable();
		return "redirect:/dbsave";
	}
	
	@GetMapping("/culture/list")
	public String list(Model model, CultureParam param) {
		int cultureCount = service.getCultureCount(param);
//		PageInfo pageInfo = new PageInfo(param.getPage(), 10, boardCount, 15); // page가 보여질 갯수 : 10, 게시글 목록은 15개
		PageInfo pageInfo = new PageInfo(param.getPage(), 6, cultureCount, 8); // page가 보여질 갯수 : 10, 게시글 목록은 12개
		param.setLimit(pageInfo.getListLimit());
		param.setOffset(pageInfo.getStartList() - 1);
		List<Culture> list = service.getCultureList(param);
		
		
		//System.out.println(categoryList);
		
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("list", list);
		// model.addAttribute("categoryList", categoryList);
		// model.addAttribute("typeMap", typeMap);
		model.addAttribute("param", param);
		model.addAttribute("typeList", param.getTypeList());
		
		// 공지사항 분류하는 법
//		if(param.getTypeList() != null && param.getTypeList().size() == 1 && param.getTypeList().get(0).equals("NBOARD")) {
//			return "/culture/List";
//		}
	
		
		//service.count();
		
//		model.addAttribute("list", list);
		return "culture/cultureList";
	}
	
	
	@RequestMapping("/culture/detail")
	public String detailView(Model model, @RequestParam("contentid") int contentid) {
			
		try {
			culture = service.findCultureByContentId(contentid);
			System.out.println("culture = " + culture);
		} catch (Exception e) {}
		if(culture == null) {
			return "redirect:error";
		}
		
		//model.addAttribute("typeMap", typeMap);
		model.addAttribute("culture", culture);
		model.addAttribute("contentid", culture.getContentid());
		model.addAttribute("overview", culture.getOverview());
		
		return "culture/cultureDetail";
	}

}
