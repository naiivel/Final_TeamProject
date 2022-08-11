package net.koreate.greatescape.board.controller;

import org.springframework.stereotype.Controller;

import lombok.RequiredArgsConstructor;
import net.koreate.greatescape.board.service.BoardService;

@Controller
@RequiredArgsConstructor
public class BoardController {

	private final BoardService bs;
}
