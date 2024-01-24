package com.multi.mvc.culture.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class CultureNewsController {

	
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
	
	
}
