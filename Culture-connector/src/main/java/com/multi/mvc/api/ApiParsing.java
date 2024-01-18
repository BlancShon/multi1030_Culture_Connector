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

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class ApiParsing {

	private static Map<String, String> urlMap;
	
	static {
		urlMap = new HashMap<>();
		urlMap.put("Festival" , ApiSearchInfo.getFestivalURL());
		urlMap.put("Event", ApiSearchInfo.getEventURL());
		
		
	}
	
	
	public static <T> List<T> parseAndExportToTheList(Class<T> targetClass) {
		String targetUrl = urlMap.get(targetClass.getSimpleName());
		List<T> list = new ArrayList<>();
		
		try {
			URL url = new URL(targetUrl);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
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
	}
	

}
