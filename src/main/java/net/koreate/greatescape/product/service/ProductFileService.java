package net.koreate.greatescape.product.service;

import org.springframework.web.multipart.MultipartFile;

public interface ProductFileService {
	
	String uploadFile(MultipartFile titleImage) throws Exception;
	
	String uploadHtmlImage(MultipartFile file) throws Exception;
	
	public String updateFile(String originalTitleImage, MultipartFile titleImage) throws Exception;

}
