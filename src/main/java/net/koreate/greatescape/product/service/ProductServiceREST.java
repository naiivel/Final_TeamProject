package net.koreate.greatescape.product.service;

import java.util.List;

import net.koreate.greatescape.product.vo.FullProductDTO;
import net.koreate.greatescape.product.vo.ProductVO;

public interface ProductServiceREST {

	List<ProductVO> getAllList();

	List<ProductVO> getListByContinent(String continent);

	List<ProductVO> getListByCity(String city);

	FullProductDTO getFullProductById(String id);

	ProductVO getProductById(String id);

	List<ProductVO> getListBySearch(String country, String departure, String plan, String seat, String city, String money);

}
