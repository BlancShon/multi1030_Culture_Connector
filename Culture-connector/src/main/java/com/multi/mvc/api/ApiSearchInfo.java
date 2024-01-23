package com.multi.mvc.api;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class ApiSearchInfo {
	
	// 고재목 카카오키
	public static final String KOJAE_KEY="Wo73FahwmDVG3dBFuSoGkal0zxWVm3bLc51YH6ZsjlDF6AchfxQXRi5jlaWqlqntkMCU7TUF8e6CcKY3vDzaew==";
//	public static final String KOJAE_KEY="Wo73FahwmDVG3dBFuSoGkal0zxWVm3bLc51YH6ZsjlDF6AchfxQXRi5jlaWqlqntkMCU7TUF8e6CcKY3vDzaew%3D%3D";
	// 고재목2 네이버키
	public static final String KOJAE_KEY2="oW%2FrS%2BFT6fgy036VPTpERN4pM3sBFCi2BwpZKn0nVfCts2U4npVDdN%2Fh152OFXPOP1Kt4APjeqSmJhVFbAE7uA%3D%3D";
	// 고재목3 회원가입키
//	public static final String KOJAE_KEY3="EOhQWsO5B8yK%2FBsejXeqdcGFxsrVBGaLRymdYxQjlXBhmIZWF0BEt5NiAMGk08XMTUMEMseUO1ngMzre4RueNg%3D%3D";
	public static final String KOJAE_KEY3="EOhQWsO5B8yK/BsejXeqdcGFxsrVBGaLRymdYxQjlXBhmIZWF0BEt5NiAMGk08XMTUMEMseUO1ngMzre4RueNg==";
	
	
	// 장성희님 서비스키
	public static final String JANGSUNG_KEY="p%2BFVc5OsZMt6%2FY2XE0P8H0C1yMbOJNO1uhCrn4dNsKVyYG6lt0DxS%2Fsv4Gkw0Mpeu4AEoRzZ6b9zbhxajBR9%2FQ%3D%3D";
	// 이병집님 서비스키
	public static final String LEEBYUNG_KEY="Wo73FahwmDVG3dBFuSoGkal0zxWVm3bLc51YH6ZsjlDF6AchfxQXRi5jlaWqlqntkMCU7TUF8e6CcKY3vDzaew%3D%3D";
	// 김진경님 서비스키
	public static final String KIMJIN_KEY="YTJQhiGqFaJcSgNyq0wvDHuRUmE56hVRG63knwqWhvJrdeidrPvz4XZeoCVamdcKeml7TDUsG7qGCcdSqxa8zg==";
	// 박현님 서비스키
	public static final String PARKHYUN_KEY="yX2RtRptCoLL/kspIFHuDPrRpow4DHVtbw+NJDatd/cuSRWrPN4IcIivuC6y+O68h2uzkJOdWltsrYjQbiEqaA==";
	
	
	// 페스티벌 기본 url 입니다
	public static final String FESTIVAL_URL = "https://apis.data.go.kr/B551011/KorService1/searchFestival1?";
	// 관광정보 동기화 목록 조회 기본 url 입니다.
	public static final String AREA_BASED_URL = "https://apis.data.go.kr/B551011/KorService1/areaBasedSyncList1?";
	// 지역 코드 조회 기본 url 입니다.
	public static final String AREA_CODE_URL = "https://apis.data.go.kr/B551011/KorService1/areaCode1?numOfRows=100&MobileOS=etc&MobileApp=test&_type=json";
	// 디테일 정보 조회 기본 url 입니다.
	public static final String DETAIL_INFO_URL = "https://apis.data.go.kr/B551011/KorService1/detailIntro1?"; 
	// 추가 사진 정보 조회 기본 url 입니다.
	public static final String IMAGE_INFO_URL = "http://apis.data.go.kr/B551011/KorService1/detailImage1?subImageYN=Y&";
	
	// 최대 몇개의 데이터를 가져올것인지 정하시면 됩니다. 
	public static String numOfRows = "numOfRows=180";
	// json 원하지 않으신다면 지워버리시면 됩니다
	public static String type = "&_type=json";
	public static String mobileOs = "&MobileOS=etc";
	public static String mobileApp = "&MobileApp=test";
	
	
	// 필수값들 넣은 url
	public static StringBuffer requiredValueURL(String basicUrl) {
		StringBuffer sb = new StringBuffer(basicUrl);
		return sb.append(numOfRows).append(mobileOs).append(mobileApp)
				.append(type).append(arrange());
	}
	
	// 디테일 정보 url
	public static String getDetailURL(String contentId, String contentTypeId){
		StringBuffer sb = new StringBuffer(DETAIL_INFO_URL);
		return sb.append(numOfRows).append(mobileOs).append(mobileApp)
				.append(type).append(contentId(contentId)).append(contentTypeId(contentTypeId)).toString();
	}
	
	// 이미지 정보 url
	public static String getImageURL(String contentId) {
		StringBuffer sb = new StringBuffer(IMAGE_INFO_URL);
		return sb.append(numOfRows).append(mobileOs).append(mobileApp)
				.append(type).append(contentId(contentId)).append("&imageYN=Y").toString();
	}
	
	// 음식이미지 정보 url
	public static String getFoodImageURL(String contentId) {
		StringBuffer sb = new StringBuffer(IMAGE_INFO_URL);
		return sb.append(numOfRows).append(mobileOs).append(mobileApp)
				.append(type).append(contentId(contentId)).append("&imageYN=N").toString();
	}
	
	// 페스티발 필수 url 
	public static String getFestivalURL() {
		StringBuffer sb = new StringBuffer(FESTIVAL_URL);
		return sb.append("numOfRows=300").append(mobileOs).append(mobileApp)
				.append(type).append(getServiceKey("고재목3")).append(eventStartDate()).toString();
	}
	
	// 컨텐트 타입 별 url 해결사
	public static String getContentTypeURL(String contentType) {
		StringBuffer sb = requiredValueURL(AREA_BASED_URL);
		return sb.append(contentTypeId(contentType)).toString();
	}

	public static String getAreaCodeURL() {
		return AREA_CODE_URL + "&serviceKey="+ KOJAE_KEY;
	}
	
	public static String getSigunguCodeURL(String areaCode) {
		return getAreaCodeURL() + areaCode(areaCode);
	}
	
	public static String eventStartDate() {
		return "&eventStartDate=" + LocalDate.now().format(DateTimeFormatter.ofPattern("yyyyMMdd")).toString();
	}
	
	public static String getServiceKey(String name) {
		String serviceKey = null;
		if (name.equals("고재목")) {
			serviceKey = KOJAE_KEY;
		} else if (name.equals("장성희")) {
			serviceKey = JANGSUNG_KEY;
		} else if (name.equals("이병집")) {
			serviceKey = LEEBYUNG_KEY;
		} else if (name.equals("김진경")) {
			serviceKey = KIMJIN_KEY;
		} else if (name.equals("박현")) {
			serviceKey = PARKHYUN_KEY;
		} else if (name.equals("고재목2")) {
			serviceKey = KOJAE_KEY2;
		} else if (name.equals("고재목3")) {
			serviceKey = KOJAE_KEY3;
		}
		
		return "&serviceKey="+serviceKey;
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
	
	// 기본은 이미지가 있는 수정일순으로 돼있습니다. 바꾸시려면 파라미터에 정렬구분코드 입력해주세요
	public static String arrange() {
		return "&arrange="+"q";
	}
	
	// 정렬 구분 (A=제목순, C=수정일순, D=생성일순) 대표이미지가 반드시 있는 정렬 (O=제목순, Q=수정일순, R=생성일순)
	public static String arrange(String code) {
		return "&arrange="+code;
	}
	
//	관광타입(12:관광지, 14:문화시설, 15:축제공연행사, 25:여행코스, 28:레포츠, 32:숙박, 38:쇼핑, 39:음식점) ID
	public static String contentTypeId(String contentType) {
		return "&contentTypeId=" + contentType;
	}
	
	public static String contentId(String contentId) {
		return "&contentId=" + contentId;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
