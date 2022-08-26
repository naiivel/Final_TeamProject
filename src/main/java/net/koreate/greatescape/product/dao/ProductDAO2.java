package net.koreate.greatescape.product.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;

import net.koreate.greatescape.product.provider.ProductProvider;
import net.koreate.greatescape.product.vo.FullProductDTO;
import net.koreate.greatescape.product.vo.ProductVO;

public interface ProductDAO2 {
	
	@Select("SELECT * FROM tbl_product")
	List<ProductVO> getAllList();
	
	@Select("SELECT * FROM tbl_product WHERE product_continent = #{continent}")
	List<ProductVO> getListByContinent(String continent);
	
	@Select("SELECT * FROM tbl_product WHERE product_city = #{city}")
	List<ProductVO> getListByCity(String city);

	@Select("SELECT p.*, d.detail_info, d.detail_schedule, d.detail_title_image FROM tbl_product AS p INNER JOIN tbl_detail AS d ON p.product_num = d.product_num WHERE p.product_num = #{id}")
	FullProductDTO getFullProductById(String id);

	@Select("SELECT * FROM tbl_product WHERE product_num = #{id}")
	ProductVO getProductById(String id);

	@SelectProvider(type = ProductProvider.class, method = "getListBySearch")
	List<ProductVO> getListBySearch(Map<String, String> map);

}
