package net.koreate.greatescape.reservation.controller;

import org.springframework.stereotype.Controller;

import lombok.RequiredArgsConstructor;
import net.koreate.greatescape.reservation.service.ReservationService;

@Controller
@RequiredArgsConstructor
public class ReservationController {

	private final ReservationService rs;
}
