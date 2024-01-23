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

import com.multi.mvc.culture.model.vo.TouristAttraction;

public class OpenApiManagerForXml_TouristAttraction {

	public static void main(String[] args) {

		parse();
		
	}
	

    public static final String TOURIST_ATTRACTION_API_URL = "https://apis.data.go.kr/B551011/KorService1/areaBasedList1";
    public static final String KEY = "Wo73FahwmDVG3dBFuSoGkal0zxWVm3bLc51YH6ZsjlDF6AchfxQXRi5jlaWqlqntkMCU7TUF8e6CcKY3vDzaew%3D%3D";

    public static List<TouristAttraction> parse() {
        List<TouristAttraction> list = new ArrayList<>();

        StringBuffer urlBuffer = new StringBuffer();
        urlBuffer.append(TOURIST_ATTRACTION_API_URL);
        urlBuffer.append("?" + "numOfRows=" + "1000");
        urlBuffer.append("&" + "pageNo=" + "1");
        urlBuffer.append("&" + "MobileOS=" + "ETC");
		urlBuffer.append("&" + "MobileApp=" + "AppTest");
        urlBuffer.append("&" + "serviceKey=" + KEY);
        urlBuffer.append("&" + "listYN=" + "Y");
        urlBuffer.append("&" + "arrange=" + "A");
        urlBuffer.append("&" + "contentTypeId=" + "12"); 
        urlBuffer.append("&" + "areaCode=" + "");
		urlBuffer.append("&" + "sigunguCode=" + "");
        urlBuffer.append("&" + "cat1=" + ""); //"" ->전체 조회, cat1=A01은 자연 카테고리, B02=문화
        urlBuffer.append("&" + "cat2=" + "");
        urlBuffer.append("&" + "cat3=" + ""); 

        System.out.println(urlBuffer);


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
			
			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
			DocumentBuilder db = dbf.newDocumentBuilder();

			Document doc = db.parse(conn.getInputStream()); 
			doc.getDocumentElement().normalize();

			System.out.println("======================================================");

			NodeList nList = doc.getElementsByTagName("item");
			for (int i = 0; i < nList.getLength(); i++) {
				Node node = nList.item(i);
//				System.out.println("\nCurrent Element : " + node.getNodeName());
				if (node.getNodeType() == Node.ELEMENT_NODE) {
					try {
						Element eElement = (Element) node;

                        int contentid = getIntData(eElement, "contentid");
                        int contenttypeid = getIntData(eElement, "contenttypeid");
                        String homepage = getStrData(eElement, "homepage");
                        String tel = getStrData(eElement, "tel");
                        String title = getStrData(eElement, "title");
                        String firstimage = getStrData(eElement, "firstimage");
                        String firstimage2 = getStrData(eElement, "firstimage2");
                        String areacode = getStrData(eElement, "areacode");
                        String sigungucode = getStrData(eElement, "sigungucode");
                        String cat1 = getStrData(eElement, "cat1");
                        String cat2 = getStrData(eElement, "cat2");
                        String cat3 = getStrData(eElement, "cat3");
                        String addr1 = getStrData(eElement, "addr1");
                        String addr2 = getStrData(eElement, "addr2");
                        String zipcode = getStrData(eElement, "zipcode");
                        String mapx = getStrData(eElement, "mapx");
                        String mapy = getStrData(eElement, "mapy");
                        String overview = getStrData(eElement, "overview");
                        String mlevel = getStrData(eElement, "mlevel");
                        String accomcount = getStrData(eElement, "accomcount");
                        String chkbabycarriage = getStrData(eElement, "chkbabycarriage");
                        String chkcreditcard = getStrData(eElement, "chkcreditcard");
                        String chkpet = getStrData(eElement, "chkpet");
                        String expagerange = getStrData(eElement, "expagerange");
                        String expguide = getStrData(eElement, "expguide");
                        String heritage1 = getStrData(eElement, "heritage1");
                        String heritage2 = getStrData(eElement, "heritage2");
                        String heritage3 = getStrData(eElement, "heritage3");
                        String infocenterculture = getStrData(eElement, "infocenterculture");
                        String opendate = getStrData(eElement, "opendate");
                        String parking = getStrData(eElement, "parking");
                        String restdate = getStrData(eElement, "restdate");
                        String useseason = getStrData(eElement, "useseason");
                        String usetime = getStrData(eElement, "usetime");

//                    	TouristAttraction touristAttraction = new TouristAttraction(
//                                 contentid, contenttypeid, homepage, tel, title, firstimage, firstimage2,
//                                areacode, sigungucode, cat1, cat2, cat3, addr1, addr2, zipcode, mapx, mapy,
//                                overview, mlevel, accomcount, chkbabycarriage, chkcreditcard, chkpet, expagerange,
//                                expguide, heritage1, heritage2, heritage3, infocenterculture, opendate, parking,
//                                restdate, useseason, usetime
//                        );                      

//                        System.out.println(touristAttraction);
//                        list.add(touristAttraction);
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


