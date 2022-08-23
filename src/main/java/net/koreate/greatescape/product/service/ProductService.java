package net.koreate.greatescape.product.service;

import net.koreate.greatescape.product.vo.ProductVO;

public interface ProductService {
	
	//상품 등록
	String registerProduct(ProductVO vo) throws Exception;
	
	//상품 상세보기
	ProductVO detail(int product_num) throws Exception;
	
}