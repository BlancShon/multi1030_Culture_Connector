package com.multi.mvc.culture.model.vo;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class Festival extends CultureParent  {
	
	private int contentid;
    private int contenttypeid;
	private String sponsor1;
    private String sponsor1tel;
    private String sponsor2;
    private String sponsor2tel;
    private Date eventenddate;
    private String playtime;
    private String eventplace;
    private String eventhomepage;
    private String agelimit;
    private String bookingplace;
    private String placeinfo;
    private String subevent;
    private String program;
    private Date eventstartdate;
    private String usetimefestival;
    private String discountinfofestival;
    private String spendtimefestival;
    private String festivalgrade;
	
   
	
	
	
}
