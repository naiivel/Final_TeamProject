package net.koreate.greatescape.product.controller;

import org.springframework.stereotype.Controller;

import lombok.RequiredArgsConstructor;
import net.koreate.greatescape.product.service.ProductService;

@Controller
@RequiredArgsConstructor
public class ProductController {

	private final ProductService ps;
}
