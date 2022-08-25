package net.koreate.greatescape.product.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import net.koreate.greatescape.product.dao.ProductDAO;
import net.koreate.greatescape.product.vo.ProductDetailVO;
import net.koreate.greatescape.product.vo.ProductVO;

@Service
@RequiredArgsConstructor
public class ProductServiceImpl implements ProductService {
	
	private final ProductDAO pdao;
	
	@Override
	public List<ProductVO> getProductList(ProductVO vo) throws Exception {
		System.err.println(vo);
		return pdao.getProductList(vo);
	}
	
	@Override
	public List<ProductVO> getAsiaList() throws Exception {
		return pdao.getAsiaList();
	}

	@Override
	public List<ProductVO> getEuropeList() throws Exception {
		return pdao.getEuropeList();
	}

	@Override
	public List<ProductVO> getAmericaList() throws Exception {
		return pdao.getAmericaList();
	}

	@Override
	public List<ProductVO> getOceaniaList() throws Exception {
		return pdao.getOceaniaList();
	}

	@Override
	public ProductVO read(int product_num) throws Exception {
		return pdao.read(product_num);
	}

	@Override
	@Transactional
	public String regist(ProductVO vo, ProductDetailVO dvo) throws Exception {
		int result = pdao.create(vo);
		result = pdao.createDetail(dvo);
		String message = (result != 0) ? "SUCCESS" : "FAILED";
		return message;
	}

	@Override
	public String reserve(ProductVO vo) throws Exception {
		return null;
	}

	
}