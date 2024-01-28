package com.multi.mvc.culture.model.vo.leports;

import java.util.Arrays;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class LeportsCategory {
	private String name;
	private String code;
	private static ConcurrentHashMap<String, Vector<LeportsCategory>> categoryMap;
	
	static {
		categoryMap = new ConcurrentHashMap<>();
		categoryMap.put("레포츠소개", new Vector<>(Arrays.asList(
				new LeportsCategory("수상레포츠","A03010200"),
				new LeportsCategory("항공레포츠","A03010300")
				)));
		
		categoryMap.put("육상레포츠", new Vector<>(Arrays.asList(
				new LeportsCategory("수련시설","A03020200"),
				new LeportsCategory("경기장","A03020300"),
				new LeportsCategory("인라인(실내인라인 포함)","A03020400"),
				new LeportsCategory("자전거하이킹","A03020500"),
				new LeportsCategory("카트","A03020600"),
				new LeportsCategory("골프","A03020700"),
				new LeportsCategory("경마","A03020800"),
				new LeportsCategory("경륜","A03020900"),
				new LeportsCategory("카지노","A03021000"),
				new LeportsCategory("승마","A03021100"),
				new LeportsCategory("스키/스노보드","A03021200"),
				new LeportsCategory("스케이트","A03021300"),
				new LeportsCategory("썰매장","A03021400"),
				new LeportsCategory("수렵장","A03021500"),
				new LeportsCategory("사격장","A03021600"),
				new LeportsCategory("야영장,오토캠핑장","A03021700"),
				new LeportsCategory("암벽등반","A03021800"),
				new LeportsCategory("서바이벌 게임","A03022000"),
				new LeportsCategory("ATV","A03022100"),
				new LeportsCategory("MTB","A03022200"),
				new LeportsCategory("오프로드","A03022300"),
				new LeportsCategory("번지점프","A03022400"),
				new LeportsCategory("스키(보드)렌탈샵","A03022600"),
				new LeportsCategory("트래킹","A03022700")
				)));
		
		categoryMap.put("수상레포츠", new Vector<>(Arrays.asList(
				new LeportsCategory("윈드서핑/제트스키","A03030100"),
				new LeportsCategory("카약/카누","A03030200"),
				new LeportsCategory("요트","A03030300"),
				new LeportsCategory("스노쿨링/스킨스쿠버 다이빙","A03030400"),
				new LeportsCategory("민물낚시","A03030500"),
				new LeportsCategory("바다낚시","A03030600"),
				new LeportsCategory("수영","A03030700"),
				new LeportsCategory("래프팅","A03030800")
				)));
		
		categoryMap.put("항공레포츠", new Vector<>(Arrays.asList(
				new LeportsCategory("스카이다이빙","A03040100"),
				new LeportsCategory("초경량비행","A03040200"),
				new LeportsCategory("행글라이딩/패러글라이딩","A03040300"),
				new LeportsCategory("열기구","A03040400")
				)));
		
		categoryMap.put("복합레포츠", new Vector<>(Arrays.asList(
				new LeportsCategory("복합레포츠","A03050100")
				)));
	}
	
	public LeportsCategory(String name, String code) {
		super();
		this.name = name;
		this.code = code;
	}
	public static ConcurrentHashMap<String, Vector<LeportsCategory>> getCategoryMap(){
		return categoryMap;
	}

}
