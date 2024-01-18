package com.multi.mvc.culture.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.api.ApiParsing;
import com.multi.mvc.culture.model.mapper.FestivalMapper;
import com.multi.mvc.culture.model.vo.Festival;

@Service
public class FestivalService {

	
	@Autowired
	private FestivalMapper mapper;
	
	
	public void dropTable() {
		mapper.initDeleteFestival();
	}
	
	public void createTable() {
		mapper.createTableFestival();
	}
	
	
	public void initFestival() {
		mapper.initFestival((List<Festival>)ApiParsing.parseAndExportToTheList(Festival.class));
	}
	
	
	public int count() {
		return mapper.selectCount();
	}
}