package com.multi.mvc.google.service;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Service;



@Service
public class GoogleService {

    private final String clientId = "279034163666-29bpefgl96tg0c3tosugfbrf9d3bgogj.apps.googleusercontent.com";
    private final String clientSecret = "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";

    
    public String getToken(String code, String redirectUri) throws IOException {
        String host = "https://oauth2.googleapis.com/token";
        URL url = new URL(host);
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        String token = "";
        try {
            conn.setRequestMethod("POST");
            conn.setDoOutput(true);

            BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
            StringBuilder sb = new StringBuilder();
            sb.append("grant_type=authorization_code");
            sb.append("&client_id=").append(clientId);
            sb.append("&client_secret=").append(clientSecret);
            sb.append("&redirect_uri=").append(redirectUri);
            sb.append("&code=").append(code);

            bw.write(sb.toString());
            bw.flush();

            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            String line;
            StringBuilder result = new StringBuilder();
            while ((line = br.readLine()) != null) {
                result.append(line);
            }

            JSONParser parser = new JSONParser();
            JSONObject json = (JSONObject) parser.parse(result.toString());

            token = (String) json.get("access_token");

            br.close();
            bw.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return token;
    }

    public Map<String, Object> getUserInfo(String accessToken) throws IOException {
        String host = "https://www.googleapis.com/oauth2/v2/userinfo";
        Map<String, Object> userInfo = new HashMap<>();
        try {
            URL url = new URL(host);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.setRequestProperty("Authorization", "Bearer " + accessToken);

            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            String line;
            StringBuilder result = new StringBuilder();
            while ((line = br.readLine()) != null) {
                result.append(line);
            }

            JSONParser parser = new JSONParser();
            JSONObject json = (JSONObject) parser.parse(result.toString());

            String id = (String) json.get("id");
            String name = (String) json.get("name");
            String email = (String) json.get("email");

            userInfo.put("id", id);
            userInfo.put("name", name);
            userInfo.put("email", email);

            br.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return userInfo;
    }
}