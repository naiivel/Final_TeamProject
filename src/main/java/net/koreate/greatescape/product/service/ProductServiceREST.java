package net.koreate.greatescape.product.service;

import java.text.ParseException;
import java.util.List;

import net.koreate.greatescape.product.vo.FullProductDTO;
import net.koreate.greatescape.product.vo.ProductVO;
import net.koreate.greatescape.reservation.vo.ReservationVO;

public interface ProductServiceREST {

	List<ProductVO> getAllList();

	List<ProductVO> getListByContinent(String continent);

	List<ProductVO> getListByCity(String city);

	FullProductDTO getFullProductById(String id);

	ProductVO getProductById(String id);

	List<ProductVO> getListBySearch(String country, String departure, String plan, String seat, String city, String money);
	
	ProductVO read(int product_num);
	
	int createProduct(FullProductDTO dto, String departure, String arrive) throws ParseException;

	int reserve(int product_num, ReservationVO rvo);

}
