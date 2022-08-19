package net.koreate.greatescape;



import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import net.koreate.greatescape.member.dao.MemberDAO;
import net.koreate.greatescape.member.vo.MemberVO;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:context/root-context.xml"})
public class InsertTest {
	
	@Autowired
	MemberDAO dao;
	
	MemberVO vo;
	
	@Test
	public void tests() throws Exception{

	}

}
