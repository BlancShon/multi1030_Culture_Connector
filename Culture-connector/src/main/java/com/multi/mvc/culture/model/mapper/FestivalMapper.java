package com.multi.mvc.culture.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.culture.model.vo.Festival;
import com.multi.mvc.culture.model.vo.SearchForm;

@Mapper
public interface FestivalMapper {
		
	void createTableFestival();
	
	void initFestival(List<Festival> list);
	
	int selectCount();
	
	List<Festival> testList(SearchForm searchForm);

	List<Festival> selectFestival();
}
