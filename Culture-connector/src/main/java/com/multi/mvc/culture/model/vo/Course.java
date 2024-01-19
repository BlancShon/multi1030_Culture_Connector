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
public class Course {
	
	private int courseNo;
	private int areacode;
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
	private String title;

}
