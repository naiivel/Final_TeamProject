package net.koreate.greatescape.common.dao;

import java.util.Map;

import org.apache.ibatis.jdbc.SQL;

public class TempProvider {

	public String getSearchList(Map<String, String> map) {
		SQL sql = new SQL();
		sql.SELECT("*");
		sql.FROM("tbl_product");
		String country = map.get("country");
		if (country != null && !country.equals("")) {
			sql.WHERE("product_country LIKE CONCAT('%', #{country}, '%')");
		}
		String departure = map.get("departure");
		if (departure != null && !departure.equals("")) {
			sql.WHERE("DATE(product_departure) = DATE(#{departure})");
		}
		String plan = map.get("plan");
		if (plan != null && !plan.equals("")) {
			sql.WHERE("product_plan = #{plan}");
		}
		String seat = map.get("seat");
		if (seat != null && !seat.equals("")) {
			sql.WHERE("product_seat >= #{seat}");
		}
		String city = map.get("city");
		if (city != null && !city.equals("")) {
			sql.WHERE("product_city LIKE CONCAT('%', #{city}, '%')");
		}
		String money = map.get("money");
		if (money != null && !money.equals("")) {
			if (seat != null && !seat.equals("")) {
				sql.WHERE("product_adult * #{seat} <= #{money}");
			} else {
				sql.WHERE("product_adult <= #{money}");
			}
		}
		return sql.toString();
	}

}
