package net.koreate.greatescape.member.service;

import net.koreate.greatescape.member.vo.MemberVO;
import net.koreate.greatescape.product.vo.ProductVO;

public interface MemberService {
	
	// 로그인
	MemberVO loginCheck(MemberVO vo);

	// 회원가입
	void join(MemberVO vo);
	
	// ID중복체크
	int reduplcationCheck(MemberVO vo);
	
	// 예약내역 불러오기
	ProductVO reservationlist(int Member_num);

	// 예약 인원 찾기
	int findpeople(MemberVO vo);

	// 비밀번호 확인
	MemberVO pwCheck(MemberVO vo);

	// 회원정보 수정
	MemberVO modify(MemberVO vo);

	// 회원정보 수정에 따른 예약정보 수정
	void changeRev(MemberVO changeMember);

	// 회원탈퇴 진행
	void changeLeave(MemberVO loginMember);
	
	


}
