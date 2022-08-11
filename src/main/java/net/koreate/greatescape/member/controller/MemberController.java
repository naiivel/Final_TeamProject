package net.koreate.greatescape.member.controller;

import org.springframework.stereotype.Controller;

import lombok.RequiredArgsConstructor;
import net.koreate.greatescape.member.service.MemberService;

@Controller
@RequiredArgsConstructor
public class MemberController {

	private final MemberService ms;
}
