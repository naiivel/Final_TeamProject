package net.koreate.greatescape.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;
import net.koreate.greatescape.board.service.BoardService;

@Controller
@RequiredArgsConstructor
@RequestMapping("/board/")
public class BoardController {

	private final BoardService bs;
	
}