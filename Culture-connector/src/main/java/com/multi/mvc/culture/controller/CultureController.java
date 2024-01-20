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
import com.multi.mvc.board.model.vo.Board;
import com.multi.mvc.board.model.vo.BoardCategory;
import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.culture.model.mapper.CultureMapper;
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
