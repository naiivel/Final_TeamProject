package net.koreate.greatescape.product.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
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
	@Transactional
	public int createProduct(FullProductDTO dto, String departure, String arrive) throws ParseException {
		setDate(dto, departure, arrive);
		int result = 0;
		result += dao.createProduct(dto);
		if (result == 1) dto.setProduct_num(dao.getLastInsertId());
		result += dao.createDetail(dto);
		return result;
	}

	@Override
	@Transactional
	public int reserve(int product_num, ReservationVO rvo) {
		Map<String, Object> map = new HashMap<>();
		map.put("num", product_num);
		map.put("rvo", rvo);
		int result = 0;
		result += dao.reserve(map);
		result += dao.seatMinus(map);
		return result;
	}

	@Override
	public int updateProduct(String id, FullProductDTO dto, String departure, String arrive) throws ParseException {
		dto.setProduct_num(Integer.parseInt(id));
		setDate(dto, departure, arrive);
		return dao.updateProduct(dto);
	}
	
	private void setDate(FullProductDTO dto, String departure, String arrive) throws ParseException {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		dto.setProduct_departure(formatter.parse(departure));
		dto.setProduct_arrive(formatter.parse(arrive));
	}

}
