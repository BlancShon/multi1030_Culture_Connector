package com.multi.mvc.culture.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class CultureThemeController {

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
	
}
