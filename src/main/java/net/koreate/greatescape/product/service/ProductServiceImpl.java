package net.koreate.greatescape.product.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import net.koreate.greatescape.product.dao.ProductDAO;
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
	public List<ProductVO> getShowList() throws Exception {
		return pdao.getShowList();
	}
	
	
	
	
}