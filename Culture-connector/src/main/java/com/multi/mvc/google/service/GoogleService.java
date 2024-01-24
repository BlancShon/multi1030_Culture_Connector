package com.multi.mvc.google.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.Map;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;



@Service
public class GoogleService {
	private static final Logger log = LoggerFactory.getLogger(GoogleService.class);
	
    private final String clientId = "279034163666-29bpefgl96tg0c3tosugfbrf9d3bgogj.apps.googleusercontent.com";
    private final String clientSecret = "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";
    private final String approvedRedirectUri = "http://localhost:8080/mvc/member/enroll/google";

    public String generateGoogleAuthorizationURL() {
        try {
            String redirectUriEncoded = URLEncoder.encode(approvedRedirectUri, StandardCharsets.UTF_8.name());
            String scopeEncoded = URLEncoder.encode("https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/userinfo.profile", StandardCharsets.UTF_8.name());
            return "https://accounts.google.com/o/oauth2/v2/auth?client_id=" + clientId +
                    "&redirect_uri=" + redirectUriEncoded +
                    "&response_type=code" +
                    "&scope=" + scopeEncoded +
                    "&access_type=offline" + // Request a refresh token.
                    "&include_granted_scopes=true";
        } catch (Exception e) {
        	log.error("Error generating Google authorization URL", e);
            throw new RuntimeException("Error generating Google authorization URL", e);
        }
    }
    

    public String exchangeCodeForAccessToken(String code) {
        RestTemplate restTemplate = new RestTemplate();
        String tokenEndpoint = "https://oauth2.googleapis.com/token";

        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);

        MultiValueMap<String, String> requestBody = new LinkedMultiValueMap<>();
        requestBody.add("code", code);
        requestBody.add("client_id", clientId);
        requestBody.add("client_secret", clientSecret);
        requestBody.add("redirect_uri", approvedRedirectUri);
        requestBody.add("grant_type", "authorization_code");

        HttpEntity<MultiValueMap<String, String>> requestEntity = new HttpEntity<>(requestBody, headers);

        try {
            ResponseEntity<String> response = restTemplate.postForEntity(tokenEndpoint, requestEntity, String.class);

            // Log the response status code and body
            log.info("Response Status Code: {}", response.getStatusCode());
            log.debug("Response Body: {}", response.getBody());

            ObjectMapper objectMapper = new ObjectMapper();
            JsonNode rootNode = objectMapper.readTree(response.getBody());
            String accessToken = rootNode.path("access_token").asText();

            // Log the obtained access token
            log.info("Obtained Access Token: {}", accessToken);
            return accessToken;
        } catch (IOException e) {
            log.error("IOException when exchanging code for access token", e);
            throw new RestClientException("Error exchanging code for access token", e);
        } catch (RestClientException e) {
            log.error("RestClientException when exchanging code for access token", e);
            throw e; // Re-throwing the exception to be handled further up the stack
        }
    }
    
    
    public Map<String, Object> getUserInfo(String accessToken) {
        RestTemplate restTemplate = new RestTemplate();
        String userInfoEndpoint = "https://www.googleapis.com/oauth2/v2/userinfo";
        try {
            ResponseEntity<Map> response = restTemplate.getForEntity(userInfoEndpoint + "?access_token=" + accessToken, Map.class);
            
            // Log the response status and body for debugging
            log.info("Fetched user info with status code: {}", response.getStatusCode());
            log.debug("User info response body: {}", response.getBody());

            return response.getBody();
        } catch (RestClientException e) {
            log.error("Error fetching user info with access token: {}", accessToken, e);
            throw e; // Re-throwing the exception to be handled or logged further up the stack
        }
    }



}