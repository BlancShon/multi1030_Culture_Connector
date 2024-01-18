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

import com.multi.mvc.culture.model.vo.Culture;
import com.multi.mvc.culture.model.vo.Food;

public class OpenApiManagerForXml_food {

	public static final String KEY = "p%2BFVc5OsZMt6%2FY2XE0P8H0C1yMbOJNO1uhCrn4dNsKVyYG6lt0DxS%2Fsv4Gkw0Mpeu4AEoRzZ6b9zbhxajBR9%2FQ%3D%3D";
	public static final String KoreaRestaurantLists_XML_URL = "https://apis.data.go.kr/B551011/KorService1/areaBasedList1";

	public static void main(String[] args) {

		parse();
		// 1227
	}
	
	
	public static List<Food> parse() {
		//url 가공
		List<Food> list = new ArrayList<>();
 
		StringBuilder urlBuffer = new StringBuilder(KoreaRestaurantLists_XML_URL);
		urlBuffer.append("?" + "numOfRows=" + "1000");
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
			System.out.println("ResponseCode : " + code);

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
				System.out.println("\nCurrent Element : " + node.getNodeName());
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
						
						Food food = new Food(contentId, contentTypeId, homePage, tel, title, firstImage, firstImage2, areaCode, siGunGuCode, cat1, cat2, cat3, addr1, addr2, zipCode, mapX, mapY, overView, mlevel, chkcreditcardFood, discountinfoFood, firstMenu, infocenterFood, kidsFacility, opendateFood, opentimeFood, packing, parkingFood, reservationFood, restdateFood, scaleFood, seat, smoking, treatMenu, lcnsNo);
						
						
					
						System.out.println(food);
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





}
