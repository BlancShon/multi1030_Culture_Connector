package com.multi.mvc.culture.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class FoodDTO {
	private int contentid; // example field
    private String addr1; // example field
    private String title; // value corresponding to 'mapy'
    private String tel; // value corresponding to 'mapx'
    private String firstimage; // value corresponding to 'mapx'
    private String mapx; // value corresponding to 'mapx'
    private String mapy; // value corresponding to 'mapx'

    // Constructor
    public FoodDTO(int contentid, String addr1, String title, String tel, String firstimage, String mapx, String mapy) {
        this.contentid = contentid;
        this.addr1 = addr1;
        this.title = title;
        this.tel = tel;
        this.firstimage = firstimage;
        this.mapx = mapx;
        this.mapy = mapy;
    }
}
