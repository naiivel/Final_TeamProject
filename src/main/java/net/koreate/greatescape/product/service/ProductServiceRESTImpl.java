package net.koreate.greatescape.product.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import net.koreate.greatescape.product.dao.ProductDAO;
import net.koreate.greatescape.product.vo.FullProductDTO;
import net.koreate.greatescape.product.vo.ProductDetailVO;
import net.koreate.greatescape.product.vo.ProductVO;
import net.koreate.greatescape.reservation.vo.ReservationVO;

@Service
@RequiredArgsConstructor
public class ProductServiceRESTImpl implements ProductServiceREST {
	
	private final ProductDAO dao;

	@Override
	public List<ProductVO> getAllList() {
		return dao.getAllList();
	}

	@Override
	public List<ProductVO> getListByContinent(String continent) {
		return dao.getListByContinent(continent);
	}

	@Override
	public List<ProductVO> getListByCity(String city) {
		return dao.getListByCity(city);
	}

	@Override
	public FullProductDTO getFullProductById(String id) {
		return dao.getFullProductById(id);
	}

	@Override
	public ProductVO getProductById(String id) {
		return dao.getProductById(id);
	}

	@Override
	public List<ProductVO> getListBySearch(String country, String departure, String plan, String seat, String city, String money) {
		Map<String, String> map = new HashMap<>();
		map.put("country", country);
		map.put("departure", departure);
		map.put("plan", plan);
		map.put("seat", seat);
		map.put("city", city);
		map.put("money", money);
		return dao.getListBySearch(map);
	}
	
	@Override
	public ProductVO read(int product_num) throws Exception {
		return dao.read(product_num);
	}

	@Override
	@Transactional
	public String regist(ProductVO vo, ProductDetailVO dvo) throws Exception {
		int result = dao.create(vo);
		result = dao.createDetail(dvo);
		String message = (result != 0) ? "SUCCESS" : "FAILED";
		return message;
	}

	@Override
	@Transactional
	public int reserve(int product_num, ReservationVO rvo) {
		Map<String, Object> map = new HashMap<>();
		map.put("num", product_num);
		map.put("rvo", rvo);
		int result = 0;
		// 예약 테이블에 예약정보 추가 (이메일로 연결)
		result = dao.reserve(map);
		// 상품 테이블에서 좌석 수 줄이기
		result = dao.seatMinus(map);
		return result;
	}

}
