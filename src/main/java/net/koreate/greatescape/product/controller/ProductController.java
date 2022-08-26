package net.koreate.greatescape.product.controller;

import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.RequiredArgsConstructor;
import net.koreate.greatescape.member.service.MemberService;
import net.koreate.greatescape.product.service.ProductService;
import net.koreate.greatescape.product.vo.ProductDetailVO;
import net.koreate.greatescape.product.vo.ProductVO;
import net.koreate.greatescape.reservation.vo.ReservationVO;

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
	public String register(String product_continent,String product_name, String product_country,String product_city,int product_adult,int product_minor,String product_airplane,String product_departure, String product_arrive, String product_seat, ProductDetailVO dvo ,RedirectAttributes rttr) throws Exception {
		ProductVO vo = new ProductVO();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		vo.setProduct_continent(product_continent);
		vo.setProduct_name(product_name);
		vo.setProduct_country(product_country);
		vo.setProduct_city(product_city);
		vo.setProduct_adult(product_adult);
		vo.setProduct_minor(product_minor);
		vo.setProduct_airplane(product_airplane);
		vo.setProduct_departure(formatter.parse(product_departure));
		vo.setProduct_arrive(formatter.parse(product_arrive));
		vo.setProduct_seat(Integer.parseInt(product_seat));
		
		String result = ps.regist(vo, dvo);
		rttr.addFlashAttribute("result", result);
		String encodedParam = URLEncoder.encode(product_continent, "UTF-8");
		return "redirect:/product/" + encodedParam;
	}
	
	//예약하기 페이지 이동
	@GetMapping("/reserve")
	public String reserve(int product_num,Model model) throws Exception{
		ProductVO vo = ps.read(product_num);
		model.addAttribute("board", vo);
		return "product/reserve";
	}
	
}