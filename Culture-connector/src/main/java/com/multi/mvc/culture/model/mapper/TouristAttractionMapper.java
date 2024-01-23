package com.multi.mvc.culture.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.culture.model.vo.TouristAttraction;

@Mapper   
public interface TouristAttractionMapper {

	List<TouristAttraction> selectTable();
	
    int insertTouristAttraction(TouristAttraction item);

    void createTableTourist();
    
    int selectTouristAttractionCount();
    
    
}
