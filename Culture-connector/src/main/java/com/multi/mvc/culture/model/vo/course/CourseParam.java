package com.multi.mvc.culture.model.vo.course;

import java.util.Arrays;
import java.util.List;

public class CourseParam {

	private String[] searchType;
	private List<String> searchTypeList;
	private String searchValue;
	private String area;
	private String[] localTypes;
	private List<String> localTypeList;
	private String[] types;
	private List<String> typeList;
	

	// 페이징 인자
	private int page;
	private int limit;
	private int offset;

	public CourseParam() {
		super();
		page = 1; 
	}
	
	

	public String getArea() {
		return area;
	}

	public CourseParam(String[] searchType, String searchValue, String area, String[] localTypes, String[] types,
			int page, int limit, int offset) {
		super();
		this.searchType = searchType;
		
		this.searchValue = searchValue;
		this.area = area;
		setTypes(types);
		setLocalTypes(localTypes);
		this.page = page;
		this.limit = limit;
		this.offset = offset;
	}



	public void setArea(String area) {
		this.area = area;
	}

	public String[] getTypes() {
		return types;
	}

	public void setTypes(String[] types) {
		this.types = types;
		if(types != null) {
			typeList = List.of(types);
		}
	}
	
	public String[] getLocalTypes() {
		return localTypes;
	}



	public List<String> getLocalTypeList() {
		return localTypeList;
	}



	public void setLocalTypes(String[] localTypes) {
		this.localTypes = localTypes;
		if(localTypes != null) {
			localTypeList = List.of(localTypes);
		}
	}

	public List<String> getTypeList() {
		return typeList;
	}

	public void setTypeList(List<String> typeList) {
		this.typeList = typeList;
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

	@Override
	public String toString() {
		return "CourseParam [area=" + area + ", types=" + Arrays.toString(types) + ", typeList=" + typeList + ", page="
				+ page + ", limit=" + limit + ", offset=" + offset + "]";
	}

	public String[] getSearchType() {
		return searchType;
	}

	public void setSearchType(String[] searchType) {
		this.searchType = searchType;
		if(searchType != null) {
			searchTypeList = Arrays.asList(searchType);
		}
	}

	public List<String> getSearchTypeList() {
		return searchTypeList;
	}



	public String getSearchValue() {
		return searchValue;
	}

	public void setSearchValue(String searchValue) {
		this.searchValue = searchValue;
	}
	
	
	
	
}
