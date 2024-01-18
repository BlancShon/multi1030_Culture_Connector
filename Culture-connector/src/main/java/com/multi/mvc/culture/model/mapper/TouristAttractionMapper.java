package com.multi.mvc.culture.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.culture.model.vo.TouristAttraction;

@Mapper   
public interface TouristAttractionMapper {

    void insertTouristAttractions(List<TouristAttraction> list);

    int selectTouristAttractionCount();
    
    
}
