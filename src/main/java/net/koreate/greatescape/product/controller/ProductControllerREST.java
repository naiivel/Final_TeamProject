package net.koreate.greatescape.product.controller;

import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.RequiredArgsConstructor;
import net.koreate.greatescape.member.vo.MemberVO;
import net.koreate.greatescape.product.service.ProductServiceREST;
import net.koreate.greatescape.product.vo.ProductDetailVO;
import net.koreate.greatescape.product.vo.ProductVO;
import net.koreate.greatescape.reservation.vo.ReservationVO;

@Controller
@RequiredArgsConstructor
@RequestMapping("/products")
public class ProductControllerREST {
	
	private final ProductServiceREST ps;
	
	@GetMapping("")
	public String index(Model model) {
		List<ProductVO> list = ps.getAllList();
		model.addAttribute("continent", "모든 상품 정보");
		listSplitAndAdd(model, list);
		return "/products/index";
	}
	
	@GetMapping("/{id}")
	public String detail(@PathVariable String id, Model model) {
		model.addAttribute("product", ps.getFullProductById(id));
		return "/products/detail";
	}
	
	@GetMapping("/{id}/reservation")
	public String renderReservationForm(@PathVariable String id, Model model) {
		model.addAttribute("product", ps.getProductById(id));
		return "/products/reserve";
	}
	
	@GetMapping("/search")
	public String productSearch(Model model, String country, String departure, String plan, String seat, String city, String money) {
		if (country == "" && departure == "" && plan == "" && seat == "" && city == "" && money == "") {
			return "redirect:/products";
		}
		List<ProductVO> list = ps.getListBySearch(country, departure, plan, seat, city, money);
		listSplitAndAdd(model, list);
		return "/products/index";
	}
	
	@GetMapping("/continent/{continent}")
	public String indexByContinent(@PathVariable String continent, Model model) {
		List<ProductVO> list = ps.getListByContinent(continent);
		model.addAttribute("continent", continent);
		listSplitAndAdd(model, list);
		return "/products/index";
	}
	
	@GetMapping("/city/{city}")
	@ResponseBody
	public List<ProductVO> getListByCity(@PathVariable String city, Model model) {
		List<ProductVO> list = ps.getListByCity(city);
		return list;
	}
	
	// 상품 등록 페이지 이동(관리자 전용)
	@GetMapping("/new")
	public String register() throws Exception {
		return "products/new";
	}

	// 상품 등록 페이지 : 상품 등록(관리자 전용)
	@PostMapping("/new")
	public String register(String product_continent, String product_name, String product_country, String product_city,
			int product_adult, int product_minor, String product_airplane, String product_departure,
			String product_arrive, String product_seat, ProductDetailVO dvo, RedirectAttributes rttr) throws Exception {
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
		return "redirect:/products/" + encodedParam;
	}

	// 예약하기 페이지 이동
	@GetMapping("/reserve")
	public String reserve(int product_num, Model model) throws Exception {
		ProductVO vo = ps.read(product_num);
		model.addAttribute("board", vo);
		return "products/reserve";
	}

	// 예약완료 후 페이지 이동
	@PostMapping("/reserve")
	public String reservation(HttpSession session, int product_num, ReservationVO rvo, RedirectAttributes rttr)
			throws Exception {
		MemberVO vo = (MemberVO) session.getAttribute("userInfo");
		int result = ps.reserve(product_num, rvo);
		if (result > 0) {
			rttr.addFlashAttribute("msg", "예약이 완료되었습니다.");
			if (vo != null) {
				return "redirect:/member/reservDetail";
			} else {
				return "redirect:/nomember/show";
			}
		} else {
			rttr.addFlashAttribute("msg", "예약 중 오류가 발생하였습니다.");
			return "redirect:/products/reserve";
		}
	}
	
	@ExceptionHandler
	public String exceptionHandler(Exception e) {
		e.printStackTrace();
		return "index";
	}
	
	private void listSplitAndAdd(Model model, List<ProductVO> list) {
		Set<String> countrySet = new HashSet<>();
		list.stream().forEach(p -> countrySet.add(p.getProduct_country()));
		
		Map<String, Set<String>> cityMap = new HashMap<>();
		countrySet.stream().forEach(country -> {
			Set<String> citySet = new HashSet<>();
			list.stream().filter(p -> p.getProduct_country().equals(country)).forEach(p -> citySet.add(p.getProduct_city()));
			cityMap.put(country, citySet);
		});
		if (model.getAttribute("continent") ==null) model.addAttribute("continent", "검색 결과");
		model.addAttribute("list", list);
		model.addAttribute("countrySet", countrySet);
		model.addAttribute("cityMap", cityMap);
	}

}
