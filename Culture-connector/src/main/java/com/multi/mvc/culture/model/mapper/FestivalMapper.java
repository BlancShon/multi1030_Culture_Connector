package com.multi.mvc.culture.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.culture.model.vo.Festival;

@Mapper
public interface FestivalMapper {
	void initDeleteFestival();
	
	void createTableFestival();
	
	void initFestival(List<Festival> list);
	
	int selectCount();
	
	
}
