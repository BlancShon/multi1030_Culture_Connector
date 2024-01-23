package com.multi.mvc.culture.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.culture.model.vo.Event;

@Mapper
public interface EventMapper {
	
	// DB 주입 확인을 위해 만들었습니다
	List<Event> selectTable();
	// DB 주입을 위해 만들었습니다.
	int insertEvent(Event item);
	
	void createTableEvent();
	
	void initEvent(List<Event> list);
	
	int selectCount();
	
	List<Event> eventList();

}
