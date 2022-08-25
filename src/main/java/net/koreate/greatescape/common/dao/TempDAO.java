package net.koreate.greatescape.common.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import net.koreate.greatescape.product.vo.ProductDetailVO;
import net.koreate.greatescape.product.vo.ProductVO;

public interface TempDAO {

	@Insert("INSERT INTO tbl_product VALUES (NULL, #{product_continent}, #{product_country}, #{product_city}, #{product_name}, #{product_airplane}, #{product_departure}, #{product_arrive}, #{product_plan}, #{product_adult}, #{product_minor}, #{product_seat})")
	int productSeed(ProductVO productVO) throws Exception;
	
	@Insert("INSERT INTO tbl_detail VALUES (NULL, LAST_INSERT_ID(), #{detail_info}, #{detail_schedule}, #{detail_title_image})")
	int detailSeed(ProductDetailVO productDetailVO) throws Exception;
	
	@Delete("DELETE FROM tbl_product")
	int deleteSeed() throws Exception;
	
	@Select("SELECT * FROM tbl_product WHERE product_continent = #{continent}")
	List<ProductVO> getContinentList(String continent) throws Exception;
	
	@Select("SELECT * FROM tbl_product WHERE product_city = #{city}")
	List<ProductVO> getCityList(String city) throws Exception;

	@Select("SELECT * FROM tbl_product WHERE product_num = #{id}")
	ProductVO getProductById(int id);

	@Select("SELECT * FROM tbl_detail WHERE product_num = #{id}")
	ProductDetailVO getDetailById(int id);

}
