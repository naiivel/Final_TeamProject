package net.koreate.greatescape.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;
import net.koreate.greatescape.member.service.MemberService;

@Controller
@RequiredArgsConstructor
@RequestMapping("/member/")
public class MemberController {

	private final MemberService ms;
	
	@GetMapping("login")
	public void login() {}
	
	@GetMapping("join")
	public void join() {}
}
