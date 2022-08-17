package net.koreate.greatescape.member.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	public String loginPost(MemberVO vo,HttpSession session,HttpServletRequest request,
			HttpServletResponse response,Model model) throws Exception{
		MemberVO login = ms.loginCheck(vo);
		if(request.getParameter("remember_id") != null) {
			String remember = request.getParameter("remember_id");
			if(remember.equals("checked")) {
				Cookie cookie = new Cookie("id",vo.getMember_id());
				response.addCookie(cookie);
			}
		}else {
			Cookie cookie = new Cookie("id", vo.getMember_id());
			cookie.setMaxAge(0);
			response.addCookie(cookie);
		}
		
		if(login != null) {
			session.setAttribute("userInfo",login);
			return "redirect:/";
		}
		String message = "아이디와 비밀번호가 일치하지 않습니다.";
		model.addAttribute("message",message);
		return "member/login";
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
	public String joinPost(MemberVO vo,HttpServletRequest request,Model model)throws Exception{
		if(request.getParameter("reduCkConfirm").equals("N")) {
			String message = "아이디 중복체크를 하지 않으셨습니다. 중복체크를 진행해주세요.";
			model.addAttribute("writeInfo",vo);
			model.addAttribute("message",message);
			return "member/join";
		}
		
		if(!request.getParameter("passwordCheck").equals(vo.getMember_pw())) {
			String message = "비밀번호가 일치하지않습니다. 확인해주세요.";
			model.addAttribute("writeInfo",vo);
			model.addAttribute("message",message);
			return "member/join";
		}
		
			//ms.join(vo);
		System.out.println("회원가입");
		return "member/login";
	}
	
	// 회원가입 아이디 중복체크
	@PostMapping("/redu_check")
	@ResponseBody
	public int reduplicationCheck(MemberVO vo,Model model)throws Exception{
		int result = ms.reduplcationCheck(vo);
		return result;
	}
	
}









