package net.koreate.greatescape.reservation.service;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import net.koreate.greatescape.product.vo.ProductVO;
import net.koreate.greatescape.reservation.dao.ReservationDAO;

@Service
@RequiredArgsConstructor
public class ReservationServiceImpl implements ReservationService {

	private final ReservationDAO rdao;

	@Override
	public ProductVO read(int product_num) {
		return null;
	}
	
}