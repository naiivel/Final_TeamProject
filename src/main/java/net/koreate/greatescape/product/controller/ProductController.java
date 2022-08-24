package net.koreate.greatescape.product.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.RequiredArgsConstructor;
import net.koreate.greatescape.product.service.ProductService;
import net.koreate.greatescape.product.vo.ProductDetailVO;
import net.koreate.greatescape.product.vo.ProductVO;

@Controller
@RequiredArgsConstructor
@RequestMapping("product")
public class ProductController {
	
	private final ProductService ps;
	
	//아시아 여행페이지 이동
	@GetMapping("/asia")
	public String asia(Model model) throws Exception {
		List<ProductVO> list = ps.getAsiaList();
		model.addAttribute("list", list);
		return "product/asia";
	}
	
	//오세아니아 여행페이지 이동
	@GetMapping("/oceania")
	public String oceania(Model model) throws Exception {
		List<ProductVO> list = ps.getOceaniaList();
		model.addAttribute("list", list);
		return "product/oceania";
	}
		
	//유럽 여행페이지 이동
	@GetMapping("/europe")
	public String europe(Model model) throws Exception {
		List<ProductVO> list = ps.getEuropeList();
		model.addAttribute("list", list);
		return "product/europe";
	}
		
	//아메리카 여행페이지 이동
	@GetMapping("/america")
	public String america(Model model) throws Exception {
		List<ProductVO> list = ps.getAmericaList();
		model.addAttribute("list", list);
		return "product/america";
	}
	
	//나라탭 선택 시 상품리스트 호출
	@GetMapping("/selectCountry")
	@ResponseBody
	public List<ProductVO> selectCountry(ProductVO vo) throws Exception {
		System.err.println(vo);
		List<ProductVO> list = ps.getProductList(vo);
		return list;
	}
	
	//상세보기 페이지 이동
	@GetMapping("/show")
	public String show(Model model,int product_num) throws Exception {
		ProductVO vo = ps.read(product_num);
		model.addAttribute("board", vo);
		return "product/show";
	}
	
	//상품 등록 페이지 이동(관리자 전용)
	@GetMapping("/new")
	public String register() throws Exception{
		return "product/new";
	}
	
	//상품 등록 페이지 : 상품 등록(관리자 전용)
	@PostMapping("/new")
	public String register(ProductVO vo, ProductDetailVO dvo, RedirectAttributes rttr) throws Exception {
		String result = ps.regist(vo, dvo);
		rttr.addFlashAttribute("result", result);
		return "redirect:/product/new";
	}
	
	//예약하기 페이지 이동
	@GetMapping("reserve")
	public String reserve(Model model, int product_num) throws Exception{
		ProductVO vo = ps.read(product_num);
		model.addAttribute("board", vo);
		return "product/reserve";
	}
	
	//예약완료 후 페이지 이동
	@PostMapping("reserve")
	public String reservation(ProductVO vo, RedirectAttributes rttr) throws Exception{
		String result = ps.reserve(vo);
		rttr.addFlashAttribute("result", result);
		return "redirect:/member/product";
	}
	
}