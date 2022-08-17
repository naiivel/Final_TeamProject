package net.koreate.greatescape.member.service;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import net.koreate.greatescape.member.dao.MemberDAO;
import net.koreate.greatescape.member.vo.MemberVO;

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
}
