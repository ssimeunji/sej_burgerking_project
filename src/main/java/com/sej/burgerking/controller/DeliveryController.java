package com.sej.burgerking.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sej.burgerking.service.DeliveryService;

@Controller
@RequestMapping(value="/delivery/*")
public class DeliveryController {
	
	@Autowired
	private DeliveryService ds;
	
	// menu(딜리버리 메인) 화면 이동
	@RequestMapping(value = "menu", method = RequestMethod.GET)
	public String menu() {
		return "delivery/menu";
	}

	// 배달지 설정 화면 이동
	@RequestMapping(value = "addrForm", method = RequestMethod.GET)
	public String addrForm() {
		return "delivery/address";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
