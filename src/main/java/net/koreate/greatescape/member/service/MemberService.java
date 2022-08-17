package net.koreate.greatescape.member.service;

import net.koreate.greatescape.member.vo.MemberVO;

public interface MemberService {
	
	// 로그인
	MemberVO loginCheck(MemberVO vo);

	// 회원가입
	void join(MemberVO vo);

}
