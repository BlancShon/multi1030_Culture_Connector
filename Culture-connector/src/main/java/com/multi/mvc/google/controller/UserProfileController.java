package com.multi.mvc.google.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("userInfo") // Assuming userInfo is stored in the session
public class UserProfileController {

    @GetMapping("/mvc/user/profile")
    public String showUserProfile(Model model, HttpServletRequest request) {
        // Assuming you have stored the user information in the session or another persistence mechanism
        Map<String, Object> userInfo = (Map<String, Object>) request.getSession().getAttribute("userInfo");
        model.addAttribute("user", userInfo);
        return "userProfile"; // Ensure you have a view template for this, e.g., userProfile.jsp
    }
}