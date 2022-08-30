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

import lombok.RequiredArgsConstructor;
import net.koreate.greatescape.board.service.BoardService;
import net.koreate.greatescape.board.vo.CommentVO;
import net.koreate.greatescape.board.vo.FAQBoardVO;
import net.koreate.greatescape.board.vo.NoticeBoardVO;
import net.koreate.greatescape.board.vo.QNABoardVO;
import net.koreate.greatescape.utils.PageMaker;
import net.koreate.greatescape.utils.SearchCriteria;

@Controller
@RequiredArgsConstructor
@RequestMapping("/board/*")
public class BoardController {

	
	private final BoardService bs;
	
	/*************************************/
	@GetMapping("faqWrite")
	public String faqWrite() throws Exception{
		return "board/faqWrite";
	}
	
	@PostMapping("faqWrite")
	public String writeFAQ( @RequestParam("faq_category")String faq_category, 
			@RequestParam("faq_title")String faq_title, @RequestParam("faq_content")String faq_content) throws Exception {
		
		FAQBoardVO vo= new FAQBoardVO(faq_category,faq_title,faq_content);
		bs.writeFAQ(vo);
		System.out.println("controller-writeFAQ: "+vo);
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
	@PostMapping("categoryList/trip")
	public ResponseEntity<Map<String, Object>> tripList(SearchCriteria cri, FAQBoardVO vo){
		ResponseEntity<Map<String, Object>> entity= null;
		try {
			Map<String,Object> map= new HashMap<>();
			System.out.println(vo);
			List<FAQBoardVO> tripList = bs.categoryList(cri, vo.getFaq_category());
			map.put("tripList", tripList);
			PageMaker tripPm = bs.getCategoryPageMaker(cri, vo.getFaq_category());
			map.put("tripPm", tripPm);
			
			entity= new ResponseEntity<>(map, HttpStatus.OK);
		} catch (Exception e) {
			entity= new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		System.out.println(entity);
		
		return entity;
	}
	
	@ResponseBody
	@PostMapping("categoryList/airline")
	public ResponseEntity<Map<String, Object>> airlineList(SearchCriteria cri, FAQBoardVO vo){
		ResponseEntity<Map<String, Object>> entity= null;
		try {
			Map<String,Object> map= new HashMap<>();
			System.out.println(vo);
			List<FAQBoardVO> airlineList = bs.categoryList(cri, vo.getFaq_category());
			map.put("airlineList", airlineList);
			PageMaker airlinePm = bs.getCategoryPageMaker(cri, vo.getFaq_category());
			map.put("airlinePm", airlinePm);
			
			entity= new ResponseEntity<>(map, HttpStatus.OK);
		} catch (Exception e) {
			entity= new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		System.out.println(entity);
		
		return entity;
	}
	
	@ResponseBody
	@PostMapping("categoryList/reservation")
	public ResponseEntity<Map<String, Object>> reserveList(SearchCriteria cri, FAQBoardVO vo){
		ResponseEntity<Map<String, Object>> entity= null;
		try {
			Map<String,Object> map= new HashMap<>();
			System.out.println(vo);
			List<FAQBoardVO> reserveList = bs.categoryList(cri, vo.getFaq_category());
			map.put("reserveList", reserveList);
			PageMaker reservePm = bs.getCategoryPageMaker(cri, vo.getFaq_category());
			map.put("reservePm", reservePm);
			
			entity= new ResponseEntity<>(map, HttpStatus.OK);
		} catch (Exception e) {
			entity= new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		System.out.println(entity);
		
		return entity;
	}
	
	@ResponseBody
	@PostMapping("categoryList/passport")
	public ResponseEntity<Map<String, Object>> passList(SearchCriteria cri, FAQBoardVO vo){
		ResponseEntity<Map<String, Object>> entity= null;
		try {
			Map<String,Object> map= new HashMap<>();
			System.out.println(vo);
			List<FAQBoardVO> passList = bs.categoryList(cri, vo.getFaq_category());
			map.put("passList", passList);
			PageMaker passPm = bs.getCategoryPageMaker(cri, vo.getFaq_category());
			map.put("passPm", passPm);
			
			entity= new ResponseEntity<>(map, HttpStatus.OK);
		} catch (Exception e) {
			entity= new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		System.out.println(entity);
		
		return entity;
	}
	
	@ResponseBody
	@PostMapping("categoryList/other")
	public ResponseEntity<Map<String, Object>> otherList(SearchCriteria cri, FAQBoardVO vo){
		ResponseEntity<Map<String, Object>> entity= null;
		try {
			Map<String,Object> map= new HashMap<>();
			System.out.println(vo);
			List<FAQBoardVO> otherList = bs.categoryList(cri, vo.getFaq_category());
			map.put("otherList", otherList);
			PageMaker otherPm = bs.getCategoryPageMaker(cri, vo.getFaq_category());
			map.put("otherPm", otherPm);
			
			entity= new ResponseEntity<>(map, HttpStatus.OK);
		} catch (Exception e) {
			entity= new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		System.out.println(entity);
		
		return entity;
	}

	
	@PostMapping("faqDelete")
	public String faqDelete(@RequestParam("faq_num")int faq_num) throws Exception {
		bs.deleteFAQ(faq_num);
		return "redirect:faq";
	}
	
	/****************************/
	@GetMapping("notice")
	public ModelAndView noticeList(ModelAndView mav, SearchCriteria cri) throws Exception {
		
		List<NoticeBoardVO> noticeList = bs.noticeList(cri);
		PageMaker pm= bs.getNoticePageMaker(cri);
		System.out.println("noticeList: "+noticeList);
		System.out.println("pm: "+pm);
		
		mav.addObject("noticeList",noticeList);
		mav.addObject("pm",pm);
		mav.setViewName("board/notice");
		
		return mav;
	}
	
	@GetMapping("noticeWrite")
	public String noticeWrite() throws Exception{
		return "board/noticeWrite";
	}
	
	@PostMapping("noticeWrite")
	public String writeNotice( @RequestParam("notice_category")String notice_category, 
			@RequestParam("notice_title")String notice_title, @RequestParam("notice_content")String notice_content) throws Exception {
		
		NoticeBoardVO vo= new NoticeBoardVO(notice_category,notice_title,notice_content);
		bs.writeNotice(vo);
		System.out.println("controller 에서 vo : "+vo);
		return "redirect:notice";
	}
	
	@GetMapping("noticeDetail")
	public String readNotice(int notice_num, Model model) throws Exception {
		NoticeBoardVO vo = bs.readNotice(notice_num);
		model.addAttribute("notice", vo);
		return "board/noticeDetail";
	}
	
	@ResponseBody
	@PostMapping("categoryList/notice")
	public ResponseEntity<Map<String, Object>> noticeCategoryList(SearchCriteria cri, NoticeBoardVO vo){
		ResponseEntity<Map<String, Object>> entity= null;
		try {
			Map<String,Object> map= new HashMap<>();
			System.out.println(vo);
			List<NoticeBoardVO> noticeList = bs.noticeCategoryList(cri, vo.getNotice_category());
			map.put("noticeCategoryList", noticeList);
			PageMaker noticePm = bs.getNoticeCategoryPageMaker(cri, vo.getNotice_category());
			map.put("noticePm", noticePm);
			
			entity= new ResponseEntity<>(map, HttpStatus.OK);
		} catch (Exception e) {
			entity= new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		System.out.println(entity);
		
		return entity;
	}
	
	@ResponseBody
	@PostMapping("categoryList/mofa")
	public ResponseEntity<Map<String, Object>> mofaList(SearchCriteria cri, NoticeBoardVO vo) throws Exception{
		ResponseEntity<Map<String, Object>> entity= null;
		try {
			Map<String,Object> map= new HashMap<>();
			System.out.println(vo);
			List<NoticeBoardVO> mofaList = bs.noticeCategoryList(cri, vo.getNotice_category());
			map.put("mofaList", mofaList);
			PageMaker mofaPm = bs.getNoticeCategoryPageMaker(cri, vo.getNotice_category());
			map.put("mofaPm", mofaPm);
			
			entity= new ResponseEntity<>(map, HttpStatus.OK);
		} catch (Exception e) {
			entity= new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		System.out.println(entity);
		
		return entity;
	}

	/********************** qna ************************/
	
	@GetMapping("/qna")
	public ModelAndView qna(ModelAndView mav, SearchCriteria cri) throws Exception {
		
		List<NoticeBoardVO> qnaNoticeList = bs.qnaNoticeList();
		mav.addObject("qnaNoticeList",qnaNoticeList);
		System.out.println("qnaNoticeList: "+qnaNoticeList);
		
		List<QNABoardVO> qnaList = bs.getQnaList(cri);
		
		PageMaker pm= bs.getQnaPageMaker(cri);
		System.out.println("qnaPM: "+pm);
		mav.addObject("qnaList",qnaList);
		mav.addObject("pm",pm);
		mav.setViewName("board/qna");
		
		return mav;
	}
	//상세보기
	@GetMapping("qnaDetail")
	public String readQNA(int qna_num, Model model) throws Exception {
		QNABoardVO vo = bs.readQNA(qna_num);
		List<CommentVO> comments= bs.getCommentList(qna_num);
		model.addAttribute("qna", vo);
		model.addAttribute("commentList", comments);
		return "board/qnaDetail";
	}
	//글쓰기
	@GetMapping("qnaWrite")
	public String qnaWrite() throws Exception{
		return "board/qnaWrite";
	}
	
	@PostMapping("qnaWrite")
	public String writeQNA(@RequestParam("member_num")int member_num, @RequestParam("qna_title")String qna_title, 
			@RequestParam("qna_question")String qna_question, @RequestParam("qna_writer")String qna_writer) throws Exception {
		QNABoardVO vo= new QNABoardVO(qna_title, qna_question, qna_writer);
		vo.setMember_num(member_num);
		bs.writeQNA(vo);
		System.out.println("controller 에서 vo : "+vo);
		return "redirect:qna";
	}
	
	//댓글 쓰기
	@PostMapping("comment")
	public String addComment(@RequestParam("qna_num")int qna_num, @RequestParam("qna_answer")String qna_answer,
			@RequestParam("comment_writer")String comment_writer) throws Exception{
		CommentVO vo= new CommentVO();
		
		vo.setQna_num(qna_num);
		vo.setQna_answer(qna_answer);
		vo.setComment_writer(comment_writer);
		System.out.println("CommentVO: "+vo);
		bs.addComment(vo);
		bs.updateQNAanswer(vo);
		String redirectURL="redirect:qnaDetail?qna_num="+qna_num;
		
		return redirectURL;
	}
	//댓글리스트
	@GetMapping("getCommentList")
	@ResponseBody
	public List<CommentVO> getCommentList(@RequestParam("qna_num")int qna_num)throws Exception{
		CommentVO vo= new CommentVO();
		vo.setQna_num(qna_num);
		return bs.getCommentList(qna_num);
		
	}
}




