package net.koreate.greatescape.product.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;

import net.koreate.greatescape.product.provider.ProductProvider;
import net.koreate.greatescape.product.vo.FullProductDTO;
import net.koreate.greatescape.product.vo.ProductDetailVO;
import net.koreate.greatescape.product.vo.ProductVO;

public interface ProductDAO {
	
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

	@Select("SELECT * FROM tbl_product WHERE product_num = #{product_num}")
	ProductVO read(int product_num);
	
	@Insert("INSERT INTO tbl_product(product_continent,product_country,product_city,product_name,product_airplane,product_departure,product_arrive,product_plan,product_adult,product_minor,product_seat) VALUES(#{product_continent},#{product_country},#{product_city},#{product_name},#{product_airplane},#{product_departure},#{product_arrive}, (Date(#{product_arrive}) - Date(#{product_departure})), #{product_adult},#{product_minor},#{product_seat})")
	int create(ProductVO vo) throws Exception;
	
	@Insert("INSERT INTO tbl_detail VALUES (NULL, LAST_INSERT_ID(), #{detail_info}, #{detail_schedule}, #{detail_title_image})")
	int createDetail(ProductDetailVO vo) throws Exception;
	
	//예약 등록
	@Insert("INSERT INTO tbl_reservation VALUES (NULL, #{rvo.rev_name}, #{rvo.rev_birth}, #{rvo.rev_phone}, #{rvo.rev_email}, #{num}, #{rvo.rev_adult}, #{rvo.rev_minor})")
	int reserve(Map<String, Object> map);
	
	// 좌석 수 줄이기
	@Update("UPDATE tbl_product SET product_seat = product_seat - ( #{rvo.rev_adult} + #{rvo.rev_minor} )")
	int seatMinus(Map<String, Object> map);
}
