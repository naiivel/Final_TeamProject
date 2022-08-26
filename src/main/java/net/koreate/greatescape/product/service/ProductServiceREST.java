package net.koreate.greatescape.product.service;

import java.util.List;

import net.koreate.greatescape.product.vo.FullProductDTO;
import net.koreate.greatescape.product.vo.ProductDetailVO;
import net.koreate.greatescape.product.vo.ProductVO;
import net.koreate.greatescape.reservation.vo.ReservationVO;

public interface ProductServiceREST {

	List<ProductVO> getAllList();

	List<ProductVO> getListByContinent(String continent);

	List<ProductVO> getListByCity(String city);

	FullProductDTO getFullProductById(String id);

	ProductVO getProductById(String id);

	List<ProductVO> getListBySearch(String country, String departure, String plan, String seat, String city, String money);
	
	ProductVO read(int product_num) throws Exception;
	
	String regist(ProductVO vo, ProductDetailVO dvo) throws Exception;

	int reserve(int product_num, ReservationVO rvo);

}
