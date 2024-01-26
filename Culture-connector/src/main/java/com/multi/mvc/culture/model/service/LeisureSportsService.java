package com.multi.mvc.culture.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.multi.mvc.api.ApiParsing;
import com.multi.mvc.culture.model.mapper.LeisureSportsMapper;
import com.multi.mvc.culture.model.vo.LeisureSports;
import com.multi.mvc.culture.model.vo.LeisureSportsParam;

@Service
public class LeisureSportsService {

	
	@Autowired
	private LeisureSportsMapper mapper;
	
	public int save() {
        int result = 0;
        // Your implementation here
        return result;
    }

    public int count() {
        return mapper.selectCount();
    }
    
	public void createTable() {
		mapper.createTableLeports();
	}
    @Transactional(rollbackFor = Exception.class)
    public LeisureSports findLeportsByLeportsId(int leportsId) {
        
        // 필요한 값들을 param에 셋팅
        LeisureSports leisureSports = mapper.selectLeportsByLeportsId(leportsId);
        return leisureSports;
    }

    public List<LeisureSports> getLeportsList(LeisureSportsParam param) {
        return mapper.selectLeportsList(param);
    }

    public int getLeportsCount(LeisureSportsParam param) {
        return mapper.selectLeportsCount(param);
    }

	
	public void initLeports() {
		List<LeisureSports> list = ApiParsing.parseAndExportToTheListAdvanced(LeisureSports.class);
		for(LeisureSports item : list) {
			try {
				mapper.insertLeports(item);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	public List<LeisureSports> showLeportsTable() {
		return mapper.selectTable();
	}
	
	
	
	
	// 아래 두개는 데이터 주입용으로 임시로 만들었습니다
//	 @Transactional(noRollbackFor = SQLException.class)
	public void saveData(String name, String page) {
		List<LeisureSports> list = ApiParsing.parseAndExportToTheListAdvanced(LeisureSports.class, name, page);
		for(LeisureSports item : list) {
			try {
				mapper.insertLeports(item);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	// 데이터 리스트를 보여주는 메소드 임시입니다
	public List<LeisureSports> getListForDB() {
		return mapper.selectTable();
	}
}

