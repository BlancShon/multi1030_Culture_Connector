package com.multi.mvc.api;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.multi.mvc.culture.model.dto.EventDto;
import com.multi.mvc.culture.model.dto.LeisureSportsDto;
import com.multi.mvc.culture.model.vo.Event;
import com.multi.mvc.culture.model.vo.LeisureSports;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class ApiParsing {

	// url 해결해주는맵
	private static Map<String, String> urlMap;

	static {
		urlMap = new HashMap<>();
		urlMap.put("Festival", ApiSearchInfo.getFestivalURL());
		urlMap.put("TouristAttraction", ApiSearchInfo.getContentTypeURL("12"));
		urlMap.put("Culture", ApiSearchInfo.getContentTypeURL("14"));
		urlMap.put("Event", ApiSearchInfo.getContentTypeURL("15"));
		urlMap.put("Course", ApiSearchInfo.getContentTypeURL("25"));
		urlMap.put("LeisureSports", ApiSearchInfo.getContentTypeURL("28"));
		urlMap.put("Food", ApiSearchInfo.getContentTypeURL("39"));

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
	public static <T, D> List<T> parseAndExportToTheListAdvanced(Class<T> targetClass, Class<D> dtoClass) {
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
					D targetDetail = getDetail(dtoClass, contentId, contentTypeId);
					T target = objMapper.treeToValue(itemNode, targetClass);
					try {
						target = (T) detailInjection(target, targetDetail);
					} catch (NullPointerException ne) {
						log.error(contentId + "디테일 삽입중 널포인터", ne);
					}

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

	// Dto 값 받아오는 메서드
	private static <D> D getDetail(Class<D> dtoClass, String contentId, String contentTypeId) {
		D dto = null;
		String targetUrl = ApiSearchInfo.getDetailURL(contentId, contentTypeId);
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
					dto = objMapper.treeToValue(itemNode, dtoClass);
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
		return dto;
	}

	// 디테일 주입하는 메서드
	private static Object detailInjection(Object targetClass, Object targetDetailClass) throws NullPointerException {

		if (targetClass.getClass().equals(Event.class)) {
			Event target = (Event) targetClass;
			EventDto targetDetail = (EventDto) targetDetailClass;

			target.setSponsor1(targetDetail.getSponsor1());
			target.setSponsor1tel(targetDetail.getSponsor1tel());
			target.setSponsor2(targetDetail.getSponsor1());
			target.setSponsor2tel(targetDetail.getSponsor2tel());
			target.setEventEndDate(targetDetail.getEventEndDate());
			target.setPlaytime(targetDetail.getPlaytime());
			target.setEventPlace(targetDetail.getEventPlace());
			target.setEventHomepage(targetDetail.getEventHomepage());
			target.setAgelimit(targetDetail.getAgelimit());
			target.setBookingplace(targetDetail.getBookingplace());
			target.setPlaceinfo(targetDetail.getPlaceinfo());
			target.setSubevent(targetDetail.getSubevent());
			target.setProgram(targetDetail.getProgram());
			target.setEventStartDate(targetDetail.getEventStartDate());
			target.setUsetimefestival(targetDetail.getUsetimefestival());
			target.setDiscountinfofestival(targetDetail.getDiscountinfofestival());
			target.setSpendtimefestival(targetDetail.getSpendtimefestival());
			target.setFestivalgrade(targetDetail.getFestivalgrade());

			return target;
		}

		if (targetClass.getClass().equals(LeisureSports.class)) {
			LeisureSports target = (LeisureSports) targetClass;
			LeisureSportsDto targetDetail = (LeisureSportsDto) targetDetailClass;

			target.setOpenperiod(targetDetail.getOpenperiod());
			target.setReservation(targetDetail.getReservation());
			target.setInfocenterleports(targetDetail.getInfocenterleports());
			target.setScaleleports(targetDetail.getScaleleports());
			target.setAccomcountleports(targetDetail.getAccomcountleports());
			target.setRestdateleports(targetDetail.getRestdateleports());
			target.setUsetimeleports(targetDetail.getUsetimeleports());
			target.setUsefeeleports(targetDetail.getUsefeeleports());
			target.setExpagerangeleports(targetDetail.getExpagerangeleports());
			target.setParkingleports(targetDetail.getParkingleports());
			target.setParkingfeeleports(targetDetail.getParkingfeeleports());
			target.setChkbabycarriageleports(targetDetail.getChkbabycarriageleports());
			target.setChkpetleports(targetDetail.getChkpetleports());
			target.setChkcreditcardleports(targetDetail.getChkcreditcardleports());

			return target;
		}

		return null;
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

}
