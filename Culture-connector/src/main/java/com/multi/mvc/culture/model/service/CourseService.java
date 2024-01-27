package com.multi.mvc.culture.model.service;

import java.util.List;
import java.util.Vector;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.mvc.api.ApiParsing;
import com.multi.mvc.culture.model.mapper.CourseMapper;
import com.multi.mvc.culture.model.vo.Course;
import com.multi.mvc.culture.model.vo.course.CourseCategory;
import com.multi.mvc.culture.model.vo.course.CourseParam;

@Service
public class CourseService {

	
	
	@Autowired
	private CourseMapper mapper;
	
	private static  Vector<CourseCategory> categoryList;
	
	static {
		categoryList = new Vector<>();
		categoryList.add(new CourseCategory("가족코스","C0112"));
		categoryList.add(new CourseCategory("나홀로코스","C0113"));
		categoryList.add(new CourseCategory("힐링코스","C0114"));
		categoryList.add(new CourseCategory("도보코스","C0115"));
		categoryList.add(new CourseCategory("캠핑코스","C0116"));
		categoryList.add(new CourseCategory("맛코스","C0117"));
	}
	
	public void createTable() {
		mapper.createTableCourse();
	}
	
	public void initCourse() {
		List<Course> list = ApiParsing.parseAndExportToTheListAdvanced(Course.class);
		for(Course item : list) {
			try {
				mapper.insertCourse(item);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	public int count() {
		return mapper.selectCount();
	}

	public List<Course> getCourseTable() {
		return mapper.selectTable();
	}
	
	// 아래 두개는 데이터 주입용으로 임시로 만들었습니다
//	 @Transactional(noRollbackFor = SQLException.class)
	public void saveData(@RequestParam("name") String name, @RequestParam("page") String page) {
		
//		List<Course> list =ApiParsing.parseAndExportToTheListAdvanced(Course.class);
		List<Course> list = ApiParsing.courseParser(Course.class, name, page);
		for(Course item : list) {
			try {
				mapper.insertCourse(item);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	// 데이터 리스트를 보여주는 메소드 임시입니다
	public List<Course> getListForDB() {
		return mapper.selectTable();
	}

	public Vector<CourseCategory> getCategoryList() {
		return categoryList;
	}

	public List<Course> getCourseList(CourseParam param) {
		return mapper.selectCourseList(param);
	}

	public int getCourseCount(CourseParam param) {
		return mapper.selectCourseCount(param);
	}

	public Course getCourse(int contentid) {
		return mapper.selectById(contentid);
	}
}

