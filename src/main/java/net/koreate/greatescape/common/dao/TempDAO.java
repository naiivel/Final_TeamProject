package net.koreate.greatescape.common.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

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
	
	@Select("SELECT p.*, d.detail_info, d.detail_schedule, d.detail_title_image FROM tbl_product AS p INNER JOIN tbl_detail AS d ON p.product_num = d.product_num WHERE product_seat > 5 ORDER BY product_seat LIMIT 4")
	List<FullProductDTO> getIndexList();

}
