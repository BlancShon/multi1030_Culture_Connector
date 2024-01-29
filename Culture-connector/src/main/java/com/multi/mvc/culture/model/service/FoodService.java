package com.multi.mvc.culture.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.multi.mvc.api.OpenApiManagerForXml_food;
import com.multi.mvc.culture.model.mapper.FoodMapper;
import com.multi.mvc.culture.model.vo.Food;
import com.multi.mvc.culture.model.vo.FoodParam;


@Service
public class FoodService {

	
	@Autowired
	private FoodMapper mapper;

	public int save() {
		int result = 0;
		
		// 파스 2 돌림
		List<Food> list = OpenApiManagerForXml_food.parse();		
		for(int i = 0; i< list.size(); i++) {						
//			Food f = OpenApiManagerForXml_food.parse2(Food); // 		
			Food f = OpenApiManagerForXml_food.parse2(list.get(i));
																	
			
			list.set(i, f); 										
		}
		System.out.println(list);
		
		// 파스 3돌림
//		List<Food> list2 = OpenApiManagerForXml_food.parse();			
		for(int i = 0; i< list.size(); i++) {							
			Food f2 = OpenApiManagerForXml_food.parse3(list.get(i));    
			
			list.set(i, f2);    										
		}
		
		System.out.println(list);
		
		// 파스 4돌림
//		List<Food> list2 = OpenApiManagerForXml_food.parse();			
		for(int i = 0; i< list.size(); i++) {							
			Food f3 = OpenApiManagerForXml_food.parse4(list.get(i));    
			
			list.set(i, f3);    										
		}
		
		System.out.println(list);
		
		result = mapper.insertFood(list);
		System.out.println("@@@@@result : " + result);
		return result;
		
			
	}
	
	
	public int count() {
		
		
		return mapper.selectFoodCount();
		
		
	}
	
	public void createTable() {
		mapper.createTableFood();
		
		
	}

	public List<Food> getFoodSearchList(FoodParam param){
		
		return mapper.selectFoodList(param);
	}
	
//	

	public int getFoodCount(FoodParam param) {
	
		return mapper.selectFoodCount(param);
	}
	
	@Transactional(rollbackFor = Exception.class)
	public Food findFoodByNo(int cfno) {
		Food food = mapper.selectFoodByNo(cfno);
		
		return food;
	}


	public List<Food> getListForMap() {
		return mapper.getListForMap();
	}
	
//	@Transactional(rollbackFor = Exception.class)
//	public Food findFoodByAddr1(Food addr1) {
//		return mapper.selectFoodByAddr1(addr1);
//		
//	}

	
//	public void selectFoodBasic() {
//		mapper.selectFoodBasic(null);
//	}
}
// // 파싱된 데이터를 리스트에 담아주고 (api 클래스는 api만 작업한 것이니까,, 여기에서 리스트에 담아준다..?
//포문을 돌린다 리스트의 크기만큼
// i에는 food가 들어가있음   인자로하여 다시 파싱2를 반복문으로 돌려줌, -> 컨트롤러에가면 자세히..
//새로이 구축된 데이터들이 위에 f에 담길 것이고 그걸 아래에 세팅해준다
//다시 list에 i번째에 객체를 각각 담아준다 set은 교체, 리스트 객체 배열에서 객체로..??
//똑같이 첫번째 파싱한것을 가져와서~ list2로 할당해주고 
//list2만큼 포문을 돌릴 건데
//이번에는 parse3 돌려줘서 food 객체를 기준으로 돌려준다  그 컨트롤로에서 필요한 키값을 설정해주자
//그리고 다시 list에 f2 객체들 세팅