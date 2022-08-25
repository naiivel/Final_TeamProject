package net.koreate.greatescape.reservation.vo;

import lombok.Data;

@Data
public class ReservationVO {
	
	private int rev_num;
	private String rev_name;
	private String rev_birth;
	private String rev_phone;
	private String rev_email;

	private int rev_product_num;

	private int product_num;
	private int rev_adult;
	private int rev_minor;
	
}