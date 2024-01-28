package com.multi.mvc.culture.model.vo;

import java.util.Map;

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
public class Course extends CultureParent{
	
	private int contentid;                          
	private int contenttypeid;                   
	private String infocentertourcourse;
	private String schedule;
	private String taketime;
	private String theme;
	private String distance;

	
	private String subcontentid0;
	private String subcontenttypeid0;
	private String subcontenttitle0;
	private String subcontentfirstimage0;
	private String subcontentadd10;
	private String subcontentadd20;
	private String subcontentaddmapx0;
	private String subcontentaddmapy0;
	private String subcontentaddoverview0;
	private String subcontentaddhomepage0;
	
    private String subcontentid1;
    private String subcontenttypeid1;
    private String subcontenttitle1;
    private String subcontentfirstimage1;
    private String subcontentadd11;
    private String subcontentadd21;
    private String subcontentaddmapx1;
    private String subcontentaddmapy1;
    private String subcontentaddoverview1;
    private String subcontentaddhomepage1;

    private String subcontentid2;
    private String subcontenttypeid2;
    private String subcontenttitle2;
    private String subcontentfirstimage2;
    private String subcontentadd12;
    private String subcontentadd22;
    private String subcontentaddmapx2;
    private String subcontentaddmapy2;
    private String subcontentaddoverview2;
    private String subcontentaddhomepage2;

    private String subcontentid3;
    private String subcontenttypeid3;
    private String subcontenttitle3;
    private String subcontentfirstimage3;
    private String subcontentadd13;
    private String subcontentadd23;
    private String subcontentaddmapx3;
    private String subcontentaddmapy3;
    private String subcontentaddoverview3;
    private String subcontentaddhomepage3;

    private String subcontentid4;
    private String subcontenttypeid4;
    private String subcontenttitle4;
    private String subcontentfirstimage4;
    private String subcontentadd14;
    private String subcontentadd24;
    private String subcontentaddmapx4;
    private String subcontentaddmapy4;
    private String subcontentaddoverview4;
    private String subcontentaddhomepage4;

	
}
