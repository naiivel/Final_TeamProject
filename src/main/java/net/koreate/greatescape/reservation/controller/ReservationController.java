package net.koreate.greatescape.reservation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;
import net.koreate.greatescape.reservation.service.ReservationService;

@Controller
@RequiredArgsConstructor
@RequestMapping("reservation")
public class ReservationController {

	private final ReservationService rs;
	
	//예약하기 페이지이동
	@GetMapping("reservation")
	public String reservatin() {
		
		return "reservation/reservation";
	}
	
	//질문과 답변 페이지 이동(문의하기 클릭 시)
	@GetMapping("qna")
	public String qna() {
		
		return "reservation/qna";
	}
	
}