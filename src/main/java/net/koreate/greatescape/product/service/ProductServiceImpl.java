package net.koreate.greatescape.product.service;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import net.koreate.greatescape.product.dao.ProductDAO;

@Service
@RequiredArgsConstructor
public class ProductServiceImpl implements ProductService {
	
	private final ProductDAO pdao;
}
