package com.multi.mvc.culture.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.api.OpenApiManagerForXml_food;
import com.multi.mvc.culture.model.mapper.FoodMapper;


@Service
public class FoodService {

	
	
	@Autowired
	private FoodMapper mapper;
	

	public int save() {
		int result = 0;
		
		
		mapper.insertFood(OpenApiManagerForXml_food.parse());
		return result;
		
		
		
		
			
	}
	
	public int count() {
		
		mapper.selectFoodCount();
		
		return mapper.selectFoodCount();
		
		
	}
}
