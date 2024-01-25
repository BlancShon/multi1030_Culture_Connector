package com.multi.mvc.member.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.multi.mvc.culture.model.vo.Culture;
import com.multi.mvc.google.service.GoogleService;
import com.multi.mvc.kakao.service.KaKaoService;
import com.multi.mvc.member.model.service.MemberService;
import com.multi.mvc.member.model.vo.Member;
import com.multi.mvc.member.model.vo.WishList;

import lombok.extern.slf4j.Slf4j;

@Slf4j // log4j 선언 대신에 작성해주는 lombok 어노테이션
@Controller
@SessionAttributes("loginMember") // loginMember를 model에서 취급할때 세션으로 처리하는 어노테이션
public class MemberController {
	
	private static final Logger log = LoggerFactory.getLogger(MemberController.class);
    
	@Autowired
	private MemberService service;
	
	
	
	private WishList wishList;
	
	private Culture culture;

	private Member member;
	
	
	@Autowired
	private KaKaoService kakaoService;
	
	@Autowired
	private GoogleService googleService;
	
	
	@GetMapping("/wishList/createTable")
	public String createTable() {
		log.debug("wishList 테이블 생성");
		service.createTable();
		return "redirect:/dbsave";
	}
	
	
	
	
	
	@GetMapping("/loginForm")
	public String loginForm() {
		log.debug("로그인 요청");
		return "loginForm";
	}

	// action : /login, method : POST
	// 파라메터 : memberId, memberPwd
//	@RequestMapping(name="/login", method = RequestMethod.POST)
	@PostMapping("/login") // POST임을 알리는 어노테이션
	public String login(Model model, String memberId, String memberPwd) {
		log.debug("@@@@@ Login : " + memberId + ", " + memberPwd);
		
		Member loginMember = service.login(memberId, memberPwd);
		
		if(loginMember != null) { // 로그인이 성공한 경우
			model.addAttribute("loginMember", loginMember); // 세션에 저장하는 로직 @SessionAttributes 사용
			return "redirect:/"; // index로 보내는 리다이렉트문
		} else { // 로그인이 실패한 경우
			model.addAttribute("msg", "아이디와 패스워드를 확인해주세요.");
			model.addAttribute("location", "/login");
			return "common/msg";
		}
	}
	
