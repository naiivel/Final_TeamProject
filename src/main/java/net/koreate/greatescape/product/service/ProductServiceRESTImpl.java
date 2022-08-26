package net.koreate.greatescape.product.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import net.koreate.greatescape.product.dao.ProductDAO2;
import net.koreate.greatescape.product.vo.FullProductDTO;
import net.koreate.greatescape.product.vo.ProductVO;

@Service
@RequiredArgsConstructor
public class ProductServiceRESTImpl implements ProductServiceREST {
	
	private final ProductDAO2 dao;

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

}
