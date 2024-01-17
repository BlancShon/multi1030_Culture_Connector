package com.multi.mvc.culture.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CultureContent {
	
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
	
	private String accomcountculture;
	private String chkbabycarriageculture;
	private String chkcreditcardculture;
	private String chkpetculture;
	private String discountinfo;
	private String infocenterculture;
	private String parkingculture;
	private String parkingfee;
	private String restdateculture;
	private String usefee;
	private String usetimeculture;
	private String scale;
	private String spendtime;

}
