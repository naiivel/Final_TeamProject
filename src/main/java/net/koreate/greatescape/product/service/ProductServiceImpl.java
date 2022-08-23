package net.koreate.greatescape.product.service;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import net.koreate.greatescape.product.dao.ProductDAO;
import net.koreate.greatescape.product.vo.ProductVO;

@Service
@RequiredArgsConstructor
public class ProductServiceImpl implements ProductService {
	
	private final ProductDAO pdao;

	@Override
	public String registerProduct(ProductVO vo) throws Exception {
		int result = pdao.create(vo);
		String msg = "등록 완료";
		if(result == 0) {
			msg = "등록 실패";
		}
		return msg;
	}

	@Override
	public ProductVO detail(int product_num) throws Exception {
		return pdao.detail(product_num);
	}
	
	
	
}