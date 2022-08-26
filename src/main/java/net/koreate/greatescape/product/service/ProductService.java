package net.koreate.greatescape.product.service;

import java.util.List;

import net.koreate.greatescape.product.vo.ProductDetailVO;
import net.koreate.greatescape.product.vo.ProductVO;

public interface ProductService {
	
	//아시아 상품 리스트 가져오기
	List<ProductVO> getAsiaList() throws Exception;
	
	//유럽 상품 리스트 가져오기
	List<ProductVO> getEuropeList() throws Exception;
	
	//아메리카 상품 리스트 가져오기
	List<ProductVO> getAmericaList() throws Exception;
	
	//오세아니아 상품 리스트 가져오기
	List<ProductVO> getOceaniaList() throws Exception;
	
	//나라탭 선택 시 상품 리스트 가져오기
	List<ProductVO> getProductList(ProductVO vo) throws Exception;
	
	//상세보기 상품 리스트 가져오기
	ProductVO read(int product_num) throws Exception;
	
	//상품 등록
	String regist(ProductVO vo, ProductDetailVO dvo) throws Exception;
	
	//예약 하기
	String reserve(int product_num) throws Exception;
	
}