package com.multi.mvc.culture.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.api.ApiParsing;
import com.multi.mvc.culture.model.mapper.EventMapper;
import com.multi.mvc.culture.model.vo.Event;

@Service
public class EventService {

	
	@Autowired
	private EventMapper mapper;
	
	public void dropTable() {
		mapper.deleteTableFestival();
	}
	
	public void createTable() {
		mapper.createTableEvent();
	}
	
	public void initEvent() {
		mapper.initEvent(ApiParsing.parseAndExportToTheList(Event.class));
	}
	
	public int count() {
		return mapper.selectCount();
	}
}
