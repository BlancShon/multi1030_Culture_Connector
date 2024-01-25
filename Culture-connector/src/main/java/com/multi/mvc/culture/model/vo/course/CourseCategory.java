package com.multi.mvc.culture.model.vo.course;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class CourseCategory {
	private String name;
	private String code;
	
	public CourseCategory(String name, String code) {
		super();
		this.name = name;
		this.code = code;
	}
	
	
}
