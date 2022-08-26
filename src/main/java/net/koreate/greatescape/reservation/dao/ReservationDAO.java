package net.koreate.greatescape.reservation.dao;

import org.apache.ibatis.annotations.Insert;

import net.koreate.greatescape.reservation.vo.ReservationVO;

public interface ReservationDAO {

	//예약 등록
	@Insert()
	int reserve(ReservationVO vo) throws Exception;
	
	@Insert()
	int reserveDetail() throws Exception;
	
}