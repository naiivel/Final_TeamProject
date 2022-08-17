package net.koreate.greatescape.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.RequiredArgsConstructor;
import net.koreate.greatescape.board.service.BoardService;

@Controller
@RequiredArgsConstructor
public class BoardController {

	private final BoardService bs;
	
	@GetMapping("temp")
	public String temp() {
		return "temp/template";
	}
	
}