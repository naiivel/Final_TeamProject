package net.koreate.greatescape.common.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import net.koreate.greatescape.product.vo.ProductVO;

public interface TempDAO {

	@Insert("INSERT INTO tbl_product VALUES (NULL, #{product_continent}, #{product_country}, #{product_city}, #{product_name}, #{product_airplane}, #{product_departure}, #{product_arrive}, #{product_plan}, #{product_adult}, #{product_minor}, #{product_seat})")
	int productSeed(ProductVO productVO) throws Exception;
	
	@Delete("DELETE FROM tbl_product")
	int deleteSeed() throws Exception;
	
	@Select("SELECT * FROM tbl_product WHERE product_continent = #{continent}")
	List<ProductVO> getContinentList(String continent) throws Exception;
	
	@Select("SELECT * FROM tbl_product WHERE product_city = #{city}")
	List<ProductVO> getCityList(String city) throws Exception;

}
