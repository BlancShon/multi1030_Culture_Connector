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
import com.multi.mvc.culture.model.vo.Event;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class ApiParsing {
	
	// url 해결해주는맵
	private static Map<String, String> urlMap;
	
	private static Map<String, List<String>> areaCodeMap;
	
	static {
		urlMap = new HashMap<>();
		urlMap.put("Festival" , ApiSearchInfo.getFestivalURL());
		urlMap.put("Event", ApiSearchInfo.getEventURL());
		
		areaCodeMap = areaCodeResolver();
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
			
	       if(responseCode < 200 || 300 <= responseCode) {
	    	   log.error("페이지가 잘못되었습니다. {}", responseCode);

	       }
	       
			try(InputStream is = conn.getInputStream();
				InputStreamReader isr = new InputStreamReader(is, "UTF-8");
				BufferedReader br = new BufferedReader(isr);){
				
				// json 을 파싱하는 도구?? ObjectMapper
				ObjectMapper objMapper = new ObjectMapper();
				
				
				String line=br.readLine();
				JsonNode rootNode = objMapper.readTree(line);
				JsonNode itemsNode = rootNode.path("response").path("body").path("items").path("item");
				
				for(JsonNode itemNode : itemsNode) {
					T target = objMapper.treeToValue(itemNode, targetClass);
					list.add(target);
				}
				
			} catch(Exception e) {
				e.printStackTrace();
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
		    if (conn != null) {
		        conn.disconnect(); // 리소스 닫기
		    }
		}
		
		return list;
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
			
			if(responseCode < 200 || 300 <= responseCode) {
				log.error("페이지가 잘못되었습니다. {}", responseCode);
				
			}
			
			try(InputStream is = conn.getInputStream();
					InputStreamReader isr = new InputStreamReader(is, "UTF-8");
					BufferedReader br = new BufferedReader(isr);){
				
				// json 을 파싱하는 도구?? ObjectMapper
				ObjectMapper objMapper = new ObjectMapper();
				
				
				String line=br.readLine();
				JsonNode rootNode = objMapper.readTree(line);
				JsonNode itemsNode = rootNode.path("response").path("body").path("items").path("item");
				
				for(JsonNode itemNode : itemsNode) {
					T target = objMapper.treeToValue(itemNode, targetClass);
					list.add(target);
				}
				
			} catch(Exception e) {
				e.printStackTrace();
			}
			
		} catch(Exception e) {
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
		System.out.println("TARGETURL IS HERE " + targetUrl);
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
			
			if(responseCode < 200 || 300 <= responseCode) {
				log.error("페이지가 잘못되었습니다. {}", responseCode);
				
			}
			
			try(InputStream is = conn.getInputStream();
					InputStreamReader isr = new InputStreamReader(is, "UTF-8");
					BufferedReader br = new BufferedReader(isr);){
				
				// json 을 파싱하는 도구?? ObjectMapper
				ObjectMapper objMapper = new ObjectMapper();
				
				
				String line=br.readLine();
				JsonNode rootNode = objMapper.readTree(line);
				JsonNode itemsNode = rootNode.path("response").path("body").path("items").path("item");
				
				for(JsonNode itemNode : itemsNode) {
					T target = objMapper.treeToValue(itemNode, targetClass);
					list.add(target);
				}
				
			} catch(Exception e) {
				e.printStackTrace();
			}
			
		} catch(Exception e) {
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
		List<T> list = new ArrayList<>();
		for(String areaCode : areaCodeMap.keySet()) {
			list.addAll(parseAndExportToTheList(targetClass, areaCode));
		}
		return list;
	}
	
	// 전국 시도 전부 n 개씩 뽑는 메소드
	public static <T> List<T> listBySigunguGroups(Class<T> targetClass) {
		List<T> list = new ArrayList<>();
		for(String areaCode : areaCodeMap.keySet()) {
			List<String> sigunguList = areaCodeMap.get(areaCode);
			for(String sigunguCode : sigunguList) {
				list.addAll(parseAndExportToTheList(targetClass, areaCode, sigunguCode));
			}
		}
		return list;
	}
	
	
	
	// 지역코드 맵으로 뽑아오는 메소드
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
		    
		    if(responseCode < 200 || 300 <= responseCode) {
		    	log.error("페이지가 잘못되었습니다. {}", responseCode);
		    }
		    
		    try(InputStream is = conn.getInputStream();
					InputStreamReader isr = new InputStreamReader(is, "UTF-8");
					BufferedReader br = new BufferedReader(isr);){
					
					// json 을 파싱하는 도구?? ObjectMapper
					ObjectMapper objMapper = new ObjectMapper();
					
					
					String line=br.readLine();
					JsonNode rootNode = objMapper.readTree(line);
					JsonNode itemsNode = rootNode.path("response").path("body").path("items").path("item");
		    
					for(JsonNode itemNode : itemsNode) {
						String key =itemNode.path("code").textValue();
						map.put(key, sigunguCodeResolver(key));
					}
					
					
				} catch(Exception e) {
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
		    
		    if(responseCode < 200 || 300 <= responseCode) {
		    	log.error("페이지가 잘못되었습니다. {}", responseCode);
		    }
		    
		    try(InputStream is = conn.getInputStream();
					InputStreamReader isr = new InputStreamReader(is, "UTF-8");
					BufferedReader br = new BufferedReader(isr);){
					
					ObjectMapper objMapper = new ObjectMapper();
					
					
					String line=br.readLine();
					JsonNode rootNode = objMapper.readTree(line);
					JsonNode itemsNode = rootNode.path("response").path("body").path("items").path("item");
		    
					for(JsonNode itemNode : itemsNode) {
						list.add(itemNode.path("code").asText());
					}
					
				} catch(Exception e) {
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
//		System.out.println(ApiSearchInfo.getFestivalURL());
//		System.out.println("==============================");
//		System.out.println(ApiSearchInfo.getEventURL());
//		System.out.println("==============================");
//		System.out.println(urlMap.get("Event"));
//		System.out.println("==============================");
//		System.out.println(parseAndExportToTheList(Festival.class));
//		System.out.println(parseAndExportToTheList(Event.class));
//		System.out.println(ApiSearchInfo.getAreaCodeURL());
//		areaCodeResolver();
//		sigunguCodeResolver("1");
//		System.out.println(parseAndExportToTheList(Festival.class, "1"));
//		System.out.println("==========================");
//		System.out.println(parseAndExportToTheList(Event.class, "1", "16"));
//		System.out.println(ApiSearchInfo.getEventURL());
	}
	

}
