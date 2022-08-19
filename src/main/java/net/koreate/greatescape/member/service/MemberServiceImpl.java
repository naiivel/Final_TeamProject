package net.koreate.greatescape.member.service;


import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import net.koreate.greatescape.member.dao.MemberDAO;
import net.koreate.greatescape.member.vo.MemberVO;
import net.koreate.greatescape.product.vo.ProductVO;

@Service
@RequiredArgsConstructor
public class MemberServiceImpl implements MemberService {

	private final MemberDAO mdao;

	@Override
	public MemberVO loginCheck(MemberVO vo) {
		return mdao.loginCheck(vo);
	}

	@Override
	public void join(MemberVO vo) {
		mdao.join(vo);
	}

	@Override
	public int reduplcationCheck(MemberVO vo) {
		int result = mdao.idCheck(vo);
		return result;
	}

	@Override
	public  ProductVO reservationlist(int member_num) {
		int product_num = mdao.findProductNum(member_num);
		
		return mdao.findproduct(product_num);
	}

	@Override
	public int findpeople(MemberVO vo) {
		return mdao.findPeople(vo);
	}

	@Override
	public MemberVO pwCheck(MemberVO vo) {
		return mdao.pwCheck(vo);
	}

	@Override
	public MemberVO modify(MemberVO vo) {
		
		return mdao.modify(vo);
	}

	@Override
	public void changeRev(MemberVO changeMember) {
		mdao.reservChange(changeMember);
		
	}

	@Override
	public void changeLeave(MemberVO loginMember) {
		mdao.changeLeave(loginMember);
		
	}

}
