package com.multi.mvc.api;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.multi.mvc.culture.model.vo.CultureParent;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class ApiParsing {

	// url 해결해주는맵
	private static Map<String, String> urlMap;
	
	private static Map<String, String> keyMap;

	static {
		urlMap = new HashMap<>();
		urlMap.put("Festival", ApiSearchInfo.getFestivalURL());
		urlMap.put("TouristAttraction", ApiSearchInfo.getContentTypeURL("12") + ApiSearchInfo.getServiceKey("박현"));
		urlMap.put("Culture", ApiSearchInfo.getContentTypeURL("14") + ApiSearchInfo.getServiceKey("김진경"));
		urlMap.put("Event", ApiSearchInfo.getContentTypeURL("15") + ApiSearchInfo.getServiceKey("고재목"));
		urlMap.put("Course", ApiSearchInfo.getContentTypeURL("25") + ApiSearchInfo.getServiceKey("고재목2"));
		urlMap.put("LeisureSports", ApiSearchInfo.getContentTypeURL("28") + ApiSearchInfo.getServiceKey("이병집"));
		urlMap.put("Food", ApiSearchInfo.getContentTypeURL("39") + ApiSearchInfo.getServiceKey("장성희"));

		keyMap = new HashMap<>();
		keyMap.put("TouristAttraction", "박현");
		keyMap.put("Culture", "김진경");
		keyMap.put("Event", "고재목");
		keyMap.put("LeisureSports", "이병집");
		keyMap.put("Food", "장성희");
		keyMap.put("Course", "고재목2");
		
	}

	// 분류없이 그냥 리스트 뽑아오는 메소드
	public static <T> List<T> parseAndExportToTheList(Class<T> targetClass) {
		String targetUrl = urlMap.get(targetClass.getSimpleName());
		List<T> list = new ArrayList<>();

		HttpURLConnection conn = null;
		try {
			URL url = new URL(targetUrl);
			conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Content-type", "application/json");
//	        conn.setRequestProperty("Content-type", "application/xml");
//	        conn.setRequestProperty("Accept", "application/xml");
//	        conn.setRequestProperty("Accept", "application/json");

			int responseCode = conn.getResponseCode(); // 실제 HTTP로 호출을 시도하는 코드

			if (responseCode < 200 || 300 <= responseCode) {
				log.error("페이지가 잘못되었습니다. {}", responseCode);

			}

			try (InputStream is = conn.getInputStream();
					InputStreamReader isr = new InputStreamReader(is, "UTF-8");
					BufferedReader br = new BufferedReader(isr);) {

				// json 을 파싱하는 도구?? ObjectMapper
				ObjectMapper objMapper = new ObjectMapper();

				String line = br.readLine();
				JsonNode rootNode = objMapper.readTree(line);
				JsonNode itemsNode = rootNode.path("response").path("body").path("items").path("item");

				for (JsonNode itemNode : itemsNode) {
					T target = objMapper.treeToValue(itemNode, targetClass);
					list.add(target);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (conn != null) {
				conn.disconnect(); // 리소스 닫기
			}
		}
		return list;
	}

	// 분류없이 타겟에 상세정보까지 주입하는 메서드
	public static  <T extends CultureParent> List<T> parseAndExportToTheListAdvanced(Class<T> targetClass) {
		String whosKey = keyMap.get(targetClass.getSimpleName());
		String targetUrl = urlMap.get(targetClass.getSimpleName());
		List<T> list = new ArrayList<>();
		HttpURLConnection conn = null;
		try {
			URL url = new URL(targetUrl);
			conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Content-type", "application/json");
//	        conn.setRequestProperty("Content-type", "application/xml");
//	        conn.setRequestProperty("Accept", "application/xml");
//	        conn.setRequestProperty("Accept", "application/json");

			int responseCode = conn.getResponseCode(); // 실제 HTTP로 호출을 시도하는 코드

			if (responseCode < 200 || 300 <= responseCode) {
				log.error("페이지가 잘못되었습니다. {}", responseCode);

			}

			try (InputStream is = conn.getInputStream();
					InputStreamReader isr = new InputStreamReader(is, "UTF-8");
					BufferedReader br = new BufferedReader(isr);) {

				// json 을 파싱하는 도구?? ObjectMapper
				ObjectMapper objMapper = new ObjectMapper();

				String line = br.readLine();
				JsonNode rootNode = objMapper.readTree(line);
				JsonNode itemsNode = rootNode.path("response").path("body").path("items").path("item");

				for (JsonNode itemNode : itemsNode) {
					String contentId = itemNode.get("contentid").asText();
					String contentTypeId = itemNode.get("contenttypeid").asText();
					
					// 기본 정보들 받아오는 바구니
					try {
						CultureParent common = objMapper.treeToValue(itemNode, CultureParent.class);
						List<String> imgList = getImgList(contentId, contentTypeId, whosKey);
						T target = getDetail(targetClass, contentId, contentTypeId, whosKey);
						target = commonInjection(target, common, imgList);
						
						list.add(target);
					} catch (NullPointerException ne) {
						log.info("주입도중 {} 에러 발생!!!! {}", ne);
					} catch (Exception e) {
						log.info("주입 도중 {} 에러 발생!!!",e);
					}

				}

			} catch (Exception e) {
				e.printStackTrace();
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (conn != null) {
				conn.disconnect(); // 리소스 닫기
			}
		}
		return list;
	}
	
	// 이미지 정보 받아오는 메소드
	private static List<String> getImgList(String contentId, String contentTypeId, String name) throws Exception {
		String targetUrl = ApiSearchInfo.getImageURL(contentId) + ApiSearchInfo.getServiceKey(name);
		
		List<String> list = new ArrayList<>();

		HttpURLConnection conn = null;
		try {
			URL url = new URL(targetUrl);
			conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Content-type", "application/json");
//	        conn.setRequestProperty("Content-type", "application/xml");
//	        conn.setRequestProperty("Accept", "application/xml");
//	        conn.setRequestProperty("Accept", "application/json");

			int responseCode = conn.getResponseCode(); // 실제 HTTP로 호출을 시도하는 코드

			if (responseCode < 200 || 300 <= responseCode) {
				log.error("페이지가 잘못되었습니다. {}", responseCode);
			}

			try (InputStream is = conn.getInputStream();
					InputStreamReader isr = new InputStreamReader(is, "UTF-8");
					BufferedReader br = new BufferedReader(isr);) {

				// json 을 파싱하는 도구?? ObjectMapper
				ObjectMapper objMapper = new ObjectMapper();

				String line = br.readLine();
				JsonNode rootNode = objMapper.readTree(line);
				JsonNode itemsNode = rootNode.path("response").path("body").path("items").path("item");

				for (JsonNode itemNode : itemsNode) {
				list.add(itemNode.path("originimgurl").asText());
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (conn != null) {
				conn.disconnect(); // 리소스 닫기
			}
		}
		
		if(contentTypeId.equals("39")) {
			// 푸드면 푸드 이미지도 가져오는 로직 작성
		}
		
		return list;
	}

	// 하나로 합쳐주는 메소드
	private static <T extends CultureParent> T commonInjection(T target, CultureParent common, List<String> imgList) throws Exception {
		int size = imgList.size();
		target.setAddr1(common.getAddr1());
		target.setAddr2(common.getAddr2());
		target.setAreacode(common.getAreacode());
		target.setBooktour(common.getBooktour());
		target.setCat1(common.getCat1());
		target.setCat2(common.getCat2());
		target.setCat3(common.getCat3());
		target.setCreatedtime(common.getCreatedtime());
		target.setFirstimage(common.getFirstimage());
		target.setFirstimage2(common.getFirstimage2());
		target.setCpyrhtDivCd(common.getCpyrhtDivCd());
		target.setMapx(common.getMapx());
		target.setMapy(common.getMapy());
		target.setMlevel(common.getMlevel());
		target.setModifiedtime(common.getModifiedtime());
		target.setSigungucode(common.getSigungucode());
		target.setTel(common.getTel());
		target.setTitle(common.getTitle());
		target.setZipcode(common.getZipcode());
		target.setShowflag(common.getShowflag());
		target.setImgCount(size);
		for (int i = 0; i < size; i++) {
		
		    // 이미지 필드명을 동적으로 생성
		    String imageFieldName = "Image" + i;
		    // Reflection을 사용하여 동적으로 필드에 접근하여 값을 복사
		    try {
		    	
		        // target 객체의 image 필드명에 해당하는 Setter 메서드를 찾음
		        Method targetSetter = target.getClass().getMethod("set" + imageFieldName, String.class);

		        // 값을 복사
		        targetSetter.invoke(target, imgList.get(i));
		    } catch (NoSuchMethodException | IllegalAccessException | InvocationTargetException e) {
		        log.error("이미지 삽입 도중 예외",e);
		    }
		}
		
		return target;
	}

	// 디테일한거 받아오는 메소드
	private static <T> T getDetail(Class<T> targetClass, String contentId, String contentTypeId, String name) throws Exception {
		T target = null;
		String targetUrl = ApiSearchInfo.getDetailURL(contentId, contentTypeId)	+ ApiSearchInfo.getServiceKey(name);
		HttpURLConnection conn = null;
		try {
			URL url = new URL(targetUrl);
			conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Content-type", "application/json");
//		        conn.setRequestProperty("Content-type", "application/xml");
//		        conn.setRequestProperty("Accept", "application/xml");
//		        conn.setRequestProperty("Accept", "application/json");

			int responseCode = conn.getResponseCode(); // 실제 HTTP로 호출을 시도하는 코드

			if (responseCode < 200 || 300 <= responseCode) {
				log.error("페이지가 잘못되었습니다. {}", responseCode);
			}

			try (InputStream is = conn.getInputStream();
					InputStreamReader isr = new InputStreamReader(is, "UTF-8");
					BufferedReader br = new BufferedReader(isr);) {

				// json 을 파싱하는 도구?? ObjectMapper
				ObjectMapper objMapper = new ObjectMapper();

				String line = br.readLine();
				JsonNode rootNode = objMapper.readTree(line);
				JsonNode itemsNode = rootNode.path("response").path("body").path("items").path("item");

				for (JsonNode itemNode : itemsNode) {
					target = objMapper.treeToValue(itemNode, targetClass);
				}

			} catch (Exception e) {
				e.printStackTrace();
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (conn != null) {
				conn.disconnect(); // 리소스 닫기
			}
		}
		return target;
	}


	// 지역코드 받는것도 오버로딩
	public static <T> List<T> parseAndExportToTheList(Class<T> targetClass, String areaCode) {
		String basicUrl = urlMap.get(targetClass.getSimpleName());
		String targetUrl = basicUrl + ApiSearchInfo.areaCode(areaCode);
		List<T> list = new ArrayList<>();

		HttpURLConnection conn = null;
		try {
			URL url = new URL(targetUrl);
			conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Content-type", "application/json");
//	        conn.setRequestProperty("Content-type", "application/xml");
//	        conn.setRequestProperty("Accept", "application/xml");
//	        conn.setRequestProperty("Accept", "application/json");

			int responseCode = conn.getResponseCode(); // 실제 HTTP로 호출을 시도하는 코드

			if (responseCode < 200 || 300 <= responseCode) {
				log.error("페이지가 잘못되었습니다. {}", responseCode);
			}

			try (InputStream is = conn.getInputStream();
					InputStreamReader isr = new InputStreamReader(is, "UTF-8");
					BufferedReader br = new BufferedReader(isr);) {

				// json 을 파싱하는 도구?? ObjectMapper
				ObjectMapper objMapper = new ObjectMapper();

				String line = br.readLine();
				JsonNode rootNode = objMapper.readTree(line);
				JsonNode itemsNode = rootNode.path("response").path("body").path("items").path("item");

				for (JsonNode itemNode : itemsNode) {
					T target = objMapper.treeToValue(itemNode, targetClass);
					list.add(target);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (conn != null) {
				conn.disconnect(); // 리소스 닫기
			}
		}
		return list;
	}

	// 시군구 받는것도 오버로딩
	public static <T> List<T> parseAndExportToTheList(Class<T> targetClass, String areaCode, String sigungu) {
		String basicUrl = urlMap.get(targetClass.getSimpleName());
		String targetUrl = basicUrl + ApiSearchInfo.areaCode(areaCode) + ApiSearchInfo.sigunguCode(sigungu);
		List<T> list = new ArrayList<>();

		HttpURLConnection conn = null;
		try {
			URL url = new URL(targetUrl);
			conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Content-type", "application/json");
//	        conn.setRequestProperty("Content-type", "application/xml");
//	        conn.setRequestProperty("Accept", "application/xml");
//	        conn.setRequestProperty("Accept", "application/json");

			int responseCode = conn.getResponseCode(); // 실제 HTTP로 호출을 시도하는 코드

			if (responseCode < 200 || 300 <= responseCode) {
				log.error("페이지가 잘못되었습니다. {}", responseCode);
			}

			try (InputStream is = conn.getInputStream();
					InputStreamReader isr = new InputStreamReader(is, "UTF-8");
					BufferedReader br = new BufferedReader(isr);) {

				// json 을 파싱하는 도구?? ObjectMapper
				ObjectMapper objMapper = new ObjectMapper();

				String line = br.readLine();
				JsonNode rootNode = objMapper.readTree(line);
				JsonNode itemsNode = rootNode.path("response").path("body").path("items").path("item");

				for (JsonNode itemNode : itemsNode) {
					T target = objMapper.treeToValue(itemNode, targetClass);
					list.add(target);
				}

			} catch (Exception e) {
				e.printStackTrace();
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (conn != null) {
				conn.disconnect(); // 리소스 닫기
			}
		}
		return list;
	}

	// 전국 17개 지역 별로 n 개씩 뽑는 메소드
	public static <T> List<T> listBySidoGroups(Class<T> targetClass) {
		Map<String, List<String>> areaCodeMap = areaCodeResolver();
		List<T> list = new ArrayList<>();
		for (String areaCode : areaCodeMap.keySet()) {
			list.addAll(parseAndExportToTheList(targetClass, areaCode));
		}
		return list;
	}

	// 전국 시도 전부 n 개씩 뽑는 메소드
	public static <T> List<T> listBySigunguGroups(Class<T> targetClass) {
		Map<String, List<String>> areaCodeMap = areaCodeResolver();
		List<T> list = new ArrayList<>();
		for (String areaCode : areaCodeMap.keySet()) {
			List<String> sigunguList = areaCodeMap.get(areaCode);
			for (String sigunguCode : sigunguList) {
				list.addAll(parseAndExportToTheList(targetClass, areaCode, sigunguCode));
			}
		}
		return list;
	}

	// 지역코드만 맵으로 뽑아오는 메소드
	public static Map<String, List<String>> areaCodeResolver() {
		String targetUrl = ApiSearchInfo.getAreaCodeURL();
		Map<String, List<String>> map = new HashMap<>();

		HttpURLConnection conn = null;
		try {
			URL url = new URL(targetUrl);
			conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Content-type", "application/json");

			int responseCode = conn.getResponseCode();

			if (responseCode < 200 || 300 <= responseCode) {
				log.error("페이지가 잘못되었습니다. {}", responseCode);
			}
			try (InputStream is = conn.getInputStream();
					InputStreamReader isr = new InputStreamReader(is, "UTF-8");
					BufferedReader br = new BufferedReader(isr);) {

				// json 을 파싱하는 도구?? ObjectMapper
				ObjectMapper objMapper = new ObjectMapper();

				String line = br.readLine();
				JsonNode rootNode = objMapper.readTree(line);
				JsonNode itemsNode = rootNode.path("response").path("body").path("items").path("item");

				for (JsonNode itemNode : itemsNode) {
					String key = itemNode.path("code").textValue();
					map.put(key, sigunguCodeResolver(key));
				}

			} catch (Exception e) {
				e.printStackTrace();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (conn != null) {
				conn.disconnect(); // 리소스 닫기
			}
		}

		return map;
	}

	// 시군구 코드 리스트로 뽑아오는 메소드
	public static List<String> sigunguCodeResolver(String areaCode) {
		String targetUrl = ApiSearchInfo.getSigunguCodeURL(areaCode);
		List<String> list = new ArrayList<>();

		HttpURLConnection conn = null;
		try {
			URL url = new URL(targetUrl);
			conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Content-type", "application/json");

			int responseCode = conn.getResponseCode();

			if (responseCode < 200 || 300 <= responseCode) {
				log.error("페이지가 잘못되었습니다. {}", responseCode);
			}

			try (InputStream is = conn.getInputStream();
					InputStreamReader isr = new InputStreamReader(is, "UTF-8");
					BufferedReader br = new BufferedReader(isr);) {

				ObjectMapper objMapper = new ObjectMapper();

				String line = br.readLine();
				JsonNode rootNode = objMapper.readTree(line);
				JsonNode itemsNode = rootNode.path("response").path("body").path("items").path("item");

				for (JsonNode itemNode : itemsNode) {
					list.add(itemNode.path("code").asText());
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (conn != null) {
				conn.disconnect(); // 리소스 닫기
			}
		}
		return list;
	}
	
	public static void main(String[] args) {
//		 System.out.println("여기를 보십쇼!!!" + ApiSearchInfo.getContentTypeURL("28") + ApiSearchInfo.getServiceKey("이병집"));
		
	}

}
