package com.multi.mvc.culture.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Food {
	private int CONTENTID; // INT NULL,
	private int CONTENTTYPEID; // INT NULL,
	private String HOMEPAGE; // VARCHAR(600) NULL,
	private String TEL; // VARCHAR(100) NULL,
	private String TITLE; // VARCHAR(200) NULL,
	private String FIRSTIMAGE; // VARCHAR(200) NULL,
	private String FIRSTIMAGE2; // VARCHAR(200) NULL,
	private String AREACODE; // VARCHAR(100) NULL,
	private String SIGUNGUCODE; // VARCHAR(100) NULL,
	private String CAT1; // VARCHAR(100) NULL,
	private String CAT2; // VARCHAR(100) NULL,
	private String CAT3; // VARCHAR(100) NULL,
	private String ADDR1; // VARCHAR(100) NULL,
	private String ADDR2; // VARCHAR(100) NULL,
	private String ZIPCODE; // VARCHAR(100) NULL,
	private String MAPX; // VARCHAR(100) NULL,
	private String MAPY; // VARCHAR(100) NULL,
	private String OVERVIEW; // VARCHAR(100) NULL,
	private String MLEVEL; // VARCHAR(100) NULL,
	private String CHKCREDITCARDFOOD; // VARCHAR(100) NULL,
	private String DISCOUNTINFOFOOD; // VARCHAR(100) NULL,
	private String FIRSTMENU; // VARCHAR(100) NULL,
	private String INFOCENTERFOOD; // VARCHAR(100) NULL,
	private String KIDSFACILITY; // VARCHAR(100) NULL,
	private String OPENDATEFOOD; // VARCHAR(100) NULL,
	private String OPENTIMEFOOD; // VARCHAR(100) NULL,
	private String PACKING; // VARCHAR(100) NULL,
	private String PARKINGFOOD; // VARCHAR(100) NULL,
	private String RESERVATIONFOOD; // VARCHAR(100) NULL,
	private String RESTDATEFOOD; // VARCHAR(100) NULL,
	private String SCALEFOOD; // VARCHAR(100) NULL,
	private String SEAT; // VARCHAR(100) NULL,
	private String SMOKING; // VARCHAR(100) NULL,
	private String TREATMENU; // VARCHAR(100) NULL,
	private String LCNSNO; // VARCHAR(100) NULL
}
