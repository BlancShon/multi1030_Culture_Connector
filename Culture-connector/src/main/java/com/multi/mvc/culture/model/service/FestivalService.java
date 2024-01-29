package com.multi.mvc.culture.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.api.ApiParsing;
import com.multi.mvc.culture.model.mapper.FestivalMapper;
import com.multi.mvc.culture.model.vo.Festival;
import com.multi.mvc.culture.model.vo.FestivalParam;
import com.multi.mvc.culture.model.vo.SearchForm;

@Service
public class FestivalService {

	
	@Autowired
	private FestivalMapper mapper;
	
	
	public void createTable() {
		mapper.createTableFestival();
	}
	
	
	public void initFestival() {
		List<Festival> list = ApiParsing.parseAndExportToTheListAdvanced(Festival.class);
		for(Festival item : list) {
			try {
				mapper.insertFestival(item);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	
	public int count() {
		return mapper.selectCount();
	}
	
	public List<Festival> getTestList(SearchForm searchForm){
		return mapper.testList(searchForm);
	}

	// 아래 두개는 데이터 주입용으로 임시로 만들었습니다
//	 @Transactional(noRollbackFor = SQLException.class)
	public void saveData(String name, String page) {
		List<Festival> list = ApiParsing.parseAndExportToTheListAdvanced(Festival.class, name, page);
		for(Festival item : list) {
			try {
				mapper.insertFestival(item);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	// 데이터 리스트를 보여주는 메소드 임시입니다
	public List<Festival> getListForDB() {
		return mapper.selectTable();
	}

	public List<Festival> getListRand(FestivalParam param){
		return mapper.selectFestivalRand(param);
	}


	
	public int getFestivalCount(FestivalParam param) {
		return mapper.selectFestivalCount(param);
	}


	public List<Festival> getFestivalSearchList(FestivalParam param) {
		return mapper.selectFestivalList(param);
	}


	public List<Festival> getListForMap() {
		return mapper.getListForMap();
	}


}













