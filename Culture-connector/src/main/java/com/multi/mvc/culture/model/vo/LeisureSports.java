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
public class LeisureSports {
	                                                
	private int contentid;                        
	private int contenttypeid;                 
	private String addr1;                         
	private String addr2;                         
	private int areacode;                         
	private int booktour;                         
	private String cat1;                          
	private String cat2;                          
	private String cat3;                          
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
	
	private String openperiod;
	private String reservation;
	private String infocenterleports;
	private String scaleleports;
	private String accomcountleports;
	private String restdateleports;
	private String usetimeleports;
	private String usefeeleports;
	private String expagerangeleports;
	private String parkingleports;
	private String parkingfeeleports;
	private String chkbabycarriageleports;
	private String chkpetleports;
	private String chkcreditcardleports;
                                      
}
