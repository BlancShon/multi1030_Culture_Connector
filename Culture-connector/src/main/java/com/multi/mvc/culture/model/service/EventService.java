package com.multi.mvc.culture.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.api.ApiParsing;
import com.multi.mvc.culture.model.mapper.EventMapper;
import com.multi.mvc.culture.model.vo.Event;

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
}
