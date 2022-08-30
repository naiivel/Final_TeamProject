package net.koreate.greatescape.product.controller;

import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.RequiredArgsConstructor;
import net.koreate.greatescape.member.vo.MemberVO;
import net.koreate.greatescape.product.service.ProductFileService;
import net.koreate.greatescape.product.service.ProductServiceREST;
import net.koreate.greatescape.product.vo.FullProductDTO;
import net.koreate.greatescape.product.vo.ProductVO;
import net.koreate.greatescape.reservation.vo.ReservationVO;

@Controller
@RequiredArgsConstructor
@RequestMapping("/products")
public class ProductControllerREST {
	
	private final ProductServiceREST ps;
	private final ProductFileService pfs;
	
	@GetMapping({"/", ""})
	public String renderIndex(Model model) {
		List<ProductVO> list = ps.getAllList();
		model.addAttribute("continent", "모든 상품 정보");
		listSplitAndAdd(model, list);
		return "/products/index";
	}
	
	@PostMapping({"/", ""})
	public String createProduct(FullProductDTO dto, String departure, String arrive, MultipartFile titleImage, RedirectAttributes rttr) throws Exception {
		String redirectUrl = "redirect:/products/";
		if (titleImage != null) {
			String uploadedName = pfs.uploadFile(titleImage);
			if (uploadedName == null || uploadedName.equals("")) {
				rttr.addFlashAttribute("flashMessage", "타이틀 이미지 등록 중 오류가 발생하였습니다.");
				return redirectUrl + "new";
			}
			dto.setDetail_title_image(uploadedName);
		}
		int result = ps.createProduct(dto, departure, arrive);
		if (result == 2) {
			rttr.addFlashAttribute("flashMessage", "성공적으로 상품 등록이 완료되었습니다.");
		} else {
			rttr.addFlashAttribute("flashMessage", "상품 등록 중 오류가 발생하였습니다.");
		}
		int id = dto.getProduct_num();
		if (id != 0) return redirectUrl + id;
		return redirectUrl + "new";
	}
	
	@GetMapping("/new")
	public String renderNewForm() {
		return "products/new";
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
	
	@GetMapping("/{id}")
	public String renderDetail(@PathVariable String id, HttpServletRequest req, HttpServletResponse res, Model model) {
		ps.updateViewcnt(req, res, id);
		FullProductDTO product = ps.getFullProductById(id);
		if (product == null) return "/products/index";
		model.addAttribute("product", product);
		return "/products/detail";
	}
	
	@PostMapping("/{id}")
	public String reservation(HttpSession session, @PathVariable int id, ReservationVO rvo, RedirectAttributes rttr) {
		MemberVO loginMember = (MemberVO) session.getAttribute("userInfo");
		if (loginMember != null && !loginMember.getMember_id().equals(rvo.getMember_id())) {
			rttr.addFlashAttribute("flashMessage", "비정상적인 접근입니다.");
			return "redirect:/";
		}
		rvo.setProduct_num(id);
		int result = ps.reserve(rvo);
		if (result > 0) {
			rttr.addFlashAttribute("flashMessage", "예약이 완료되었습니다.");
			if (loginMember != null) {
				return "redirect:/member/reservDetail";
			} else {
				return "redirect:/nomember/show";
			}
		} else {
			rttr.addFlashAttribute("flashMessage", "예약 중 오류가 발생하였습니다.");
			return "redirect:/products/reserve";
		}
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
	
	@GetMapping("/{id}/reservation")
	public String renderReservationForm(@PathVariable String id, Model model, HttpSession session, RedirectAttributes rttr) {
		MemberVO loginMember = (MemberVO) session.getAttribute("userInfo");
		if (loginMember != null) {
			if (ps.getReservationOfMember(loginMember.getMember_id()) != null) {
				rttr.addFlashAttribute("flashMessage", "이미 예약하신 상품입니다.");
				return "redirect:/products/" + id;
			}
		}
		model.addAttribute("product", ps.getProductById(id));
		return "/products/reserve";
	}
	
	@GetMapping("/{id}/update")
	public String renderUpdateForm(@PathVariable String id, Model model) {
		model.addAttribute("product", ps.getFullProductById(id));
		return "/products/update";
	}
	
	@PostMapping("/{id}/update")
	public String updateProduct(@PathVariable int id, String originalTitleImage, MultipartFile titleImage, FullProductDTO dto, String departure, String arrive, RedirectAttributes rttr) throws Exception {
		String redirectUrl = "redirect:/products/" + id; 
		if (titleImage != null) {
			String uploadedName = pfs.updateFile(originalTitleImage, titleImage);
			if (uploadedName == null || uploadedName.equals("")) {
				rttr.addFlashAttribute("flashMessage", "타이틀 이미지 수정 중 오류가 발생하였습니다.");
				return redirectUrl;
			}
			dto.setDetail_title_image(uploadedName);
		}
		int result = ps.updateProduct(id, dto, departure, arrive);
		if (result == 0) {
			redirectUrl += "/update";
			rttr.addFlashAttribute("flashMessage", "수정 중 오류가 발생하였습니다.");
		} else {
			rttr.addFlashAttribute("flashMessage", "정상적으로 수정이 완료되었습니다.");
		}
		return redirectUrl;
	}
	

	@ExceptionHandler
	public String exceptionHandler(Exception e, RedirectAttributes rttr) {
		e.printStackTrace();
		rttr.addFlashAttribute("flashMessage", "예상치 못한 오류가 발생하였습니다! 관리자에게 문의하여 주세요!");
		return "redirect:/";
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
