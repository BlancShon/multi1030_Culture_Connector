package com.multi.mvc.culture.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.mvc.culture.model.service.TouristAttractionService;
import com.multi.mvc.culture.model.vo.TouristAttraction;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller   
public class TouristAttractionController {

    @Autowired
    private TouristAttractionService service;

//    List<TouristAttraction> list = OpenApiManagerForXml_TouristAttraction.parse();

//    @Bean(initMethod = "init3")
    public void init3() {
    	service.createTable();
//    	if(service.count() == 0) {
//    		service.save();
//    	}
    }
    
    // 아래 세개는 디비 주입 확인을 위한 메소드입니다
 	@PostMapping("/touristAttraction/dataSave")
 	public String dataSaveForDB(@RequestParam("name") String name, @RequestParam("page") String page) {
 		service.createTable();	
 		service.saveData(name, page);
 		return "redirect:/dbsave";
 	}
 	@GetMapping("/touristAttraction/listForDB")
 	public String listForDB(Model model) {
 		List<TouristAttraction> list = service.getListForDB();
 		model.addAttribute("list",list);
 		return "test/touristList";
 	}
 	@GetMapping("/touristAttraction/createTable")
 	public String createTable() {
 		service.createTable();
 		return "redirect:/dbsave";
 	}

    @GetMapping("/touristAttraction/list")
    public String list(Model model, TouristAttraction touristAttraction) {
//        model.addAttribute("list", list);
        return "culture/touristAttractionList";
    }
}
