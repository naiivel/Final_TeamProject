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
	
	@GetMapping("/service")
	public void service() {}
	
	@GetMapping("/service/show")
	public String service1show() {
		return "/board/service_show";
	}
	
	@GetMapping("/service2")
	public void service2() {}
	
	@GetMapping("/service2/new")
	public String service2new() {
		return "/board/service2_new";
	}
	
	@GetMapping("/service3")
	public void service3() {}
}