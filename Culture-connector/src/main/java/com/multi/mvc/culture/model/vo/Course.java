package com.multi.mvc.culture.model.vo;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class Course extends CultureParent{
	
	private int contentid;                          
	private int contenttypeid;                   
	private String infocentertourcourse;
	private String schedule;
	private String taketime;
	private String theme;
	private String distance;
	
}
