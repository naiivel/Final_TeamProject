package net.koreate.greatescape.board.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;
import net.koreate.greatescape.board.service.BoardService;
import net.koreate.greatescape.board.vo.FAQBoardVO;
import net.koreate.greatescape.utils.PageMaker;
import net.koreate.greatescape.utils.SearchCriteria;

@Controller
@RequiredArgsConstructor
@RequestMapping("board/")
public class BoardController {

	private final BoardService bs;

	@PostMapping("faq/write")
	public String writeFAQ(FAQBoardVO fvo) {
		String message = "";
		try {
			message = bs.writeFAQ(fvo);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return message;
	}

	@GetMapping("faq/list")
	public String faqList(SearchCriteria cri, Model model) throws Exception {
		List<FAQBoardVO> list = bs.faqList(cri);
		PageMaker pm = bs.getPageMaker(cri);
		model.addAttribute("list", list);
		model.addAttribute("pm", pm);
		return "board/faqList";
	}
}