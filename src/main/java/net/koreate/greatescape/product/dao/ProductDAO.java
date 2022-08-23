package net.koreate.greatescape.product.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import net.koreate.greatescape.product.vo.ProductVO;

public interface ProductDAO {

	//상품 등록
	@Insert("INSERT INTO tbl_product() VALUES()")
	int create(ProductVO vo) throws Exception;
	
	//상품 상세보기
	@Select("SELECT * FROM tbl_product WHERE product_num = #{product_num}")
	ProductVO detail(int product_num) throws Exception;
	
}