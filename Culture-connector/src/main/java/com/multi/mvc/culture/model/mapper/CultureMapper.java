package com.multi.mvc.culture.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.culture.model.vo.Culture;
import com.multi.mvc.culture.model.vo.CultureParam;
import com.multi.mvc.culture.model.vo.Event;

@Mapper
public interface CultureMapper {
	
	// DB 주입 확인을 위해 만들었습니다
	List<Culture> selectTable();
	// DB 주입을 위해 만들었습니다.
	int insertCulture(Culture item);
	
	int selectCount();
	
	Culture selectCultureByContentId(int contentid);
	
	void createTableCulture();
	
	List<Culture> selectCultureList(CultureParam param);
	
	int selectCultureCount(CultureParam param);

	List<Culture> getListForMap();
}
