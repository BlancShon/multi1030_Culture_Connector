package com.multi.mvc.culture.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.multi.mvc.api.OpenApiManagerForXml_TouristAttraction;
import com.multi.mvc.culture.model.service.TouristAttractionService;
import com.multi.mvc.culture.model.vo.TouristAttraction;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class TouristAttractionController {

    @Autowired
    private TouristAttractionService service;

    List<TouristAttraction> list = OpenApiManagerForXml_TouristAttraction.parse();

    @Bean(initMethod = "init")
    public void init() {
        service.save();
    }

    @GetMapping("/touristAttraction/list")
    public String list(Model model, TouristAttraction touristAttraction) {
        model.addAttribute("list", list);
        return "culture/touristAttractionList";
    }
}
