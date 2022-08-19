package net.koreate.greatescape.member.dao;


import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import net.koreate.greatescape.member.vo.MemberVO;
import net.koreate.greatescape.product.vo.ProductVO;

public interface MemberDAO {
	
	//로그인
	@Select("SELECT * FROM tbl_member WHERE member_id = #{member_id} AND member_pw = #{member_pw}")
	MemberVO loginCheck(MemberVO vo);

	//회원가입
	@Insert("INSERT INTO tbl_member(member_id,member_pw,member_name,member_gender,member_birth,member_phone,member_address,"
			+ "member_address_detail,member_email) VALUES(#{member_id},#{member_pw},#{member_name},#{member_gender},#{member_birth},"
			+ "#{member_phone},#{member_address},#{member_address_detail},#{member_email})")
	void join(MemberVO vo);
	
	// ID중복체크
	@Select("SELECT count(*) FROM tbl_member WHERE member_id = #{member_id}")
	int idCheck(MemberVO vo);

	// 예약상품 번호 찾기
	@Select("SELECT product_num FROM tbl_member WHERE member_num = #{member_num}")
	int findProductNum(int member_num);

	// 상품 찾기
	@Select("SELECT * FROM tbl_product WHERE product_num =  #{product_num}")
	ProductVO findproduct(int product_num);
	
	// 예약 인원 검색 
	@Select("SELECT rev_people FROM tbl_reservation WHERE product_num = #{member_product_num}")
	int findPeople(MemberVO vo);

	//비밀번호 일치여부확인
	@Select("SELECT * FROM tbl_member WHERE member_num = #{member_num} AND member_pw = #{member_pw}")
	MemberVO pwCheck(MemberVO vo);

	// 회원정보수정
	@Update("UPDATE tbl_member SET member_pw = #{member_pw} , member_phone = #{member_phone} , member_address = #{member_address}, "
			+ "member_address_detail = #{member_address_detail} , member_email = {member_email} WHERE member_num = #{member_num}")
	MemberVO modify(MemberVO vo);

	//예약 테이블 수정
	@Update("UPDATE tbl_reservation SET rev_phone = #{member_phone} , rev_email = #{member_email} WHERE product_num = #{member_product_num}")
	void reservChange(MemberVO changeMember);

	//회원탈퇴 여부 N변경
	@Update("UPDATE tbl_member SET member_leave = 'N' WHERE member_num = #{member_num}")
	void changeLeave(MemberVO loginMember);
	
}
