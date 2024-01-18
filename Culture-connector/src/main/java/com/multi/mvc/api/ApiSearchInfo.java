package com.multi.mvc.api;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class ApiSearchInfo {

	// 공공데이터 포털 서비스 키값 안되면 하나씩 주석풀고 해결해보기 or 본인 서비스키 입력해보기
	public static final String SERVICE_KEY="Wo73FahwmDVG3dBFuSoGkal0zxWVm3bLc51YH6ZsjlDF6AchfxQXRi5jlaWqlqntkMCU7TUF8e6CcKY3vDzaew==";
//	public static final String SERVICE_KEY="Wo73FahwmDVG3dBFuSoGkal0zxWVm3bLc51YH6ZsjlDF6AchfxQXRi5jlaWqlqntkMCU7TUF8e6CcKY3vDzaew%3D%3D";
//	public static final String SERVICE_KEY="p%2BFVc5OsZMt6%2FY2XE0P8H0C1yMbOJNO1uhCrn4dNsKVyYG6lt0DxS%2Fsv4Gkw0Mpeu4AEoRzZ6b9zbhxajBR9%2FQ%3D%3D";
	
	
	// 페스티벌 기본 url 입니다
	public static final String FESTIVAL_URL = "https://apis.data.go.kr/B551011/KorService1/searchFestival1?";
	// 
	public static final String AREA_BASED_URL = "https://apis.data.go.kr/B551011/KorService1/areaBasedSyncList1?";
	
	// 최대 몇개의 데이터를 가져올것인지 정하시면 됩니다. 
	public static String numOfRows = "numOfRows=5";
	// json 원하지 않으신다면 지워버리시면 됩니다.
	public static String type = "&_type=json";
	public static String mobileOs = "&MobileOS=etc";
	public static String mobileApp = "&MobileApp=test";
	
	public static String eventStartDate;
	
	// 필수값들 넣은 url
	public static StringBuffer requiredValueURL(String basicUrl) {
		StringBuffer sb = new StringBuffer(basicUrl);
		return sb.append(numOfRows).append(mobileOs).append(mobileApp)
				.append(type).append(getServiceKey());
	}
	
	// 페스티발 필수 url 
	public static String getFestivalURL() {
		StringBuffer sb = requiredValueURL(FESTIVAL_URL);
		return sb.append(eventStartDate()).toString();
	}
	
	// 이벤트 필수 url
	public static String getEventURL() {
		StringBuffer sb = requiredValueURL(AREA_BASED_URL);
		return sb.append(arrange()).append(contentTypeId("15")).toString();
	}

	
	
	public static String eventStartDate() {
		return "&eventStartDate=" + LocalDate.now().format(DateTimeFormatter.ofPattern("yyyyMMdd")).toString();
	}
	
	public static String getServiceKey() {
		return "&serviceKey="+SERVICE_KEY;
	}
	
	public static String pageNo(String num) {
		return "&pageNo=" + num;
	}
	
	public static String areaCode(String areaCode) {
		return "&areaCode=" + areaCode;
	}
	
	public static String sigunguCode(String sigunguCode) {
		return "&sigunguCode=" + sigunguCode;
	}
	
	public static String cat1(String cat1) {
		return "&cat1="+cat1;
	}
	
	public static String cat2(String cat2) {
		return "&cat1="+cat2;
	}
	
	public static String cat3(String cat3) {
		return "&cat1="+cat3;
	}
	
	// 기본은 수정일순으로 돼있습니다. 바꾸시려면 파라미터에 정렬구분코드 입력해주세요
	public static String arrange() {
		return "&arrange="+"c";
	}
	
	// 정렬 구분 (A=제목순, C=수정일순, D=생성일순) 대표이미지가 반드시 있는 정렬 (O=제목순, Q=수정일순, R=생성일순)
	public static String arrange(String code) {
		return "&arrange="+code;
	}
	
//	관광타입(12:관광지, 14:문화시설, 15:축제공연행사, 25:여행코스, 28:레포츠, 32:숙박, 38:쇼핑, 39:음식점) ID
	public static String contentTypeId(String code) {
		return "&contentTypeId="+code;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
