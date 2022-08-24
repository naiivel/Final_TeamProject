package net.koreate.greatescape.board.controller;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.RequiredArgsConstructor;
import net.koreate.greatescape.board.service.BoardService;
import net.koreate.greatescape.board.vo.FAQBoardVO;
import net.koreate.greatescape.utils.PageMaker;
import net.koreate.greatescape.utils.SearchCriteria;

@Controller
@RequiredArgsConstructor
@RequestMapping("/board/*")
public class BoardController {

	
	@GetMapping("/qna")
	public void qna() {}
	
	@GetMapping("/notice")
	public void notice() {}
	
	private final BoardService bs;

	@PostMapping("faq/write")
	public String writeFAQ(FAQBoardVO fvo, RedirectAttributes rttr) throws Exception {
		bs.writeFAQ(fvo);
		rttr.addAttribute("faq",fvo);
		System.out.println("fvo: "+fvo);
		return "redirect:board/faq";
	}

	@GetMapping("faq")
	public ModelAndView faqList(ModelAndView mav, SearchCriteria cri) throws Exception {
		
		mav.setViewName("board/faq");
		System.out.println("list: "+cri);
		List<FAQBoardVO> list = bs.faqList(cri);
		mav.addObject("list",list);
		PageMaker pm= bs.getPageMaker(cri);
		System.out.println("pm: "+pm);
		mav.addObject("pm",pm);
		return mav;
	}
	
	@GetMapping("faq/*")
	public ModelAndView categoryList(ModelAndView mav, FAQBoardVO vo, SearchCriteria cri) throws Exception {
		if(vo.getFaq_category().equals("해외여행")) {
			mav.setViewName("faq?category=trip");
		} else if(vo.getFaq_category().equals("항공")) {
			mav.setViewName("faq?category=airline0");
		} else if(vo.getFaq_category().equals("예약/결제")) {
			mav.setViewName("faq?category=reservation");
		} else if(vo.getFaq_category().equals("여권/비자/환전")) {
			mav.setViewName("faq?category=passport");
		} else if(vo.getFaq_category().equals("홈페이지/기타")) {
			mav.setViewName("faq?category=other");
		}
		
		return mav;
	}
	
	
	
}