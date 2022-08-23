package net.koreate.greatescape;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


import net.koreate.greatescape.board.service.BoardService;
import net.koreate.greatescape.board.vo.FAQBoardVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:context/**/*-context.xml"})
public class FAQTest {
	
	@Autowired 
	BoardService bs; 
	
	
	//@Test
	public void writeTest() throws Exception {
		FAQBoardVO fvo= new FAQBoardVO();
		
		fvo.setFaq_category("기타");
		fvo.setFaq_title("되냐");
		fvo.setFaq_content("되라되라되라되라");
		
	//	String message= bs.writeFAQ(fvo);
		
	//	System.out.println(message);
	}
	
	@Test
	public void modifyTest() throws Exception {
		FAQBoardVO fvo= new FAQBoardVO();
		fvo.setFaq_title("제발제발제발제발");
		fvo.setFaq_content("좀좀좀좀좀좀좀좀좀좀좀");
		fvo.setFaq_num(10);
		fvo.setFaq_category("기타");
		bs.modifyFAQ(fvo);
		
		System.out.println(fvo);
	}
	
}