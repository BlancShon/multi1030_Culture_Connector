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
public class Festival {
	
	private int fno;
	private String addr1;
	private String addr2;
	private int booktour;
	private String cat1;
	private String cat2;
	private String cat3;
	private int contentid;
	private String contenttypeid;
	private Date createdtime;
	private String eventstartdate;
	private String eventenddate;
	private String firstimage;
	private String firstimage2;
	private String cpyrhtDivCd;
	private String mapx;
	private String mapy;
	private int mlevel;
	private Date modifiedtime;
	private int areacode;
	private int sigungucode;
	private String tel;
	private String title;
	
	
	
	
}
