package com.multi.mvc.culture.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.api.OpenApiManagerForXml_TouristAttraction;
import com.multi.mvc.culture.model.mapper.TouristAttractionMapper;

@Service    
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
    
    public void createTable() {
    	mapper.createTableTourist();
    }
}