	@GetMapping("/member/enroll/kakao")
	public String enrollKakao(Model model, String code) {
		log.info("가입 페이지 요청");
		if(code != null) {
			try {
				String enrollUrl = "http://localhost:8080/mvc/member/enroll/kakao";
				System.out.println("code : " + code);
				String token = kakaoService.getToken(code, enrollUrl);
				System.out.println("token : " + token);
				Map<String, Object> map = kakaoService.getUserInfo(token);
				System.out.println(map);
				model.addAttribute("kakaoMap",map);
				
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return "/member/kakaoMemberEnroll";
	}
	
	@GetMapping("/kakaoLogin")
	public String kakaoLogin(Model model, String code) {
		log.info("로그인 요청");
		System.out.println("code =" +  code);
		
		if(code != null) {
			try {
				String loginUrl = "http://localhost:8080/mvc/kakaoLogin";
				String token = kakaoService.getToken(code, loginUrl);
				Map<String, Object> map = kakaoService.getUserInfo(token);
				String kakaoToken = (String) map.get("id");
				Member loginMember = service.loginKaKao(kakaoToken);

				if(loginMember != null) { // 로그인 성공
					model.addAttribute("loginMember", loginMember); // 세션으로 저장되는 코드, 이유: @SessionAttributes
					return "redirect:/";
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		model.addAttribute("msg", "로그인에 실패하였습니다.");
		model.addAttribute("location","/");
		return "common/msg";
	}
	

	@RequestMapping("/logout")
	public String logout(SessionStatus status) { // status: 세션의 상태를 확인하는 인자
		log.debug("status : " + status.isComplete()); // isComplete : 세션이 완료 되었는지
		status.setComplete(); // 세션을 종료시키는 메소드
		log.debug("status : " + status.isComplete()); 
		return "redirect:/";
	}
	
	// 회원가입 페이지를 연결 시켜주는 핸들러 메소드
	@GetMapping("/member/enroll")
	public String enrollPage() { // xxxPage = 단순 html/jsp view로 연결하는 핸들러 메소드 패턴
		log.debug("회원 가입 페이지 요청");
		return "member/memberEnroll";
	}
	
	@PostMapping("/member/enroll")
	public String enroll(Model model, @ModelAttribute Member member) {  // @ModelAttribute 생략가능!
		log.debug("회원가입 요청 member : " + member.toString());

		int result = 0;
		try {
			result = service.save(member);
		} catch (Exception e) {}
		
		if(result > 0) {
			model.addAttribute("msg", "회원가입에 성공하였습니다.");
			model.addAttribute("location", "/");
		} else {
			model.addAttribute("msg", "회원가입에 실패하였습니다. 입력정보를 확인하세요.");
			model.addAttribute("location", "/member/enroll"); // 리다이렉트 설계
		}
		
		return "common/msg";
	}
	
	
	

	
	
	
	
	// url 검사 : http://localhost/mvc/member/idCheck?id=test2
	
	// AJAX로 ID 중복검사하는 핸들러
	@RequestMapping("/member/idCheck")
	public ResponseEntity<Map<String, Object>> idCheck(String id){
		log.debug("아이디 중복 확인 : " + id);
		
		boolean validate = service.validate(id);
		Map<String, Object> map = new HashMap<>();
		map.put("validate", validate);
		
		return new ResponseEntity<Map<String,Object>>(map, HttpStatus.OK);
	}
	

	// 회원정보 보기 + update
	@GetMapping("/member/view")
	public String memberViewPage() {
		log.debug("회원정보 보기 페이지 요청");
		return "member/memberView";
	}
	
	// http://localhost/mvc/member/update
	@PostMapping("/member/update")
	public String update(Model model, 
			@ModelAttribute Member member,
			@SessionAttribute(name="loginMember", required = false) Member loginMember // 세션 값
			) {  
		log.debug("업데이트 요청 member : " + member.toString());
		log.debug("업데이트 요청 loginMember : " + loginMember.toString());
		
		// 보안 코드부 예시
		if(loginMember == null || loginMember.getId().equals(member.getId()) == false) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			model.addAttribute("location", "/");
			return "common/msg";
		}
		
		int result = 0;
		try {
			member.setMno(loginMember.getMno()); // update를 위한 mno 셋팅
			result = service.save(member); // update 요청
		} catch (Exception e) {}
		
		if(result > 0) {
			loginMember = service.findByNo(loginMember.getMno()); // db로부터 다시 select 데이터 업데이트
			model.addAttribute("loginMember", loginMember); // 세션에 있는 loginMember update
			model.addAttribute("msg", "회원정보 수정에 성공하였습니다.");
			model.addAttribute("location", "/member/view");
		} else {
			model.addAttribute("msg", "회원정보 수정에 실패하였습니다. 입력정보를 확인하세요.");
			model.addAttribute("location", "/member/view"); // 리다이렉트 설계
		}
		return "common/msg";
	}
	
	@GetMapping("/member/updatePwd")
	public String updatePwdPage() {
		return "/member/updatePwd";
	}
	
	@PostMapping("/member/updatePwd")
	public String updatePwd(Model model, String password,
			@SessionAttribute(name="loginMember", required = true) Member loginMember) {
		int result = 0;
		try {
			result = service.updatePwd(loginMember.getMno(), password);
		} catch (Exception e) {}
		
		if(result > 0) {
			model.addAttribute("msg", "비밀번호 변경에 성공하였습니다.");
		} else {
			model.addAttribute("msg", "비밀번호를 변경 할 수 없습니다.");
		}
		model.addAttribute("script", "self.close()");
		
		return "/common/msg";
	}
	
	@RequestMapping("/member/delete")
	public String deleteMember(Model model,
			@SessionAttribute(name="loginMember", required = true) Member loginMember) {
		int result = 0;
		try {
			result = service.delete(loginMember.getMno());
		} catch (Exception e) {}
		
		if(result > 0) {
			model.addAttribute("msg", "회원탈퇴에 성공하였습니다.");
			model.addAttribute("location", "/logout");
		} else {
			model.addAttribute("msg", "회원탈퇴를 할 수 없습니다. 관리자 문의 바랍니다.");
			model.addAttribute("location", "/member/view");
		}
		return "/common/msg";
	}
	
	// 구글 관련
	@GetMapping("/googlelogin")
    public RedirectView redirectToGoogleLogin() {
        String googleAuthURL = googleService.generateGoogleAuthorizationURL();
        log.debug("Redirecting to Google login: {}", googleAuthURL); // Correct use of logging placeholders
        return new RedirectView(googleAuthURL);
    }
    
		
	@GetMapping("/member/enroll/google")
    public String handleGoogleRedirect(@RequestParam("code") String authorizationCode, HttpSession session, RedirectAttributes redirectAttributes) {
        try {
            log.info("Received Google redirect with code: {}", authorizationCode); // Log the received authorization code
            
            String accessToken = googleService.exchangeCodeForAccessToken(authorizationCode);
            log.debug("Obtained access token: {}", accessToken); // Log the obtained access token

            Map<String, Object> userInfo = googleService.getUserInfo(accessToken);
            log.debug("Fetched user info: {}", userInfo); // Log the fetched user info

            // Process userInfo to either create a new user or update an existing one
            Member member = service.processGoogleUser(userInfo);
            log.info("Processed Google user info for member: {}", member.getId()); // Adjust to log relevant member info

            // Set user information in session to keep the user logged in
            session.setAttribute("loginMember", member);
            log.info("User logged in and session updated for member: {}", member.getId()); // Adjust as necessary

            return "redirect:/";
        } catch (Exception e) {
            log.error("Failed to handle Google login redirect", e); // Log the exception
            redirectAttributes.addFlashAttribute("error", "Failed to log in with Google.");
            return "redirect:/loginForm";
        }
    }
	
	
	
	@RequestMapping("member/addWishList")
	public String addWishList(Model model,@SessionAttribute(name="loginMember", required = false) Member loginMember, @RequestParam("contentid") int contentid) {
		
		String userId = loginMember.getId();
	 
		
		System.out.println("userId = " + userId);
		System.out.println("contentid = " + contentid);
		int count = service.countWishList(userId,contentid);
		
		if(count != 0) {
		
			
			model.addAttribute("msg", "해당 콘텐츠는 이미  추가되어있습니다.");
			model.addAttribute("location", "/culture/detail");
			model.addAttribute("contentid", contentid);
			model.addAttribute("count", count);
			return "redirect:/culture/detail";
		}
		System.out.println("memberId343535 = " + userId);
		service.addWishList(userId,contentid);

		/* model.addAttribute("list", wishList); */
		model.addAttribute("contentid", contentid);
		model.addAttribute("count", count);
		model.addAttribute("msg", "해당 콘텐츠를 위시리스트에 추가했습니다.");
		return "redirect:/culture/detail";
		
		
		
	}
	
	@GetMapping("member/viewWishList")
	public String viewWishList(Model model, @SessionAttribute(name="loginMember", required = false) Member loginMember) {
		String userId = loginMember.getId();
		List<Culture> culture = service.viewWishList(userId);
		System.out.println("컨트롤러 = " + culture);
		model.addAttribute("culture", culture);
		for(int i = 0; i< culture.size(); i++) {
			culture.get(i).getTitle();
			System.out.println("장소명" + culture.get(i).getTitle());
		}
			
		
		return "member/wishList";
		
		
	}
	
	
		
}










