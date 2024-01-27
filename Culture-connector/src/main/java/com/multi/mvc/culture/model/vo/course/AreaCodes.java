package com.multi.mvc.culture.model.vo.course;

import java.util.Vector;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class AreaCodes {
	private String name;
	private String code;
	private static Vector<AreaCodes> areaList;
	
	static {
		areaList = new Vector<>();
		areaList.add(new AreaCodes("서울","1"));     
		areaList.add(new AreaCodes("경기","31"));    
		areaList.add(new AreaCodes("인천","2"));     
		areaList.add(new AreaCodes("대전","3"));     
		areaList.add(new AreaCodes("대구","4"));     
		areaList.add(new AreaCodes("광주","5"));     
		areaList.add(new AreaCodes("세종","8"));     
		areaList.add(new AreaCodes("강원","32"));    
		areaList.add(new AreaCodes("전북","37"));    
		areaList.add(new AreaCodes("경북","35"));    
		areaList.add(new AreaCodes("충북","33"));    
		areaList.add(new AreaCodes("전남","38"));    
		areaList.add(new AreaCodes("경남","36"));    
		areaList.add(new AreaCodes("충남","34"));    
		areaList.add(new AreaCodes("울산","7"));     
		areaList.add(new AreaCodes("부산","6"));     
		areaList.add(new AreaCodes("제주","39"));    
	}                                                
	
	public AreaCodes(String name, String code) {
		super();
		this.name = name;
		this.code = code;
	}
	public static Vector<AreaCodes> getAreaList() {
		return areaList;
	}
	

}
