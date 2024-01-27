package com.multi.mvc.culture.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.culture.model.service.FestivalService;
import com.multi.mvc.culture.model.vo.Festival;
import com.multi.mvc.culture.model.vo.FestivalParam;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class CultureThemeController {
	
	@Autowired
	private FestivalService service;
	
	

//	@RequestMapping(value = "/cultureTheme2", method = RequestMethod.GET)
//	public String cultureTheme2() {
//	    log.info("cultureTheme2 request");
//	    return "/culture/cultureTheme2";
//	}

	@GetMapping("/cultureTheme3")
    public String cultureTheme3() {
        log.info("cultureTheme3 request");
        
        return "/culture/cultureTheme3";
    }
	
	@RequestMapping("/cultureTheme3Search")
	public String FestivalList(Model model, FestivalParam param) {
		System.out.println("@@ festival list 요청 param : " + param);
		
		int festivalCount = service.getFestivalCount(param);
//			PageInfo pageInfo = new PageInfo(param.getPage(), 10, boardCount, 15); // page가 보여질 갯수 : 10, 게시글 목록은 15개
		PageInfo pageInfo = new PageInfo(param.getPage(), 10, festivalCount, 12); // page가 보여질 갯수 : 10, 게시글 목록은 12개
		param.setLimit(pageInfo.getListLimit());
		param.setOffset(pageInfo.getStartList() - 1);
		List<Festival> Flist = service.getFestivalSearchList(param);
		
		System.out.println("@@@@@@@@@@@@@@@@@@@FList@@@@@@@@@@@@" + Flist);
		System.out.println(param.getFestivaltypeList());
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("Flist", Flist);
		model.addAttribute("localtypeList", param.getLocaltypeList());
		model.addAttribute("festivaltypeList", param.getFestivaltypeList());
		model.addAttribute("size", Flist.size());		
		model.addAttribute("param", param);
		
		return "/culture/cultureTheme3";
	}
	
	@RequestMapping(value = "/cultureTheme4", method = RequestMethod.GET)
	public String cultureTheme4() {
		log.info("cultureTheme4 request");
		return "/culture/cultureTheme4";
	}
	
}
