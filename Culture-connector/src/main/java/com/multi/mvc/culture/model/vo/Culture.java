package com.multi.mvc.culture.model.vo;

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
public class Culture extends CultureParent {
	
	private int contentid;
    private int contenttypeid;
	private String scale;
	private String usefee;
	private String discountinfo;
	private String spendtime;
	private String parkingfee;
	private String infocenterculture;
	private String accomcountculture;
	private String usetimeculture;
	private String restdateculture;
	private String parkingculture;
	private String chkbabycarriageculture;
	private String chkpetculture;
	private String chkcreditcardculture;

	


}
