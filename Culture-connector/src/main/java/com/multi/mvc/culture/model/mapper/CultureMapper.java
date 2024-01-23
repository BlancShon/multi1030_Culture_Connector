package com.multi.mvc.culture.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.board.model.vo.Board;
import com.multi.mvc.board.model.vo.BoardParam;
import com.multi.mvc.culture.model.vo.Culture;
import com.multi.mvc.culture.model.vo.CultureParam;

@Mapper
public interface CultureMapper {
	
	void insertCulture(List<Culture> list);
	
	int selectCount();
	
	Culture selectCultureByNo(int cno);
	
	void createTableCulture();
	
	List<Culture> selectCultureList(CultureParam param);
	int selectCultureCount(CultureParam param);

	// DB 주입 확인을 위해 만들었습니다
	List<Culture> selectTable();
	
}
