package com.multi.mvc.api;

import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.multi.mvc.culture.model.vo.Food;
public class OpenApiManagerForXml_food {

	public static final String KEY = "p%2BFVc5OsZMt6%2FY2XE0P8H0C1yMbOJNO1uhCrn4dNsKVyYG6lt0DxS%2Fsv4Gkw0Mpeu4AEoRzZ6b9zbhxajBR9%2FQ%3D%3D";
	public static final String KoreaRestaurantLists_XML_URL = "https://apis.data.go.kr/B551011/KorService1/areaBasedList1";
	public static final String RestaurantInfro_XML_URL = "http://apis.data.go.kr/B551011/KorService1/detailIntro1";
	public static final String RestaurantDetail_XML_URL = "http://apis.data.go.kr/B551011/KorService1/detailCommon1";
	public static final String ImageDetail_XML_URL = "http://apis.data.go.kr/B551011/KorService1/detailImage1";
//	http://apis.data.go.kr/B551011/KorService1/detailIntro1?ServiceKey=인증키&contentTypeId=39&contentId=2876431&MobileOS=ETC&MobileApp=AppTest
	public static void main(String[] args) {

		parse();
		// 1227
	}
	
	
	public static List<Food> parse() {
		//url 가공
		List<Food> list = new ArrayList<>();
 
		StringBuilder urlBuffer = new StringBuilder(KoreaRestaurantLists_XML_URL);
		urlBuffer.append("?" + "numOfRows=" + "50");
		urlBuffer.append("&" + "pageNo=" + "1");
		urlBuffer.append("&" + "MobileOS=" + "ETC");
		urlBuffer.append("&" + "MobileApp=" + "AppTest");
		urlBuffer.append("&" + "serviceKey=" + KEY);
		urlBuffer.append("&" + "listYN=" + "Y");
		urlBuffer.append("&" + "arrange=" + "A");
		urlBuffer.append("&" + "contentTypeId=" + "39");
		urlBuffer.append("&" + "areaCode=" + "");
		urlBuffer.append("&" + "sigunguCode=" + "");
		urlBuffer.append("&" + "cat1=" + "A05");
		urlBuffer.append("&" + "cat2=" + "");
		urlBuffer.append("&" + "cat3=" + "");

		System.out.println(urlBuffer);

		//url을 통해 http 요청 코드
		try {
			URL url = new URL(urlBuffer.toString());  // url 객체 생성
			HttpURLConnection conn = (HttpURLConnection) url.openConnection(); // url 통해서 http 연결 요청
			conn.setRequestMethod("GET"); // get 방식 요청을 알리는 코드
			
			// api마다 요청에 대한 프로퍼티 (속성) 셋팅이 달라지는 코드
			conn.setRequestProperty("Accept", "application/xml");
//			conn.setRequestProperty("Accept", "application/json");
//			conn.setRequestProperty("content-type", "application/xml");
//			conn.setRequestProperty("content-type", "application/json");
			int code = conn.getResponseCode(); // 실제 호출하는 부 url로부터 페이징 요청
			System.out.println("ResponseCode : ㅇㅇ1" + code);

			if (code < 200 || code > 300) {
				System.out.println("페이지가 잘못되었습니다.");
				return null;
			}

			// 3. 페이지 Parsing(해석)
			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
			DocumentBuilder db = dbf.newDocumentBuilder();

			Document doc = db.parse(conn.getInputStream()); // xml 부를 파싱하여 객체화
			doc.getDocumentElement().normalize();

			//System.out.println("Root Element : " + doc.getDocumentElement().getNodeName());
			System.out.println("======================================================");

			NodeList nList = doc.getElementsByTagName("item");
			for (int i = 0; i < nList.getLength(); i++) {
				Node node = nList.item(i);
//				System.out.println("\nCurrent Element : " + node.getNodeName());
				if (node.getNodeType() == Node.ELEMENT_NODE) {
					try {
						Element eElement = (Element) node;

						//System.out.println("DIV    : " + getStrData(eElement, "DIV"));
						//System.out.println("SERVICE : " + getStrData(eElement, "SERVICE"));
						//System.out.println("GUBUN  : " + getStrData(eElement, "GUBUN"));
						//System.out.println("SVCID : " + getStrData(eElement, "SVCID"));
						//System.out.println("MAXCLASSNM : " + getStrData(eElement, "MAXCLASSNM"));
						//System.out.println("V_MAX :  " + getTimeData(eElement, "V_MAX") );
						//System.out.println("SVCOPNBGNDT: " + getDateData(eElement, "SVCOPNBGNDT"));
						
						int contentId = getIntData(eElement, "contentid");
						int contentTypeId = getIntData(eElement, "contenttypeid");
						String homePage = getStrData(eElement, "homepage");
						String tel = getStrData(eElement, "tel");
						String title = getStrData(eElement, "title");
						String firstImage = getStrData(eElement, "firstimage");
						String firstImage2 = getStrData(eElement, "firstimage2");
						String areaCode = getStrData(eElement, "areacode");
						String siGunGuCode = getStrData(eElement, "sigungucode");
						String cat1 = getStrData(eElement, "cat1");
						String cat2 = getStrData(eElement, "cat2");
						String cat3 = getStrData(eElement, "cat3");
						String addr1 = getStrData(eElement, "addr1");
						String addr2 = getStrData(eElement, "addr2");
						String zipCode = getStrData(eElement, "zipcode");
						String mapX = getStrData(eElement, "mapx");
						String mapY = getStrData(eElement, "mapy");
						String overView = getStrData(eElement, "overview");
						String mlevel = getStrData(eElement, "mlevel");
						String chkcreditcardFood = getStrData(eElement, "chkcreditcardfood");
						String discountinfoFood = getStrData(eElement, "discountinfofood");
						String firstMenu = getStrData(eElement, "firstmenu");
						String infocenterFood = getStrData(eElement, "infocenterfood");
						String kidsFacility = getStrData(eElement, "kidsfacility");
						Date opendateFood = getDateData(eElement, "opendatefood");
						String opentimeFood = getStrData(eElement, "opentimefood");
						String packing = getStrData(eElement, "packing");
						String parkingFood = getStrData(eElement, "parkingfood");
						String reservationFood = getStrData(eElement, "reservationfood");
						String restdateFood = getStrData(eElement, "restdatefood");
						String scaleFood = getStrData(eElement, "scalefood");
						String seat = getStrData(eElement, "seat");
						String smoking = getStrData(eElement, "smoking");
						String treatMenu = getStrData(eElement, "treatmenu");
						String lcnsNo = getStrData(eElement, "lcnsno");
						String originImgurl1 = getStrData(eElement, "originimgurl");
						String originImgurl2 = getStrData(eElement, "originimgurl");
						String smallImgurl = getStrData(eElement, "smallimgurl");
						
						Food food = new Food(0, contentId, contentTypeId, homePage, tel, title, firstImage, firstImage2, areaCode, siGunGuCode, cat1, cat2, cat3, addr1, addr2, zipCode, mapX, mapY, overView, mlevel, chkcreditcardFood, discountinfoFood, firstMenu, infocenterFood, kidsFacility, opendateFood, opentimeFood, packing, parkingFood, reservationFood, 
								restdateFood, scaleFood, seat, smoking, treatMenu, lcnsNo, originImgurl1, originImgurl2, smallImgurl);
						
						
					
//						System.out.println(food);
						list.add(food);
					} catch (Exception e) {
						System.out.println("데이터가 잘못되었습니다!");
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
//	@AutOWIRED
//	PRIVate Food Food
	public static Food parse2(Food food){ // 인스턴스로 사용하기위해 인자에 리스트업된 푸드 객체 삽입
//		Food food = new Food();
//		food.getContentId();
		 
		StringBuilder urlBuilder = new StringBuilder(RestaurantInfro_XML_URL);

//		http://apis.data.go.kr/B551011/KorService1/detailIntro1?ServiceKey=인증키&contentTypeId=39&contentId=2876431&MobileOS=ETC&MobileApp=AppTest
		urlBuilder.append("?" + "serviceKey=" + KEY);
		urlBuilder.append("&" + "contentTypeId=" + "39");
		urlBuilder.append("&" + "contentId=" + food.getContentId());  // 푸드에 있는 여러 contentId를 기준으로 가져오게함 -> for문 필요 -> 여기는 파싱만하는 곳이니 service에서 포문사용
	
		urlBuilder.append("&" + "pageNo=" + "1");
		urlBuilder.append("&" + "MobileOS=" + "ETC");
		urlBuilder.append("&" + "MobileApp=" + "AppTest");
		
		try {
			URL url = new URL(urlBuilder.toString());  // url 객체 생성
			HttpURLConnection conn = (HttpURLConnection) url.openConnection(); // url 통해서 http 연결 요청
			conn.setRequestMethod("GET"); // get 방식 요청을 알리는 코드
			
			// api마다 요청에 대한 프로퍼티 (속성) 셋팅이 달라지는 코드
			conn.setRequestProperty("Accept", "application/xml");
//		conn.setRequestProperty("Accept", "application/json");
//		conn.setRequestProperty("content-type", "application/xml");
//		conn.setRequestProperty("content-type", "application/json");
			int code = conn.getResponseCode(); // 실제 호출하는 부 url로부터 페이징 요청
			System.out.println("@@@@@url : " + urlBuilder);
			System.out.println("ResponseCode : ㅇㅇ2 " + code);
			
			if (code < 200 || code > 300) {
				System.out.println("페이지가 잘못되었습니다.");
				return null;
			}
			
			// 3. 페이지 Parsing(해석)
			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
			DocumentBuilder db = dbf.newDocumentBuilder();
			
			Document doc = db.parse(conn.getInputStream()); // xml 부를 파싱하여 객체화
			doc.getDocumentElement().normalize();
			
			// 이아래는 필요없음 // 어차피 배열로 나오는 것이 아니기 때문에
//			NodeList nList = doc.getElementsByTagName("item");
//			for (int i = 0; i < nList.getLength(); i++) {
//				Node node = nList.item(i);
////				System.out.println("\nCurrent Element : " + node.getNodeName());
//				if (node.getNodeType() == Node.ELEMENT_NODE) {
//					try {
			
					Element eElement = (Element) doc.getElementsByTagName("item").item(0);   // 그아래 아이템

					//System.out.println("DIV    : " + getStrData(eElement, "DIV"));
					//System.out.println("SERVICE : " + getStrData(eElement, "SERVICE"));
					//System.out.println("GUBUN  : " + getStrData(eElement, "GUBUN"));
					//System.out.println("SVCID : " + getStrData(eElement, "SVCID"));
					//System.out.println("MAXCLASSNM : " + getStrData(eElement, "MAXCLASSNM"));
					//System.out.println("V_MAX :  " + getTimeData(eElement, "V_MAX") );
					//System.out.println("SVCOPNBGNDT: " + getDateData(eElement, "SVCOPNBGNDT"));
					
					// 필요 데이터들 파싱
					String seat = getStrData(eElement, "seat");
					String kidsFacility = getStrData(eElement, "kidsfacility");
					String firstMenu = getStrData(eElement, "firstmenu");
					String treatMenu = getStrData(eElement, "treatmenu");
					String smoking = getStrData(eElement, "smoking");
					String packing = getStrData(eElement, "packing");
					String infocenterFood = getStrData(eElement, "infocenterfood");
					String scaleFood = getStrData(eElement, "scalefood");
					String parkingFood = getStrData(eElement, "parkingfood");
					Date opendateFood = getDateData(eElement, "opendatefood");
					String opentimeFood = getStrData(eElement, "opentimefood");
					String restdateFood = getStrData(eElement, "restdatefood");
					String discountinfoFood = getStrData(eElement, "discountinfofood");
					String chkcreditcardFood = getStrData(eElement, "chkcreditcardfood");
					String reservationFood = getStrData(eElement, "reservationfood");
					String lcnsNo = getStrData(eElement, "lcnsno");

					food.setSeat(seat);
					food.setKidsFacility(kidsFacility);  // 푸드에있는 kidsFac 데이터는 빈값이었ㄴㄴ데, 여기서 파싱된 데이터를 세팅해줌
					food.setFirstMenu(firstMenu);
					food.setTreatMenu(treatMenu);
					food.setSmoking(smoking);
					food.setPacking(packing);
					food.setInfocenterFood(infocenterFood);
					food.setScaleFood(scaleFood);
					food.setParkingFood(parkingFood);
					food.setOpendateFood(opendateFood);
					food.setOpentimeFood(opentimeFood);
					food.setRestdateFood(restdateFood);
					food.setDiscountinfoFood(discountinfoFood);
					food.setChkcreditcardFood(chkcreditcardFood);
					food.setReservationFood(reservationFood);
					food.setLcnsNo(lcnsNo);
					
					
		} catch (Exception e) {
			e.printStackTrace();
		}

		return food;

		
	}
	
//	@AutOWIRED
//	PRIVate Food Food
	public static Food parse3(Food food){ // 인스턴스로 사용하기위해 인자에 리스트업된 푸드 객체 삽입
//		Food food = new Food();
//		food.getContentId();
		 
		StringBuilder urlBuilder = new StringBuilder(RestaurantDetail_XML_URL);
		
//		http://apis.data.go.kr/B551011/KorService1/detailCommon1?ServiceKey=인증키&contentTypeId=39&contentId=132978&MobileOS=ETC&MobileApp=AppTest&defaultYN=Y&firstImageYN=Y&areacodeYN=Y&catcodeYN=Y&addrinfoYN=Y&mapinfoYN=Y&overviewYN=Y
		urlBuilder.append("?" + "serviceKey=" + KEY);
		urlBuilder.append("&" + "contentTypeId=" + "39");
		urlBuilder.append("&" + "contentId=" + food.getContentId());  // 푸드에 있는 여러 contentId를 기준으로 가져오게함 -> for문 필요 -> 여기는 파싱만하는 곳이니 service에서 포문사용
		urlBuilder.append("&" + "MobileOS=" + "ETC");
		urlBuilder.append("&" + "MobileApp=" + "AppTest");
		urlBuilder.append("&" + "defaultYN=" + "Y");
		urlBuilder.append("&" + "firstImageYN=" + "Y");
		urlBuilder.append("&" + "areacodeYN=" + "Y");
		urlBuilder.append("&" + "catcodeYN=" + "Y");
		urlBuilder.append("&" + "addrinfoYN=" + "Y");
		urlBuilder.append("&" + "mapinfoYN=" + "Y");
		urlBuilder.append("&" + "overviewYN=" + "Y");
	
		
		try {
			URL url = new URL(urlBuilder.toString());  // url 객체 생성
			HttpURLConnection conn = (HttpURLConnection) url.openConnection(); // url 통해서 http 연결 요청
			conn.setRequestMethod("GET"); // get 방식 요청을 알리는 코드
			
			// api마다 요청에 대한 프로퍼티 (속성) 셋팅이 달라지는 코드
			conn.setRequestProperty("Accept", "application/xml");
//		conn.setRequestProperty("Accept", "application/json");
//		conn.setRequestProperty("content-type", "application/xml");
//		conn.setRequestProperty("content-type", "application/json");
			int code = conn.getResponseCode(); // 실제 호출하는 부 url로부터 페이징 요청
			System.out.println("@@@@@url : " + urlBuilder);
			System.out.println("ResponseCode : ㅇㅇ3" + code);
			if (code < 200 || code > 300) {
				System.out.println("페이지가 잘못되었습니다.");
				return null;
			}
			
			// 3. 페이지 Parsing(해석)
			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
			DocumentBuilder db = dbf.newDocumentBuilder();
			
			Document doc = db.parse(conn.getInputStream()); // xml 부를 파싱하여 객체화
			doc.getDocumentElement().normalize();
			
			// 이아래는 필요없음 // 어차피 배열로 나오는 것이 아니기 때문에
//			NodeList nList = doc.getElementsByTagName("item");
//			for (int i = 0; i < nList.getLength(); i++) {
//				Node node = nList.item(i);
////				System.out.println("\nCurrent Element : " + node.getNodeName());
//				if (node.getNodeType() == Node.ELEMENT_NODE) {
//					try {
			
					Element eElement = (Element) doc.getElementsByTagName("item").item(0);  // 그래서여기도 node가 아니라 doc 그대로?

					//System.out.println("DIV    : " + getStrData(eElement, "DIV"));
					//System.out.println("SERVICE : " + getStrData(eElement, "SERVICE"));
					//System.out.println("GUBUN  : " + getStrData(eElement, "GUBUN"));
					//System.out.println("SVCID : " + getStrData(eElement, "SVCID"));
					//System.out.println("MAXCLASSNM : " + getStrData(eElement, "MAXCLASSNM"));
					//System.out.println("V_MAX :  " + getTimeData(eElement, "V_MAX") );
					//System.out.println("SVCOPNBGNDT: " + getDateData(eElement, "SVCOPNBGNDT"));
					
					// 필요 데이터들 파싱
					String homePage = getStrData(eElement, "homepage");
					String areaCode = getStrData(eElement, "areacode");
					String overView = getStrData(eElement, "overview");
					
					food.setHomePage(homePage);
					food.setAreaCode(areaCode);  // 푸드에있는 kidsFac 데이터는 빈값이었ㄴㄴ데, 여기서 파싱된 데이터를 세팅해줌
					food.setOverView(overView);
					
					
		} catch (Exception e) {
			e.printStackTrace();
			
		}

		return food;

		
	}
//	@AutOWIRED
//	PRIVate Food Food
	public static Food parse4(Food food){ // 인스턴스로 사용하기위해 인자에 리스트업된 푸드 객체 삽입
//		Food food = new Food();
//		food.getContentId();
		
		StringBuilder urlBuilder = new StringBuilder(ImageDetail_XML_URL);
		
//		http://apis.data.go.kr/B551011/KorService1/detailImage1?ServiceKey=인증키&contentId=2866408&MobileOS=ETC&MobileApp=AppTest&imageYN=Y&subImageYN=Y&numOfRows=10
		urlBuilder.append("?" + "serviceKey=" + KEY);
		urlBuilder.append("&" + "contentId=" + food.getContentId());  // 푸드에 있는 여러 contentId를 기준으로 가져오게함 -> for문 필요 -> 여기는 파싱만하는 곳이니 service에서 포문사용
		urlBuilder.append("&" + "MobileOS=" + "ETC");
		urlBuilder.append("&" + "MobileApp=" + "AppTest");
		urlBuilder.append("&" + "imageYN=" + "Y");
		urlBuilder.append("&" + "subImageYN=" + "Y");
		urlBuilder.append("&" + "numOfRows=" + "20");
		
		
		try {
			URL url = new URL(urlBuilder.toString());  // url 객체 생성
			HttpURLConnection conn = (HttpURLConnection) url.openConnection(); // url 통해서 http 연결 요청
			conn.setRequestMethod("GET"); // get 방식 요청을 알리는 코드
			
			// api마다 요청에 대한 프로퍼티 (속성) 셋팅이 달라지는 코드
			conn.setRequestProperty("Accept", "application/xml");
//		conn.setRequestProperty("Accept", "application/json");
//		conn.setRequestProperty("content-type", "application/xml");
//		conn.setRequestProperty("content-type", "application/json");
			int code = conn.getResponseCode(); // 실제 호출하는 부 url로부터 페이징 요청
			System.out.println("@@@@@url : " + urlBuilder);
			System.out.println("ResponseCode : ㅇㅇ4" + code);
			if (code < 200 || code > 300) {
				System.out.println("페이지가 잘못되었습니다.");
				return null;
			}
			
			// 3. 페이지 Parsing(해석)
			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
			DocumentBuilder db = dbf.newDocumentBuilder();
			
			Document doc = db.parse(conn.getInputStream()); // xml 부를 파싱하여 객체화
			doc.getDocumentElement().normalize();
			
			// 이아래는 필요없음 // 어차피 배열로 나오는 것이 아니기 때문에
			NodeList nList = doc.getElementsByTagName("item");
			for (int i = 0; i < nList.getLength(); i++) {
				Node node = nList.item(i);
//				System.out.println("\nCurrent Element : " + node.getNodeName());
				if (node.getNodeType() == Node.ELEMENT_NODE) {
					try {
						Element eElement = (Element) node;   // item의 안에 있는게 아닌 그 상위를 갖고와야함  
			
//			Element eElement = (Element) doc.getElementsByTagName("item").item(0);  // 그래서여기도 node가 아니라 doc 그대로?
//			Element eElement1 = (Element) doc.getElementsByTagName("item").item(1);  // 그래서여기도 node가 아니라 doc 그대로?
			
			//System.out.println("DIV    : " + getStrData(eElement, "DIV"));
			//System.out.println("SERVICE : " + getStrData(eElement, "SERVICE"));
			//System.out.println("GUBUN  : " + getStrData(eElement, "GUBUN"));
			//System.out.println("SVCID : " + getStrData(eElement, "SVCID"));
			//System.out.println("MAXCLASSNM : " + getStrData(eElement, "MAXCLASSNM"));
			//System.out.println("V_MAX :  " + getTimeData(eElement, "V_MAX") );
			//System.out.println("SVCOPNBGNDT: " + getDateData(eElement, "SVCOPNBGNDT"));
			
			// 필요 데이터들 파싱
			String originImgurl = getStrData(eElement, "originimgurl");
//			String originImgurl2 = getStrData(eElement, "originimgurl");
			String smallImgurl = getStrData(eElement, "smallimageurl");
//			String originImgurl2 = getStrData(eElement1, "originimgurl");
			
		     if (i == 0) {
		            food.setOriginImgurl1(originImgurl);
		        } else if (i == 1) {
		            food.setOriginImgurl2(originImgurl);
		        }
			
//			food.setOriginImgurl1(originImgurl);
			food.setSmallImgurl(smallImgurl);  // 푸드에있는 kidsFac 데이터는 빈값이었ㄴㄴ데, 여기서 파싱된 데이터를 세팅해줌
//			food.setOriginImgurl2(originImgurl);
			
			} catch (Exception e) {
				System.out.println("데이터가 잘못되었습니다!");
			}
		}
	}
	} catch (Exception e) {
	e.printStackTrace();
	}
	return food;
	}

	private static String getStrData(Element eElement, String tagName) {
		try {
			return eElement.getElementsByTagName(tagName).item(0).getTextContent();
		} catch (Exception e) {
			return "-";
		}
	}

	private static int getIntData(Element eElement, String tagName) {
		try {
			return Integer.parseInt(eElement.getElementsByTagName(tagName).item(0).getTextContent());
		} catch (Exception e) {
			return 0;
		}
	}

	private static SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	static Date now = new Date();
	 private static Date getDateData(Element eElement, String tagName) {
		try {
			String str = eElement.getElementsByTagName(tagName).item(0).getTextContent();
			return sdf.parse(str);
		
			
		} catch (Exception e) {
			return now;
			 
	}
	}


//	public static List<Food> parse2(List<Food> list2) {
//		// TODO Auto-generated method stub
//		return null;
//	}





}
