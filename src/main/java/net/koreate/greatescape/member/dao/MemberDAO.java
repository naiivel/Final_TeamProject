package net.koreate.greatescape.member.dao;

import org.apache.ibatis.annotations.Insert;

import net.koreate.greatescape.member.vo.MemberVO;

public interface MemberDAO {

	@Insert("INSERT INTO tbl_member(member_id,member_pw,member_name,member_gender,member_birth,member_phone,member_email,member_master) "
			+ "values(#{member_id},#{member_pw},#{member_name},#{member_gender},#{member_birth},#{member_phone},#{member_email},#{member_master});")
	void test(MemberVO vo)throws Exception;
	
}
