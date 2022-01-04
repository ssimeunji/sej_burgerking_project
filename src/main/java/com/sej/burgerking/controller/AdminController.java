package com.sej.burgerking.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sej.burgerking.dto.NoticeDTO;
import com.sej.burgerking.dto.ProductDTO;
import com.sej.burgerking.service.AdminService;

@Controller
@RequestMapping(value="/admin/*")
public class AdminController {
	
	@Autowired
	private AdminService as;

	// menu - save 요청
	@RequestMapping(value="product/saveForm", method=RequestMethod.GET)
	public String productSaveForm() {
		return "admin/product/save";
	}
	
	// menu - save 처리
	@RequestMapping(value="product/save", method=RequestMethod.POST)
	public String productSave(@ModelAttribute ProductDTO product) throws IllegalStateException, IOException {
		as.productSave(product);
		
		return "redirect:/delivery/menu";
	}
		
	// menu - update 요청
	@RequestMapping(value="product/updateForm", method=RequestMethod.GET)
	public String productUpdateForm() {
		return "admin/product/update";
	}
	
	// cscenter - notice - save 요청
	@RequestMapping(value="notice/saveForm", method=RequestMethod.GET)
	public String noticeSaveForm() {
		return "admin/notice/save";
	}
	
	// cscenter - notice - save 처리
	@RequestMapping(value="notice/save", method=RequestMethod.POST)
	public String noticeSave(@ModelAttribute NoticeDTO notice) throws IllegalStateException, IOException {
		as.noticeSave(notice);
		
		return "redirect:/home/cscenterForm";
	}
		
	// cscenter - notice - update 요청
	@RequestMapping(value="notice/updateForm", method=RequestMethod.GET)
	public String noticeUpdateForm() {
		return "admin/notice/update";
	}
	
	
}
