package com.multi.mvc.culture.model.vo;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@JsonIgnoreProperties(ignoreUnknown = true)
public class LeisureSports extends CultureParent{
	private String openperiod;
	private String reservation;
	private String restdateleports;
	private String infocenterleports;
	private String scaleleports;
	private String accomcountleports;
	private String usetimeleports;
	private String usefeeleports;
	private String expagerangeleports;
	private String parkingleports;
	private String parkingfeeleports;
	private String chkbabycarriageleports;
	private String chkpetleports;
	private String chkcreditcardleports;
	@Override
	public String toString() {
		String temp = super.toString();
		temp += "LeisureSports [openperiod=" + openperiod + ", reservation=" + reservation + ", restdateleports="
				+ restdateleports + ", infocenterleports=" + infocenterleports + ", scaleleports=" + scaleleports
				+ ", accomcountleports=" + accomcountleports + ", usetimeleports=" + usetimeleports + ", usefeeleports="
				+ usefeeleports + ", expagerangeleports=" + expagerangeleports + ", parkingleports=" + parkingleports
				+ ", parkingfeeleports=" + parkingfeeleports + ", chkbabycarriageleports=" + chkbabycarriageleports
				+ ", chkpetleports=" + chkpetleports + ", chkcreditcardleports=" + chkcreditcardleports + "]";
		return temp;
	}
	
                     
	
}
