package com.multi.mvc.culture.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.api.ApiParsing;
import com.multi.mvc.culture.model.mapper.TouristAttractionMapper;
import com.multi.mvc.culture.model.vo.TouristAttraction;

@Service    
public class TouristAttractionService {

    @Autowired
    private TouristAttractionMapper mapper;

    public void save() {
    	List<TouristAttraction> list = ApiParsing.parseAndExportToTheListAdvanced(TouristAttraction.class);
		for(TouristAttraction item : list) {
			try {
				mapper.insertTouristAttraction(item);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
    }

    public int count() {
        return mapper.selectTouristAttractionCount();
    }
    
    public void createTable() {
    	mapper.createTableTourist();
    }
    
	
	// 아래 두개는 데이터 주입용으로 임시로 만들었습니다
//	 @Transactional(noRollbackFor = SQLException.class)
	public void saveData(String name) {
		List<TouristAttraction> list = ApiParsing.parseAndExportToTheListAdvanced(TouristAttraction.class, name);
		for(TouristAttraction item : list) {
			try {
				mapper.insertTouristAttraction(item);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	// 데이터 리스트를 보여주는 메소드 임시입니다
	public List<TouristAttraction> getListForDB() {
		return mapper.selectTable();
	}
}
