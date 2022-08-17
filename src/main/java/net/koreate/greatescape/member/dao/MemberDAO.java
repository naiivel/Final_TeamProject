package net.koreate.greatescape.member.dao;


import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import net.koreate.greatescape.member.vo.MemberVO;

public interface MemberDAO {
	
	//로그인
	@Select("SELECT * FROM tbl_member WHERE member_id = #{member_id} AND member_pw = #{member_pw}")
	MemberVO loginCheck(MemberVO vo);

	//회원가입
	@Insert("INSERT INTO tbl_member(member_id,member_pw,member_name,member_gender,member_birth,member_phone,member_address,"
			+ "member_address_detail,member_email) VALUES(#{member_id},#{member_pw},#{member_name},#{member_gender},#{member_birth},"
			+ "#{member_phone},#{member_address},#{member_address_detail},#{member_email})")
	void join(MemberVO vo);
	
	
}
