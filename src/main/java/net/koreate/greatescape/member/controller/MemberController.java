package net.koreate.greatescape.member.controller;

import java.util.List;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import net.koreate.greatescape.member.service.MemberService;
import net.koreate.greatescape.member.vo.EmbassyVO;
import net.koreate.greatescape.member.vo.MemberVO;
import net.koreate.greatescape.member.vo.SalesVO;
import net.koreate.greatescape.product.vo.ProductVO;

import net.koreate.greatescape.reservation.vo.ReservationVO;
import net.koreate.greatescape.utils.Criteria;
import net.koreate.greatescape.utils.PageMaker;


@Controller
@RequiredArgsConstructor
@RequestMapping("member")
public class MemberController {

	private final MemberService ms;
	
	@Autowired
	JavaMailSender mailSender;
	
	// 로그인 페이지 이동
	@GetMapping("/login")
	public String login(HttpServletRequest request,HttpSession session) {
		if(request.getHeader("Referer") != null) {
			System.out.println(request.getHeader("Referer"));
			session.setAttribute("url",request.getHeader("Referer"));
		}
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
				cookie.setMaxAge(24*60*60);
				response.addCookie(cookie);
			}
		}else {
			Cookie cookie = new Cookie("id", vo.getMember_id());
			cookie.setMaxAge(0);
			response.addCookie(cookie);
		}
		
		if(login != null && login.getMember_leave().equals("Y")) {
			session.setAttribute("userInfo",login);
			if(session.getAttribute("url") != null) {
				String url = (String) session.getAttribute("url");
				System.out.println(url);
				
				String prevPage = url.replace("http://localhost:8080/greatescape/", "");
				System.out.println(prevPage);
				return "redirect:/"+prevPage;
			}
		}
		String message = "아이디와 비밀번호가 일치하지 않습니다.";
		model.addAttribute("message",message);
		return "member/login";
	}
	
	// 로그아웃 시도
	@PostMapping("/logOut")
	public String logOut(HttpSession session){
		if (session.getAttribute("userInfo") != null) {
			session.removeAttribute("userInfo");
			if(session.getAttribute("url") != null) {
				session.removeAttribute("url");
			}
		}
		return "redirect:/";
	}
	
	// 아이디 찾기 페이지이동
	@GetMapping("id_find")
	public String id_find(Model model) {
		String id = "아이디찾기";
		model.addAttribute("id",id);
		return "member/find";
	}
	
	// 비밀번호 찾기 페이지이동
	@GetMapping("pw_find")
	public String pw_find() {
		return "member/find";
	}
	

	// 계정정보 찾기 시도
	@PostMapping("findInfo")
	@ResponseBody
	public MemberVO findId(MemberVO vo) {
		MemberVO findMember = ms.findId(vo);
		
		return findMember;

	}
	

	//인증메일 전송
	@GetMapping("/checkEmail")
	@ResponseBody
	public String sendMail(@RequestParam("member_email") String email)throws Exception {
		System.out.println(email);
		String code = "";
		for(int i=0; i<5;i++) {
			code +=(int)(Math.random()*10);
		}
		
		MimeMessage message = mailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message,"UTF-8");
		helper.setFrom("yukitozx7@gmail.com");
		helper.setTo(email);
		helper.setSubject("인증 메일입니다.");
		helper.setText("인증 코드 : <h3>["+code+"]</h3>",true);
		mailSender.send(message);
		System.out.println("발신 완료");
		return code;
	}

	
	// 회원가입 시도
	@PostMapping("/joinPost")
	public String joinPost(MemberVO vo, Model model) throws Exception {

		ms.join(vo);
		String message = "대 탈출에 오신 것을 환영합니다.";
		model.addAttribute("message",message);
		
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
	@Transactional
	public String myPage(MemberVO vo,HttpServletRequest request,HttpSession session) throws Exception{
		vo = (MemberVO) session.getAttribute("userInfo");
		MemberVO loginMember = ms.memberInfo(vo.getMember_num());
		if(loginMember.getProduct_num()==0) {
			return "member/info";
		}
		
		ProductVO product = ms.findProduct(loginMember.getProduct_num());
		
		session.removeAttribute("userInfo");
		
		session.setAttribute("product", product);
		session.setAttribute("userInfo", loginMember);
		
		
		return "member/info";
	}
	
	// (회원)예약내역 상세보기
	@GetMapping("/reservDetail")


	@Transactional
	public String reservDetail(HttpSession session,Model model,EmbassyVO url)throws Exception{
		MemberVO loginMember = (MemberVO) session.getAttribute("userInfo");
		ReservationVO reserv = ms.findpeople(loginMember);
		String tripInfo = ms.findtripInfo(loginMember.getProduct_num());
		
		ProductVO product = ms.findProduct(loginMember.getProduct_num());
		
		String embassy = url.findEmbassy(product.getProduct_country());
		System.out.println(embassy);
		
		model.addAttribute("embassy",embassy);
		
		model.addAttribute("reservation",reserv);
		model.addAttribute("tripInfo",tripInfo);
		
		return "member/product";
	}
	

	// (회원)예약내역 취소
	@GetMapping("/deleteProduct")
	@Transactional
	public String deleteProduct(HttpSession session,Model model) throws Exception{
		MemberVO loginMember = (MemberVO) session.getAttribute("userInfo");
		ms.deleteP(loginMember.getProduct_num());
		
		loginMember = ms.memberInfo(loginMember.getMember_num());
		
		session.removeAttribute("product");
		session.removeAttribute("userInfo");
		
		session.setAttribute("userInfo",loginMember);
		
		String message = "해당 예약이 취소되었습니다.";
		model.addAttribute("message",message);
		
		return "member/info";
	}
	
	
	// (회원) 정보수정 페이지이동
	@GetMapping("/edit_check")
	public String changeInfo() {
		return "member/edit_check";
	}
	
	// (회원) 정보수정 비밀번호 확인
	@PostMapping("/insertPass")
	public String insertPass(MemberVO vo,Model model,HttpServletRequest request,HttpSession session)throws Exception{
		String member_pw = request.getParameter("member_pw");
		vo = (MemberVO) session.getAttribute("userInfo");
		vo.setMember_pw(member_pw);
		
		MemberVO loginMember = ms.pwCheck(vo);
		
		if(loginMember != null) {
			return "member/edit";
		}
		
		String message = "비밀번호를 틀리셨습니다. 다시입력해주세요.";
		model.addAttribute("message",message);
		
		return "member/edit_check";
	}

	
	// (회원) 정보수정 적용
	@PostMapping("/modify")
	public String modify(MemberVO vo,HttpSession session,Model model) throws Exception{
		int result = ms.modify(vo);
		
		if(result != 0) {
			MemberVO changeMember = ms.memberInfo(vo.getMember_num());
			ms.changeRev(changeMember);
			
			session.removeAttribute("userInfo");
			session.setAttribute("userInfo",changeMember);
			
			String message = "성공적으로 정보가 수정되었습니다";
			model.addAttribute("message",message);
			
			return "member/info";
		}
		
		String message = "정보 수정에 실패하셨습니다. 다시 시도해주세요.";
		model.addAttribute("message",message);
		
		return "member/edit";
	}
	
	// (회원) 탈퇴 페이지 이동
	@GetMapping("/withdraw")
	public String withdraw(Model model) {
		model.addAttribute("withdraw","탈퇴");
		return "member/edit_check";
	}
	
	// (회원) 탈퇴시 필요한 비밀번호 확인 후 탈퇴 진행
	@PostMapping("/delete")
	@Transactional
	public String delete(MemberVO vo,HttpSession session,Model model,HttpServletRequest request) {
		String member_pw = request.getParameter("member_pw");
		vo = (MemberVO) session.getAttribute("userInfo");
		vo.setMember_pw(member_pw);
		 // 비밀번호 확인
		 MemberVO loginMember = ms.pwCheck(vo); 
		 if(loginMember != null) {
			 // 회원 가입여부 'N'변경
			 ms.changeLeave(loginMember);
			 // 관련데이터 삭제 및 변경
			 ms.deleteP(loginMember.getProduct_num());
			 
			 session.removeAttribute("userInfo");
			 session.removeAttribute("product");
			 	 
			 return "redirect:/";
		 }
		String message = "비밀번호를 틀리셨습니다. 다시입력해주세요.";
		
		model.addAttribute("message",message);
		
		return "member/edit_check";
	}
	
	
	// 비회원 예약확인 페이지 이동
	@GetMapping("/rev_check")
	public String rev_check() {
		return "nomember/index";
	}

	// 비회원 예약확인시도
	@PostMapping("/norev")
	@Transactional
	public String norev(ReservationVO vo,Model model,HttpSession session) throws Exception{
		ReservationVO noMember = ms.findrev(vo);
		
		if(noMember != null) {
			session.setAttribute("noMember", noMember);
			
			ProductVO noproduct = ms.findProduct(noMember.getProduct_num());
			
			model.addAttribute("noproduct",noproduct);
			
			String tripInfo = ms.findtripInfo(noproduct.getProduct_num());
			model.addAttribute("tripInfo",tripInfo);
			
			return "nomember/show";
		}
		
		String message = "해당하는 예약이 없습니다.";
		
		model.addAttribute("message",message);
		
		return "nomember/index";
	}
	
	// 비회원 예약취소
	@GetMapping("/deleteNoProduct")
	public String deleteNoProduct(Model model,HttpSession session) throws Exception{
		ReservationVO noMember = (ReservationVO) session.getAttribute("noMember");
		ms.deleteNP(noMember);
		
		String message = "예약이 취소되었습니다.";
		model.addAttribute("message",message);
		
		return "member/login";
	}
	

	// 관리자 페이지 이동
	@GetMapping("/adminPage")
	@Transactional
	public String adminPage(@ModelAttribute("cri") Criteria cri,
			Model model,HttpServletRequest request) throws Exception{
		String type = request.getParameter("type");
		System.out.println(type);
		if(type != null) {
			if(type.equals("회원")) {
				String member_master = "N";
				List<MemberVO> list = ms.typeMemberList(cri,member_master);
				PageMaker pm = ms.typePageMaker(cri,member_master);
				
				model.addAttribute("list",list);
				model.addAttribute("pm",pm);
				return "admin/index";
			}else {
				String member_master = "Y";
				List<MemberVO> list = ms.typeMemberList(cri,member_master);
				PageMaker pm = ms.typePageMaker(cri,member_master);
				
				model.addAttribute("list",list);
				model.addAttribute("pm",pm);
				return "admin/index";
			}
		}
		List<MemberVO> list = ms.memberList(cri);
		
		PageMaker pm  = ms.pageMaker(cri);
		
		model.addAttribute("list",list);
		model.addAttribute("pm",pm);
		return "admin/index";
	}
	
}	




















