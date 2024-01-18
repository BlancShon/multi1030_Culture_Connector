package com.multi.mvc.culture.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.culture.model.vo.Event;

@Mapper
public interface EventMapper {
	void deleteTableFestival();
	
	void createTableEvent();
	
	void initEvent(List<Event> list);
	
	int selectCount();
}
