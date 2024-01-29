package com.multi.mvc.culture.model.service;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.LinkedList;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.multi.mvc.api.ApiParsing;
import com.multi.mvc.culture.model.mapper.LeisureSportsMapper;
import com.multi.mvc.culture.model.vo.AreaCodes;
import com.multi.mvc.culture.model.vo.LeisureSports;
import com.multi.mvc.culture.model.vo.LeisureSportsParam;
import com.multi.mvc.culture.model.vo.leports.LeportsCategory;

import lombok.extern.slf4j.Slf4j;

@Slf4j
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

	public List<String> getImgList(LeisureSports leisure) {

			List<String> imgList = new LinkedList<>();
				
			 for (int i = 0; i < 21; i++) {
			       String imageFieldName = "Image" + i;
			       
			       // Reflection을 사용하여 동적으로 필드에 접근하여 값을 가져오기
			       try {
			           // target 객체의 image 필드명에 해당하는 Getter 메서드를 찾음
			           Method leisureGetter = leisure.getClass().getMethod("get" + imageFieldName);
			           // 값을 가져오기
			           String imgValue = (String) leisureGetter.invoke(leisure);
			           
			           // 값이 null이 아니라면 imgList에 추가
			           if (imgValue != null) {
			               imgList.add(imgValue);
			           }
			       } catch (NoSuchMethodException | IllegalAccessException | InvocationTargetException e) {
			           log.error("이미지 가져오기 도중 예외", e);
			       }
			   }
				
			return imgList;
	}

	public ConcurrentHashMap<String, Vector<LeportsCategory>> getCategoryMap() {
		return LeportsCategory.getCategoryMap();
	}
	
	public Vector<AreaCodes> getAreaList() {
		return AreaCodes.getAreaList();
	}

	public ConcurrentHashMap<String, String> getCategoryCodeMap() {
		return LeportsCategory.getCategoryCodeMap();
	}
}

