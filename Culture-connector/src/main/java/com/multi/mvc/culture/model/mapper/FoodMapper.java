package com.multi.mvc.culture.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.culture.model.vo.Food;

@Mapper
public interface FoodMapper {
	
	void insertFood(List<Food> list);	
	
	int selectFoodCount();

}
