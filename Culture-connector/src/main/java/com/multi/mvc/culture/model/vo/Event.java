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
public class Event {
	                                                
	private int eno;                              
	private String addr1;                         
	private String addr2;                         
	private int areacode;                         
	private int booktour;                         
	private String cat1;                          
	private String cat2;                          
	private String cat3;                          
	private int contentid;                        
	private String contenttypeid;                 
	private Date createdtime;                     
	private String firstimage;                    
	private String firstimage2;                   
	private String cpyrhtDivCd;                   
	private String mapx;                          
	private String mapy;                          
	private int mlevel;                           
	private Date modifiedtime;                    
	private int sigungucode;                      
	private String tel;                           
	private String title;                         
	private String zipcode;       
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
