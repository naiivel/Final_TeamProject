package net.koreate.greatescape.common.controller;

import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import net.koreate.greatescape.common.dao.TempDAO;
import net.koreate.greatescape.product.vo.FullProductDTO;
import net.koreate.greatescape.product.vo.ProductVO;

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
	
//	@GetMapping("/board/service")
//	public void service() {}
//	
//	@GetMapping("/board/service/show")
//	public String service1show() {
//		return "/board/service_show";
//	}
//	
//	@GetMapping("/board/service/new")
//	public String service1new() {
//		return "/board/service_new";
//	}
//	
//	@GetMapping("/board/service2")
//	public void service2() {}
//	
//	@GetMapping("/board/service2/new")
//	public String service2new() {
//		return "/board/service2_new";
//	}
//	
//	@GetMapping("/board/service3")
//	public void service3() {}
//	
//	@GetMapping("/board/service3/new")
//	public String service3new() {
//		return "/board/service3_new";
//	}
//	
//	@GetMapping("/board/service3/show")
//	public String service3show() {
//		return "/board/service3_show";
//	}
//	
//	
//	@GetMapping("/member/info/product")
//	public String product() {
//		return "/member/product";
//	}
//	
//	@GetMapping("/member/edit/check")
//	public String editCheck() {
//		return "/member/edit_check";
//	}
//	
//	@GetMapping("/member/edit")
//	public void edit() {}
//	
//	@GetMapping("/admin/index")
//	public void adminIndex() {}
//	
//	@GetMapping("/admin/indexShow")
//	public void adminIndexShow() {}
//	
//	@GetMapping("/admin/indexProduct")
//	public void adminIndexProduct() {}
//	
//	@GetMapping("/admin/indexMakeAdmin")
//	public void adminIndexMakeAdmin() {}
//	
//	@GetMapping("/admin/money")
//	public void adminMoney() {}
//	
//	@GetMapping("/admin/product")
//	public void adminProduct() {}
//	
//	@GetMapping("/nomember/index")
//	public void nomemberIndex() {}
//	
//	@GetMapping("/nomember/show")
//	public void nomemberShow() {}
	
}
