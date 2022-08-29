package net.koreate.greatescape.common.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.RequiredArgsConstructor;
import net.koreate.greatescape.common.dao.TempDAO;
import net.koreate.greatescape.product.vo.FullProductDTO;

@Controller
@RequiredArgsConstructor
public class HomeController {
	
	private final TempDAO dao;
	
	@GetMapping("/")
	public String home(Model model) {
		List<FullProductDTO> list = dao.getIndexList();
		model.addAttribute("list", list);
		return "index";
	}
	
	@GetMapping("/nomember/index")
	public void nomemberIndex() {}
	
	@GetMapping("/nomember/show")
	public void nomemberShow() {}

	
}
