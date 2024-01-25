package com.multi.mvc.culture.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.multi.mvc.api.ApiParsing;
import com.multi.mvc.culture.model.mapper.EventMapper;
import com.multi.mvc.culture.model.vo.Culture;
import com.multi.mvc.culture.model.vo.CultureParam;
import com.multi.mvc.culture.model.vo.Event;
import com.multi.mvc.culture.model.vo.EventParam;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class EventService {

	@Autowired
	private EventMapper mapper;
	
	public void createTable() {
		mapper.createTableEvent();
	}
	
	public void initEvent() {
		List<Event> list = ApiParsing.parseAndExportToTheListAdvanced(Event.class);
		for(Event item : list) {
			try {
				mapper.insertEvent(item);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	public int count() {
		return mapper.selectCount();
	}
	
	public List<Event> getEventTable() {
		return mapper.selectTable();
	}
	
	public List<Event> getEventList(EventParam param) {
		return mapper.selectEventList(param);
	}
	
	public int getEventCount(EventParam param) {
		return mapper.selectEventCount(param);
	}
	
	@Transactional(rollbackFor = Exception.class)
	public Event findEventByContentId(int contentid) {
		Event event = mapper.selectEventByContentId(contentid);
	
		return event;
	}
	
	// 아래 두개는 데이터 주입용으로 임시로 만들었습니다
//	 @Transactional(noRollbackFor = SQLException.class)
	public void saveData(String name) {
		List<Event> list = ApiParsing.parseAndExportToTheListAdvanced(Event.class, name);
		for(Event item : list) {
			try {
				mapper.insertEvent(item);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	// 데이터 리스트를 보여주는 메소드 임시입니다
	public List<Event> getListForDB() {
		return mapper.selectTable();
	}

	// 최신 10개만 가져오기
	public List<Event> selectEventListWithTime() {
		return mapper.selectEventListWithTime();
	}

	// 가장 가까운 이벤트 한개
	public Event getEventDetailsByAreacode(String areacode) {
		return mapper.getEventDetailsByAreacode(areacode);
	}

}
