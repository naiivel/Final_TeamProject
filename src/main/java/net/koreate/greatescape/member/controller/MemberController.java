package net.koreate.greatescape.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;
import net.koreate.greatescape.member.service.MemberService;
import net.koreate.greatescape.member.vo.MemberVO;

@Controller
@RequiredArgsConstructor
@RequestMapping("member")
public class MemberController {

	private final MemberService ms;
	
	// 로그인 페이지 이동
	@GetMapping("/login")
	public String login() {
		return "member/login";
	}
	
	// 회원가입 페이지 이동
	@GetMapping("/join")
	public String join() {
		return "member/join";
	}
	
	// 로그인 시도
	@PostMapping("/loginPost")
	public String loginPost(MemberVO vo,HttpSession session) throws Exception{
		session.setAttribute("userInfo",ms.loginCheck(vo));
		return "redirect:/";
	}
	
	// 로그아웃 시도
	@GetMapping("/logOut")
	public String logOut(HttpSession session){
		if (session.getAttribute("userInfo") != null) {
			session.removeAttribute("userInfo");
		}
		return "redirect:/";
	}
	
	// 회원가입 시도
	@PostMapping("/joinPost")
	public String joinPost(MemberVO vo)throws Exception{
			ms.join(vo);
		return "member/login";
	}
}









