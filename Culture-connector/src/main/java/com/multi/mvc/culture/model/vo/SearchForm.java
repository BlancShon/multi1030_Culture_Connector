package com.multi.mvc.culture.model.vo;

import java.util.List;

import lombok.Data;

@Data
public class SearchForm {

	private String keyword;			// 키워드
	private String progress; 		// 현재 진행중인가/ 예정인가/ 끝났는가
	private String upToDate;		// 날짜 순
	private List<String> regions;	// 지역
	private List<String> contentTypes;	// 콘텐츠타입
	private List<String> foodTypes;	// 음식타입(한식, 중식, 일식 등등)
	
	
}
