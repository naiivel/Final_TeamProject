package net.koreate.greatescape.member.service;

import net.koreate.greatescape.member.vo.MemberVO;
import net.koreate.greatescape.product.vo.ProductVO;
import net.koreate.greatescape.reservation.vo.ReservationVO;

public interface MemberService {
	
	// 로그인
	MemberVO loginCheck(MemberVO vo);

	// 회원가입
	void join(MemberVO vo);
	
	// ID중복체크
	int reduplcationCheck(MemberVO vo);

	// 예약 인원 찾기
	ReservationVO findpeople(MemberVO vo);

	// 비밀번호 확인
	MemberVO pwCheck(MemberVO vo);

	// 회원정보 수정
	int modify(MemberVO vo);

	// 회원정보 수정에 따른 예약정보 수정
	void changeRev(MemberVO changeMember);

	// 회원탈퇴 진행
	void changeLeave(MemberVO loginMember);

	// 예약페이지의 정보가져오기
	String findtripInfo(int member_product_num);

	// 회원번호로 회원정보 찾기
	MemberVO memberInfo(int member_num);

	// 상품번호로 상품찾기
	ProductVO findProduct(int member_product_num);

	// 예약상품 취소
	void deleteP(int product_num);

	
	


}
