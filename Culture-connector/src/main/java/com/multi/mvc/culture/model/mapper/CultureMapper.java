package com.multi.mvc.culture.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.culture.model.vo.Culture;

@Mapper
public interface CultureMapper {
	
	void insertCulture(List<Culture> list);
	
	int selectCount();
	
	void createTableCulture();


}
