package com.multi.mvc.culture.model.mapper;

import java.util.List;
import java.util.Vector;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.culture.model.vo.Food;
import com.multi.mvc.culture.model.vo.FoodCategory;
import com.multi.mvc.culture.model.vo.FoodParam;

@Mapper
public interface FoodMapper {

	int insertFood(List<Food> list);	
	
	int selectFoodCount();
	
	void createTableFood();

	List<Food> selectFoodList(FoodParam param);

	int selectFoodCount(FoodParam param);

	Food selectFoodByNo(int cfno);
	
	List<Food> selectFoodRand(FoodParam param);

//	Food selectFoodByAddr1(Food addr1);

//	List<Food> selectFoodSample(FoodParam param);
	

}
