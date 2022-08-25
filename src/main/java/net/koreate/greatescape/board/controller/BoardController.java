package net.koreate.greatescape.board.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.RequiredArgsConstructor;
import net.koreate.greatescape.board.service.BoardService;
import net.koreate.greatescape.board.vo.FAQBoardVO;
import net.koreate.greatescape.utils.Criteria;
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
	
	
	
	@GetMapping("faqWrite")
	public String faqWrite() throws Exception{
		return "board/faqWrite";
	}
	
	@PostMapping("faqWrite")
	public String writeFAQ( @RequestParam("faq_category")String faq_category, 
			@RequestParam("faq_title")String faq_title, @RequestParam("faq_content")String faq_content) throws Exception {
		
		FAQBoardVO vo= new FAQBoardVO(faq_category,faq_title,faq_content);
		bs.writeFAQ(vo);
		
		return "redirect:faq";
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
	
	@ResponseBody
	@PostMapping("categoryList")
	public ResponseEntity<Map<String, Object>> categoryList(SearchCriteria cri, FAQBoardVO vo){
		ResponseEntity<Map<String, Object>> entity= null;
		try {
			Map<String,Object> map= new HashMap<>();
			System.out.println(vo);
			List<FAQBoardVO> categoryList = bs.categoryList(cri, vo.getFaq_category());
			map.put("categoryList", categoryList);
			PageMaker categoryPm = bs.getCategoryPageMaker(cri, vo.getFaq_category());
			map.put("categoryPm", categoryPm);
			
			entity= new ResponseEntity<>(map, HttpStatus.OK);
		} catch (Exception e) {
			entity= new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		System.out.println(entity);
		
		return entity;
	}
	
	
}