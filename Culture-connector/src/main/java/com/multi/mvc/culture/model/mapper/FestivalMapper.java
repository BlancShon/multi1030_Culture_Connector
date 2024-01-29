package com.multi.mvc.culture.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.culture.model.vo.Festival;
import com.multi.mvc.culture.model.vo.FestivalParam;
import com.multi.mvc.culture.model.vo.SearchForm;

@Mapper
public interface FestivalMapper {
		
	void createTableFestival();
	
	int selectCount();
	
	List<Festival> testList(SearchForm searchForm);

	List<Festival> selectTable();

	List<Festival> selectFestivalRand(FestivalParam param);

	void insertFestival(Festival item);
	
	List<Festival> selectFestivalList(FestivalParam param);
	
	int selectFestivalCount(FestivalParam param);

	List<Festival> getListForMap();
	
}
