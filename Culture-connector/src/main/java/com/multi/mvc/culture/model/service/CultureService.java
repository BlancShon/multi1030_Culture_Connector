package com.multi.mvc.culture.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.multi.mvc.api.ApiParsing;
import com.multi.mvc.api.OpenApiManagerForXml;
import com.multi.mvc.culture.model.mapper.CultureMapper;
import com.multi.mvc.culture.model.vo.Culture;
import com.multi.mvc.culture.model.vo.CultureParam;


@Service
public class CultureService {

	
	
	@Autowired
	private  CultureMapper mapper;
	

	public int save() {
		int result = 0;

		mapper.insertCulture(OpenApiManagerForXml.parse());
		return result;
	
	}
	
	public int count() {
		
		mapper.selectCount();
		
		return mapper.selectCount();
		
		
	}
	
	public void createTable() {
		
		mapper.createTableCulture();
		
	}
	
	
	public List<Culture> getCultureList(CultureParam param) {
		return mapper.selectCultureList(param);
	}
	
	public int getCultureCount(CultureParam param) {
		return mapper.selectCultureCount(param);
	}
	
	
	
	@Transactional(rollbackFor = Exception.class)
	public Culture findCultureByBNo(int cno) {
		Culture culture = mapper.selectCultureByNo(cno);
	
		return culture;
	}
	
	// 아래 두개는 데이터 주입용으로 임시로 만들었습니다
//	 @Transactional(noRollbackFor = SQLException.class)
	public void saveData(String name) {
		mapper.insertCulture(ApiParsing.parseAndExportToTheListAdvanced(Culture.class, name));
	}
	public List<Culture> getListForDB() {
		return mapper.selectTable();
	}


}
