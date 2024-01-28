package com.multi.mvc.member.model.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.multi.mvc.board.model.vo.Board;
import com.multi.mvc.culture.model.vo.Culture;
import com.multi.mvc.member.model.vo.Member;
import com.multi.mvc.member.model.vo.WishList;

// @Mapper : DAO 없이 자동으로 Mapper 객체를 생성해주는 어노테이션. 별도의 DAO 작성이 필요 없어진다.
// ※ 주의 : mapper의 id와 동일한 메소드 네이밍을 맞춰야한다. 

@Mapper
public interface MemberMapper {
	int selectCount();
	List<Member> selectAll();
	Member selectMember(int mno);
	Member selectMemberById(String id);
	int insertMember(Member member);
	int updateMember(Member member);
	
	/**
	 * @param map : password, mno 필수
	 * @return 결과 값
	 */
	int updatePwd(Map<String, String> map);
	int deleteMember(int mno);
	
	public void addWishList(Map<String, String> wishMap);
		
	public List<Culture> selectCultureWishList(String userId);	

		
	public int countWishList(Map<String, String> wishMap);
	
	void createTableWishList();
	
	
	public List<Board> selectReviewById(String userId);
	
	Member selectMemberByKakaoToken(String token);
	Member selectMemberByGoogleToken(String googleToken);
	@Select("SELECT * FROM member WHERE email = #{email}")
    Member selectMemberByEmail(String email);
	
}
