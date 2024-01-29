package com.multi.mvc.culture.model.vo;

import java.util.Arrays;
import java.util.List;
public class LeisureSportsParam {

	// html - form의 name과 일치하는 파라메터
		private String searchType;
		private String searchValue;
		private String[] locations;
		private List<String> locationList;
		private String[] leportsTypes;
		private List<String> leportsTypeList;

		// 페이징 인자
		private int page;
		private int limit;
		private int offset;

		public LeisureSportsParam() {
			super();
			page = 1; 
		}

		


		public LeisureSportsParam(String searchType, String searchValue, String[] locations, String[] leportsTypes,
				int page, int limit, int offset) {
			super();
			this.searchType = searchType;
			this.searchValue = searchValue;
			setLocations(locations);
			setLeportsTypes(leportsTypes);
			this.page = page;
			this.limit = limit;
			this.offset = offset;
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

		public String[] getLocations() {
			return locations;
		}

		public void setLocations(String[] locations) {
			this.locations = locations;
			if(locations != null) {
				locationList = List.of(locations);
			}
		}
		public void setLeportsTypes(String[] leportsTypes) {
			this.leportsTypes = leportsTypes;
			if(leportsTypes != null) {
				leportsTypeList = List.of(leportsTypes);
			}
		}

		public List<String> getLeportsTypeList() {
			return leportsTypeList;
		}

		public String[] getLeportsTypes() {
			return leportsTypes;
		}

		public List<String> getLocationList() {
			return locationList;
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
			return "LeisureSportsParam [searchType=" + searchType + ", searchValue=" + searchValue + ", locations="
					+ Arrays.toString(locations) + ", locationList=" + locationList + ", page=" + page + ", limit="
					+ limit + ", offset=" + offset + "]";
		}
		
}
