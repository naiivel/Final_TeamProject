package net.koreate.greatescape.product.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import net.koreate.greatescape.product.vo.ProductDetailVO;
import net.koreate.greatescape.product.vo.ProductVO;
import net.koreate.greatescape.reservation.vo.ReservationVO;

public interface ProductDAO {

	//아시아 상품 리스트 가져오기
	@Select("SELECT * FROM tbl_product WHERE product_continent = '아시아'")
	List<ProductVO> getAsiaList();
	
	//유럽 상품 리스트 가져오기
	@Select("SELECT * FROM tbl_product WHERE product_continent = '유럽'")
	List<ProductVO> getEuropeList();
	
	//아메리카 상품 리스트 가져오기
	@Select("SELECT * FROM tbl_product WHERE product_continent = '아메리카'")
	List<ProductVO> getAmericaList();
	
	//오세아니아 상품 리스트 가져오기
	@Select("SELECT * FROM tbl_product WHERE product_continent = '오세아니아'")
	List<ProductVO> getOceaniaList();
	
	//나라탭 선택 시 상품 리스트 가져오기
	@Select("SELECT * FROM tbl_product WHERE product_city = #{product_city} AND product_continent = #{product_continent} AND product_country = #{product_country}")
	List<ProductVO> getProductList(ProductVO vo);
	
	//상세보기 이동 시 상품정보 가져오기
	@Select("SELECT * FROM tbl_product WHERE product_num = #{product_num}")
	ProductVO read(int product_num);
	
	//상품 등록
	@Insert("INSERT INTO tbl_product(product_continent,product_country,product_city,product_name,product_airplane,product_departure,product_arrive,product_plan,product_adult,product_minor,product_seat) "
			+ "             VALUES(#{product_continent},#{product_country},#{product_city},#{product_name},#{product_airplane},#{product_departure},#{product_arrive},"
//			+ "#{product_plan},"
			+ "(Date(#{product_arrive}) - Date(#{product_departure})),"
			+ "#{product_adult},#{product_minor},#{product_seat})")
	int create(ProductVO vo) throws Exception;
	
	@Insert("INSERT INTO tbl_detail VALUES (NULL, LAST_INSERT_ID(), #{detail_info}, #{detail_schedule}, #{detail_title_image})")
	int createDetail(ProductDetailVO vo) throws Exception;
	
}