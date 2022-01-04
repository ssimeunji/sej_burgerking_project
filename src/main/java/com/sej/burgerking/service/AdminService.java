package com.sej.burgerking.service;

import java.io.IOException;

import com.sej.burgerking.dto.NoticeDTO;
import com.sej.burgerking.dto.ProductDTO;

public interface AdminService {

	// menu - save 처리
	public void productSave(ProductDTO product) throws IllegalStateException, IOException;

	// cscenter - notice - save 처리
	public void noticeSave(NoticeDTO notice) throws IllegalStateException, IOException;

}
