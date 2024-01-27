package com.multi.mvc.culture.model.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Data
@EqualsAndHashCode(callSuper=false)
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
    private String eventenddate;
    private String playtime;
    private String eventplace;
    private String eventhomepage;
    private String agelimit;
    private String bookingplace;
    private String placeinfo;
    private String subevent;
    private String program;
    private String eventstartdate;
    private String usetimefestival;
    private String discountinfofestival;
    private String spendtimefestival;
    private String festivalgrade;
//	
//    @SuppressWarnings("deprecation")
//	Date eventStaetDate1 = new Date(eventstartdate);
//    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
//    private String formattedDate = dateFormat.format(eventStaetDate1);
//
//    @SuppressWarnings("deprecation")
//	Date eventEndDate1 = new Date(eventenddate);
//    SimpleDateFormat dateFormat2 = new SimpleDateFormat("yyyy-MM-dd");
//    private String formattedDate2 = dateFormat2.format(eventEndDate1);
//	
	
	
}
