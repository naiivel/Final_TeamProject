package net.koreate.greatescape.member.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import net.koreate.greatescape.member.dao.MemberDAO;
import net.koreate.greatescape.member.vo.MemberVO;
import net.koreate.greatescape.product.vo.ProductVO;
import net.koreate.greatescape.reservation.vo.ReservationVO;

import net.koreate.greatescape.utils.Criteria;
import net.koreate.greatescape.utils.PageMaker;
import net.koreate.greatescape.utils.SearchCriteria;

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
	public ReservationVO findpeople(MemberVO vo) {
		return mdao.findPeople(vo);
	}

	@Override
	public MemberVO pwCheck(MemberVO vo) {
		return mdao.pwCheck(vo);
	}

	@Override
	public int modify(MemberVO vo) {

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

	@Override
	public String findtripInfo(int member_product_num) {
		return mdao.findDetailInfo(member_product_num);
	}

	@Override
	public MemberVO memberInfo(int member_num) {
		return mdao.findUserInfo(member_num);
	}

	@Override
	public ProductVO findProduct(int member_product_num) {
		return mdao.findproduct(member_product_num);
	}

	@Override
	@Transactional
	public void deleteP(int product_num) {
		// 회원정보에서 상품번호 변경
		mdao.cancelProduct(product_num);
		// 상품번호로 예약테이블 내역 삭제
		mdao.deletereserv(product_num);
		// 해당상품 잔여좌석 +1
		mdao.seatPlus(product_num);
	}

	@Override
	public MemberVO findId(MemberVO vo) {
		return mdao.idFinder(vo);
	}

	@Override
	public ReservationVO findrev(ReservationVO vo) {
		return mdao.nmreservation(vo);
	}

	@Override
	@Transactional
	public void deleteNP(ReservationVO noMember) {
		// 예약테이블 내역 삭제
		mdao.deletereserv(noMember.getProduct_num());
		// 잔여좌석+1
		mdao.seatPlus(noMember.getProduct_num());

	}

	@Override
	public List<MemberVO> memberList(SearchCriteria cri) {
		return mdao.memberList(cri);
	}

	@Override
	public PageMaker pageMaker(SearchCriteria cri) {
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(mdao.listCount());
		return pageMaker;
	}

}
