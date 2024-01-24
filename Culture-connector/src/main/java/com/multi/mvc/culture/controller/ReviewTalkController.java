package com.multi.mvc.culture.controller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class ReviewTalkController {

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
