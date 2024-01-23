package com.multi.mvc.culture.controller;

import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
import com.mysql.cj.log.Log;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class CultureController {
	
	@Autowired
	private CultureService service;
	
	List<Culture> list = OpenApiManagerForXml.parse();
	private Culture culture;
	
	
	@Bean(initMethod = "init")
	public void init() {
		log.debug("culture init 호출 확인");
		service.createTable();
		log.debug("culture createTable 성공 호출 확인");
//		if(service.count() == 0) {
//			service.save();
//		}
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
	public String detailView(Model model, @RequestParam("no") int no) {
		
		try {
			culture = service.findCultureByBNo(no);
		} catch (Exception e) {}
		if(culture == null) {
			return "redirect:error";
		}
		
		//model.addAttribute("typeMap", typeMap);
		model.addAttribute("culture", culture);
		
		return "culture/cultureDetail";
	}
	
	
	
	@RequestMapping(value = "/cultureTheme1", method = RequestMethod.GET)
	public String cultureTheme1() {
		log.info("cultureTheme1 request");
		return "/culture/cultureTheme1";
	}
	
	@RequestMapping(value = "/cultureTheme2", method = RequestMethod.GET)
	public String cultureTheme2() {
	    log.info("cultureTheme2 request");
	    return "/culture/cultureTheme2";
	}
	
	@RequestMapping(value = "/cultureTheme3", method = RequestMethod.GET)
	public String cultureTheme3() {
		log.info("cultureTheme3 request");
		return "/culture/cultureTheme3";
	}
	
	@RequestMapping(value = "/cultureTheme4", method = RequestMethod.GET)
	public String cultureTheme4() {
		log.info("cultureTheme4 request");
		return "/culture/cultureTheme4";
	}
	
	
	@RequestMapping(value = "/cultureNews1", method = RequestMethod.GET)
	public String cultureNews1() {
		log.info("cultureNews1 request");
		return "/culture/cultureNews1";
	}
	
	@RequestMapping(value = "/cultureNews2", method = RequestMethod.GET)
	public String cultureNews2() {
		log.info("cultureNews2 request");
		return "/culture/cultureNews2";
	}
	
	@RequestMapping(value = "/cultureNews3", method = RequestMethod.GET)
	public String cultureNews3() {
		log.info("cultureNews3 request");
		return "/culture/cultureNews3";
	}
	
	@RequestMapping(value = "/reviewTalk1", method = RequestMethod.GET)
	public String reviewTalk1() {
		log.info("reviewTalk1 request");
		return "/culture/reviewTalk1";
	}
	
	@RequestMapping(value = "/reviewTalk2", method = RequestMethod.GET)
	public String reviewTalk2() {
		log.info("reviewTalk2 request");
		return "/culture/reviewTalk2";
	}
	
	

}
