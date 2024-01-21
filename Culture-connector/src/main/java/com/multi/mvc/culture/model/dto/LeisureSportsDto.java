package com.multi.mvc.culture.model.dto;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class LeisureSportsDto {
	
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
