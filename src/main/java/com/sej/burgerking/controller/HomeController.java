package com.sej.burgerking.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sej.burgerking.dto.NoticeDTO;
import com.sej.burgerking.dto.PageDTO;
import com.sej.burgerking.service.HomeService;

@Controller
@RequestMapping(value = "/home/*")
public class HomeController {
	
	@Autowired
	private HomeService hs;

	// 메뉴 소개 화면 요청
	@RequestMapping(value="menuList", method=RequestMethod.GET)
	public String menuList() {
		return "home/menuList";
	}

	// 매장 검색 화면 요청
	@RequestMapping(value="storeForm", method=RequestMethod.GET)
	public String storeForm() {
		return "home/store";
	}
	
	// 이벤트 화면 요청
	@RequestMapping(value="eventForm", method=RequestMethod.GET)
	public String eventForm() {
		return "home/event";
	}
	
	// 브랜드 스토리 화면 요청
	@RequestMapping(value="story", method=RequestMethod.GET)
	public String story() {
		return "home/story";
	}
	
	// 고객센터 화면 요청
	@RequestMapping(value="cscenterForm", method=RequestMethod.GET)
	public String cscenterForm() {
		return "home/cscenter";
	}
	
	// cscenter - notice - search
	@RequestMapping(value="cscenter/notice/search" , method=RequestMethod.GET)
	public String cscenterNoticeSearch(@RequestParam("keyword") String keyword, Model model) {
		List<NoticeDTO> noticeList = hs.search(keyword);
		model.addAttribute("noticeList", noticeList);
		return "home/cscenter/notice/paging";
	}
	
	// paging
	@RequestMapping(value = "cscenter/notice/paging", method = RequestMethod.GET)
	public String paging(@RequestParam(value = "page", required = false, defaultValue = "1") int page, Model model) {
		List<NoticeDTO> noticeList = hs.pagingList(page);
		PageDTO paging = hs.paging(page);
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("paging", paging);
		return "home/cscenterForm";
	}
}
