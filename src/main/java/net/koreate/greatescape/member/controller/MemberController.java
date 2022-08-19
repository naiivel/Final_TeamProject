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
import net.koreate.greatescape.product.vo.ProductVO;

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
		
		if(login != null && login.getMember_leave().equals("Y")) {
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
	
	// (회원)마이페이지 출력-예약내역
	@GetMapping("/myPage")
	public String myPage(MemberVO vo,Model model) throws Exception{
		ProductVO product = ms.reservationlist(vo.getMember_num());
		model.addAttribute("product",product);
		
		return "member/myPage";
	}
	
	// (회원)예약내역 상세보기
	@GetMapping("/reservDetail")
	public String reservDetail(MemberVO vo,Model model)throws Exception{
		ProductVO product = ms.reservationlist(vo.getMember_num());
		vo.setMember_product_num(product.getProduct_num());
		int people = ms.findpeople(vo);
		
		model.addAttribute("loginMember",vo);
		model.addAttribute("product",product);
		model.addAttribute("people",people);
		
		return "member/reservDetail";
	}
	
	// (회원) 정보수정 페이지이동
	@GetMapping("/changeInfo")
	public String changeInfo() {
		return "member/changeInfo";
	}
	
	// (회원) 정보수정 비밀번호 확인
	@PostMapping("/insertPass")
	public String insertPass(MemberVO vo,Model model)throws Exception{
		MemberVO loginMember = ms.pwCheck(vo);
		
		if(loginMember != null) {
			model.addAttribute("loginMember",loginMember);
			return "member/info";
		}
		
		String message = "비밀번호를 틀리셨습니다. 다시입력해주세요.";
		model.addAttribute("message",message);
		
		return "member/changeInfo";
	}
	
	// (회원) 정보수정 페이지
	@GetMapping("/info")
	public String info() {
		return "member/info";
	}
	
	
	// (회원) 정보수정 적용
	@PostMapping("/modify")
	public String modify(MemberVO vo,HttpSession session) throws Exception{
		MemberVO changeMember = ms.modify(vo);
		if(changeMember.getMember_product_num() != 0) {
			ms.changeRev(changeMember);
		}
		
		session.removeAttribute("userInfo");
		session.setAttribute("userInfo",changeMember);
		
		return "member/info";
	}
	
	// (회원) 탈퇴 페이지 이동
	@GetMapping("/withdraw")
	public String withdraw() {
		return "member/withdraw";
	}
	
	// (회원) 탈퇴시 필요한 비밀번호 확인
	@PostMapping("/delete")
	public String delete(MemberVO vo,HttpSession session) {
		MemberVO loginMember = ms.pwCheck(vo);
		ms.changeLeave(loginMember);
		session.removeAttribute("userInfo");
		
		return "redirect:/";
	}
	
	
	
	
	
}	









