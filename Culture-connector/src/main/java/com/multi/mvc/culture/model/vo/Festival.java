package com.multi.mvc.culture.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Festival {
	
	private int contentid;
	private int contenttyped;
	private String homepage;
	private String tel;
	private String title;
	private String firstimage;
	private String firstimage2;  
	private String areacode;
	private String sigungucode;
	private String cat1;
	private String cat2;
	private String cat3;
	private String addr1;
	private String addr2;
	private String zipcode;
	private String mapx;
	private String mapy;
	private String overview;
	private String mlevel;
	
	private String bookingplace;
	private String discountinforfestival;
	private Date eventenddate;
	private String eventhomepage;
	private String eventplace;
	private Date eventstartdate;
	private String festivalgrade;
	private String playtime;
	private String program;
	private String spendtitmefestival;
	private String sponsor1;
	private String sponsor1tel;
	private String sponsor2;
	private String sponsor2tel;
	private String subevent;
	private int usetimefestival;

}
