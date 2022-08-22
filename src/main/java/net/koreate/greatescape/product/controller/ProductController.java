package net.koreate.greatescape.product.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.RequiredArgsConstructor;
import net.koreate.greatescape.product.service.ProductService;
import net.koreate.greatescape.product.vo.ProductVO;

@Controller
@RequiredArgsConstructor
@RequestMapping("product")
public class ProductController {
	
	private final ProductService ps;
	
	//아시아 여행페이지 이동
	@GetMapping("/asia")
	public String asia() {
		System.out.println("ssss");
		return "product/asia";
	}
	
	//오세아니아 여행페이지 이동
	@GetMapping("/oceania")
	public String oceania() {
		
		return "product/oceania";
	}
		
	//유럽 여행페이지 이동
	@GetMapping("/europe")
	public String europe() {
		
		return "product/europe";
	}
		
	//아메리카 여행페이지 이동
	@GetMapping("/america")
	public String america() {
		
		return "product/america";
	}
		
	//상품 등록 페이지 이동(관리자 전용)
	@GetMapping("/register")
	public String register() {
		return "product/register";
	}
	
	//상품 등록 후 리스트페이지 이동(관리자 전용)
	@PostMapping("/register")
	public String registerProduct(ProductVO vo,RedirectAttributes rttr) throws Exception {
		String msg = ps.registerProduct(vo);
		rttr.addFlashAttribute("result", msg);
		return "redirect:/product/default";
	}
	
	//상품 상세보기페이지 이동
	@GetMapping("/detail")
	public String detail(HttpServletRequest request,HttpServletResponse response,int product_num) throws Exception {
		ProductVO vo = ps.detail(product_num);
		request.setAttribute("product", vo);
		return "product/detail";
	}
	
}