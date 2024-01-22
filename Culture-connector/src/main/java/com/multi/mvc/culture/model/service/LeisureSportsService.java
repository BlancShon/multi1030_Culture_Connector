package com.multi.mvc.culture.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.api.ApiParsing;
import com.multi.mvc.culture.model.mapper.LeisureSportsMapper;
import com.multi.mvc.culture.model.vo.LeisureSports;

@Service
public class LeisureSportsService {

	
	@Autowired
	private LeisureSportsMapper mapper;
	
	public void createTable() {
		mapper.createTableLeports();
	}
	
	public void initLeports() {
		mapper.initLeports(ApiParsing.parseAndExportToTheListAdvanced(LeisureSports.class));
	}
	
	public int count() {
		return mapper.selectCount();
	}
	
	public List<LeisureSports> showLeportsTable() {
		return mapper.leportsList();
	}
}
