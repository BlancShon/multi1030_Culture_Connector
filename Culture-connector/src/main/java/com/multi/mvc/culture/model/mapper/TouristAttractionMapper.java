package com.multi.mvc.culture.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.culture.model.vo.TouristAttraction;

//@Mapper    에러 제거후 여기 주석 푸셔야합니다!!!!
public interface TouristAttractionMapper {

    void insertTouristAttractions(List<TouristAttraction> list);

    int selectTouristAttractionCount();
    
    
}
