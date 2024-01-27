package com.multi.mvc.culture.model.vo.course;

import java.util.Vector;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class CourseCategory {
	private String name;
	private String code;
	private static Vector<CourseCategory> categoryList;
	
	static {
		categoryList = new Vector<>();
		categoryList.add(new CourseCategory("가족코스","C0112"));
		categoryList.add(new CourseCategory("나홀로코스","C0113"));
		categoryList.add(new CourseCategory("힐링코스","C0114"));
		categoryList.add(new CourseCategory("도보코스","C0115"));
		categoryList.add(new CourseCategory("캠핑코스","C0116"));
		categoryList.add(new CourseCategory("맛코스","C0117"));
	}
	
	public CourseCategory(String name, String code) {
		super();
		this.name = name;
		this.code = code;
	}
	public static Vector<CourseCategory> getCategoryList() {
		return categoryList;
	}
	

}
