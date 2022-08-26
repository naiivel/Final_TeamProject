package net.koreate.greatescape.product.controller;

import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import net.koreate.greatescape.product.service.ProductServiceREST;
import net.koreate.greatescape.product.vo.ProductVO;

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
