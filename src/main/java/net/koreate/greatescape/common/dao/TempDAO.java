package net.koreate.greatescape.common.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;

import net.koreate.greatescape.product.vo.FullProductDTO;
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

	@SelectProvider(type = TempProvider.class, method = "getSearchList")
	List<ProductVO> getSearchList(Map<String, String> map);

	@Select("SELECT p.*, d.detail_info, d.detail_schedule, d.detail_title_image FROM tbl_product AS p, tbl_detail AS d WHERE product_seat > 5 ORDER BY product_seat LIMIT 4")
	List<FullProductDTO> getIndexList();

}
