package com.multi.mvc.culture.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.api.OpenApiManagerForXml_TouristAttraction;
import com.multi.mvc.culture.model.mapper.TouristAttractionMapper;

//@Service    에러 제거후 여기 주석 푸셔야합니다!!!!
public class TouristAttractionService {

    @Autowired
    private TouristAttractionMapper mapper;

    public int save() {
        int result = 0;

        mapper.insertTouristAttractions(OpenApiManagerForXml_TouristAttraction.parse());
        return result;
    }

    public int count() {
        return mapper.selectTouristAttractionCount();
    }
}
