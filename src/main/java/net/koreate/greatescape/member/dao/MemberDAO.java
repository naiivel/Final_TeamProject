package net.koreate.greatescape.member.dao;


import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import net.koreate.greatescape.member.vo.MemberVO;
import net.koreate.greatescape.product.vo.ProductVO;
import net.koreate.greatescape.reservation.vo.ReservationVO;

public interface MemberDAO {
	
	//로그인
	@Select("SELECT * FROM tbl_member WHERE member_id = #{member_id} AND member_pw = #{member_pw}")
	MemberVO loginCheck(MemberVO vo);

	//회원가입
	@Insert("INSERT INTO tbl_member(member_id,member_pw,member_name,member_gender,member_birth,member_phone,member_address,"
			+ "member_address_detail,member_email) VALUES(#{member_id},#{member_pw},#{member_name},#{member_gender},#{member_birth},"
			+ "#{member_phone},#{member_address},#{member_address_detail},#{member_email})")
	MemberVO join(MemberVO vo);
	
	// ID중복체크
	@Select("SELECT count(*) FROM tbl_member WHERE member_id = #{member_id}")
	int idCheck(MemberVO vo);

	// 이용자 정보가져오기
	@Select("SELECT * FROM tbl_member WHERE member_num = #{member_num}")
	MemberVO findUserInfo(int member_num);

	// 상품 찾기
	@Select("SELECT * FROM tbl_product WHERE product_num =  #{product_num}")
	ProductVO findproduct(int product_num);
	
	// 예약 인원 검색 
	@Select("SELECT rev_adult,rev_minor FROM tbl_reservation WHERE product_num = #{product_num}")
	ReservationVO findPeople(MemberVO vo);

	//비밀번호 일치여부확인
	@Select("SELECT * FROM tbl_member WHERE member_num = #{member_num} AND member_pw = #{member_pw}")
	MemberVO pwCheck(MemberVO vo);

	// 회원정보수정
	@Update("UPDATE tbl_member SET member_pw = #{member_pw} , member_phone = #{member_phone} , member_birth = #{member_birth} ,"
			+ " member_address = #{member_address}, "
			+ "member_address_detail = #{member_address_detail} , member_email = #{member_email} , member_updatedate = "
			+ "now() , member_gender = #{member_gender} WHERE member_num = #{member_num}")
	int modify(MemberVO vo);

	//예약 테이블 수정
	@Update("UPDATE tbl_reservation SET rev_phone = #{member_phone} , rev_email = #{member_email} WHERE product_num = #{product_num}")
	void reservChange(MemberVO changeMember);

	//회원탈퇴 여부 N변경
	@Update("UPDATE tbl_member SET member_leave = 'N' WHERE member_num = #{member_num}")
	void changeLeave(MemberVO loginMember);

	//예약 일정정보 가져오기
	@Select("SELECT detail_schedule FROM tbl_detail WHERE product_num = #{product_num}")
	String findDetailInfo(int member_product_num);

	//회원정보에서 예약 캔슬
	@Update("UPDATE tbl_member SET product_num = 0 WHERE product_num = #{product_num}")
	void cancelProduct(int product_num);
	
	// 예약테이블에서 예약삭제
	@Delete("DELETE FROM tbl_reservation WHERE product_num = #{product_num}")
	void deletereserv(int product_num);
	// 상품번호에 해당하는 상품 잔여좌석 +1
	@Update("UPDATE tbl_product SET product_seat = product_seat + 1 WHERE product_num = #{product_num}")
	void seatPlus(int product_num);

	// 이메일로 아이디 찾기
	@Select("SELECT * FROM tbl_member WHERE member_email = #{member_email}")
	MemberVO idFinder(MemberVO vo);
	
}