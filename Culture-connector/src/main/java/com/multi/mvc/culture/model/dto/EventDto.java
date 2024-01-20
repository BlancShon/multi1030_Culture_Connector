package com.multi.mvc.culture.model.dto;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.multi.mvc.culture.model.vo.Course;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class EventDto {

	private int contentId;
    private int contentTypeId;
    private String sponsor1;
    private String sponsor1tel;
    private String sponsor2;
    private String sponsor2tel;
    private Date eventEndDate;
    private String playtime;
    private String eventPlace;
    private String eventHomepage;
    private String agelimit;
    private String bookingplace;
    private String placeinfo;
    private String subevent;
    private String program;
    private Date eventStartDate;
    private String usetimefestival;
    private String discountinfofestival;
    private String spendtimefestival;
    private String festivalgrade;
                                  
}
