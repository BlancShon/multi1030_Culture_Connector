package com.multi.mvc.culture.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.culture.model.vo.LeisureSports;
import com.multi.mvc.culture.model.vo.LeisureSportsParam;

@Mapper
public interface LeisureSportsMapper { 
	
	
	List<LeisureSports> selectTable();
	
	void createTableLeports();
	
	int insertLeports(LeisureSports item);
	
	int selectCount();
	
	LeisureSports selectLeportsByLeportsId(int leportsId);

    List<LeisureSports> selectLeportsList(LeisureSportsParam param);

    int selectLeportsCount(LeisureSportsParam param);
	
}
