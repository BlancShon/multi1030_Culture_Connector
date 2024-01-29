package com.multi.mvc.culture.model.vo;

import java.util.Arrays;
import java.util.List;

// BoardParam : 검색창 파라메터 받아오는 객체
// 설계 요령 
// 1. form의 name과 종류와 일치해서 파라메터 설계 필요
// 2. types의 경우 마이바티스 호환성을 위해 typeList 설계 추가 필요
// 3. 페이징 처리를 위해 page, limit, offset을 따로 설계 필요

public class CultureParam {
	// html - form의 name과 일치하는 파라메터
	private String searchType;
	private String searchValue;
	private String[] types;
	private List<String> typeList;
	private String area;
	private String[] localTypes;
	private List<String> localTypeList;

	// 페이징 인자
	private int page;
	private int limit;
	private int offset;

	public CultureParam() {
		super();
		page = 1; 
	}

	public CultureParam(String searchType, String searchValue, String[] types, List<String> typeList, String area,
			String[] localTypes, int page, int limit, int offset) {
		super();
		this.searchType = searchType;
		this.searchValue = searchValue;
		this.types = types;
		this.typeList = typeList;
		this.area = area;
		this.localTypes = localTypes;
		setLocalTypes(localTypes);
		this.page = page;
		this.limit = limit;
		this.offset = offset;
	}

	@Override
	public String toString() {
		return "CultureParam [searchType=" + searchType + ", searchValue=" + searchValue + ", types="
				+ Arrays.toString(types) + ", typeList=" + typeList + ", area=" + area + ", localTypes="
				+ Arrays.toString(localTypes) + ", localTypeList=" + localTypeList + ", page=" + page + ", limit="
				+ limit + ", offset=" + offset + "]";
	}

	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public String getSearchValue() {
		return searchValue;
	}

	public void setSearchValue(String searchValue) {
		this.searchValue = searchValue;
	}

	public String[] getTypes() {
		return types;
	}

	public void setTypes(String[] types) {
		this.types = types;
	}

	public List<String> getTypeList() {
		return typeList;
	}

	public void setTypeList(List<String> typeList) {
		this.typeList = typeList;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String[] getLocalTypes() {
		return localTypes;
	}

	public void setLocalTypes(String[] localTypes) {
		this.localTypes = localTypes;
		if(localTypes != null) {
			localTypeList = List.of(localTypes);
		}
	}

	public List<String> getLocalTypeList() {
		return localTypeList;
	}

	public void setLocalTypeList(List<String> localTypeList) {
		this.localTypeList = localTypeList;
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

	

}
