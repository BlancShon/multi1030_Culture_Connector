package com.multi.mvc.culture.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.culture.model.vo.LeisureSports;

@Mapper
public interface LeisureSportsMapper {
	
	void createTableLeports();
	
	int insertLeports(LeisureSports item);
	
	int selectCount();
	
	List<LeisureSports> selectTable();
}
