package com.multi.mvc.culture.model.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.api.OpenApiManagerForXml;
import com.multi.mvc.culture.model.mapper.CultureMapper;
import com.multi.mvc.culture.model.vo.Culture;


@Service
public class CultureService {

	
	
	@Autowired
	private  CultureMapper mapper;
	

	public int save() {
		int result = 0;
		
		
		mapper.insertCulture(OpenApiManagerForXml.parse());
		return result;
		
		
		
		
			
	}
	
	public int count() {
		
		mapper.selectCount();
		
		return mapper.selectCount();
		
		
	}
}
