package com.multi.mvc.culture.model.vo;

import java.util.Arrays;
import java.util.List;

public class FestivalParam {

// BoardParam : 검색창 파라메터 받아오는 객체
// 설계 요령 
// 1. form의 name과 종류와 일치해서 파라메터 설계 필요
// 2. types의 경우 마이바티스 호환성을 위해 typeList 설계 추가 필요
// 3. 페이징 처리를 위해 page, limit, offset을 따로 설계 필요

	// html - form의 name과 일치하는 파라메터
	private String searchValue;
	private String searchDate;
	private String[] festivaltypes;
	private List<String> festivaltypeList;
	
	private String[] localtypes;
	private List<String> localtypeList;

	// 페이징 인자
	private int page;
	private int limit;
	private int offset;

	public FestivalParam() {
		super();
		page = 1; 
	}

	public FestivalParam(String searchValue, String searchDate, String[] festivaltypes, List<String> festivaltypeList,
			String[] localtypes, List<String> localtypeList, int page, int limit, int offset) {
		super();
		this.searchValue = searchValue;
		this.searchDate = searchDate;
		this.festivaltypes = festivaltypes;
		this.festivaltypeList = festivaltypeList;
		this.localtypes = localtypes;
		this.localtypeList = localtypeList;
		this.page = page;
		this.limit = limit;
		this.offset = offset;
	}

	@Override
	public String toString() {
		return "FestivalParam [searchValue=" + searchValue + ", searchDate=" + searchDate + ", festivaltypes="
				+ Arrays.toString(festivaltypes) + ", festivaltypeList=" + festivaltypeList + ", localtypes="
				+ Arrays.toString(localtypes) + ", localtypeList=" + localtypeList + ", page=" + page + ", limit="
				+ limit + ", offset=" + offset + "]";
	}

	public String getSearchValue() {
		return searchValue;
	}

	public void setSearchValue(String searchValue) {
		this.searchValue = searchValue;
	}

	public String getSearchDate() {
		return searchDate;
	}

	public void setSearchDate(String searchDate) {
		this.searchDate = searchDate;
	}

	public String[] getFestivaltypes() {
		return festivaltypes;
	}


	public List<String> getFestivaltypeList() {
		return festivaltypeList;
	}

	public void setFestivaltypeList(List<String> festivaltypeList) {
		this.festivaltypeList = festivaltypeList;
	}

	public String[] getLocaltypes() {
		return localtypes;
	}


	public List<String> getLocaltypeList() {
		return localtypeList;
	}
	public void setLocaltypes(String[] localtypes) {
		this.localtypes = localtypes;
		if(localtypes != null) {
			localtypeList = List.of(localtypes);
		}
	}
	

	public void setFestivaltypes(String[] festivaltypes) {
		this.festivaltypes = festivaltypes;
		if(festivaltypes != null) {
			festivaltypeList = List.of(festivaltypes);
		}
	}

	public void setLocaltypeList(List<String> localtypeList) {
		this.localtypeList = localtypeList;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getLimit() {
		return limit;
	}

	public void setLimit(int limit) {
		this.limit = limit;
	}

	public int getOffset() {
		return offset;
	}

	public void setOffset(int offset) {
		this.offset = offset;
	}

	


	// Spring command 패턴에서는 setter로 인자를 주입함 -> 주입 받은 객체가 null이 아니면 list로 바꿔서 활용
//	public void setTypes(String[] types) {
//		this.types = types;
//		if(types != null) {
//			typeList = List.of(types);
//		}
//	}



}