package com.multi.mvc.culture.model.vo;

import java.util.Arrays;
import java.util.List;

public class FoodParam {

// BoardParam : 검색창 파라메터 받아오는 객체
// 설계 요령 
// 1. form의 name과 종류와 일치해서 파라메터 설계 필요
// 2. types의 경우 마이바티스 호환성을 위해 typeList 설계 추가 필요
// 3. 페이징 처리를 위해 page, limit, offset을 따로 설계 필요

	// html - form의 name과 일치하는 파라메터
	private String searchValue;
	private String[] foodtypes;
	private List<String> foodtypeList;
	private String dataValue;
	
	private String[] localtypes;
	private List<String> localtypeList;

	// 페이징 인자
	private int page;
	private int limit;
	private int offset;

	public FoodParam() {
		super();
		page = 1; 
	}

	
	public String getSearchValue() {
		return searchValue;
	}


	public void setSearchValue(String searchValue) {
		this.searchValue = searchValue;
	}


	public List<String> getFoodtypeList() {
		return foodtypeList;
	}


	public void setFoodtypeList(List<String> foodtypeList) {
		this.foodtypeList = foodtypeList;
	}



	public List<String> getLocaltypeList() {
		return localtypeList;
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


	public String[] getLocaltypes() {
		return localtypes;
	}

	public String[] getFoodtypes() {
		return foodtypes;
	}
	
	public void setLocaltypes(String[] localtypes) {
		this.localtypes = localtypes;
		if(localtypes != null) {
			localtypeList = List.of(localtypes);
		}
	}
	

	public void setFoodtypes(String[] foodtypes) {
		this.foodtypes = foodtypes;
		if(foodtypes != null) {
			foodtypeList = List.of(foodtypes);
		}
	}
	@Override
	public String toString() {
		return "FoodParam [searchValue=" + searchValue + ", foodtypes=" + Arrays.toString(foodtypes) + ", foodtypeList="
				+ foodtypeList + ", localtypes=" + Arrays.toString(localtypes) + ", localtypeList=" + localtypeList
				+ ", page=" + page + ", limit=" + limit + ", offset=" + offset + "]";
	}


	public FoodParam(String searchValue, String[] foodtypes, List<String> foodtypeList, String[] localtypes,
			List<String> localtypeList, int page, int limit, int offset) {
		super();
		this.searchValue = searchValue;
		this.foodtypes = foodtypes;
		this.foodtypeList = foodtypeList;
		this.localtypes = localtypes;
		this.localtypeList = localtypeList;
		this.page = page;
		this.limit = limit;
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