package com.multi.mvc.culture.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.multi.mvc.culture.model.vo.EventParam;
import com.multi.mvc.culture.model.vo.Event;

@Mapper
public interface EventMapper {
	
	// DB 주입 확인을 위해 만들었습니다
	List<Event> selectTable();
	// DB 주입을 위해 만들었습니다.
	int insertEvent(Event item);
	
	void createTableEvent();
	
	int selectCount();

	Event selectEventByContentId(int contentid);
	
	List<Event> selectEventList(EventParam param);
	
	int selectEventCount(EventParam param);
	
	// 최신 10개만 가져오기
	List<Event> selectEventListWithTime();
	
	// 가장 근접한 이벤트 가져오기
	Event getEventDetailsByAreacode(@Param("areacode") String areacode);
	
	List<Event> getListForMap();
	
	
}
