package com.sej.burgerking.service;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.sej.burgerking.dto.NoticeDTO;
import com.sej.burgerking.dto.ProductDTO;
import com.sej.burgerking.repository.AdminRepository;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminRepository ar;

	// menu - save 처리
	@Override
	public void productSave(ProductDTO product) throws IllegalStateException, IOException {
		MultipartFile p_file = product.getP_file();
		String p_filename = p_file.getOriginalFilename();
		p_filename = System.currentTimeMillis() + "-" + p_filename;
		String savePath = "C:\\Users\\WRAPCORE\\Desktop\\icia\\development_sej\\source\\sej_burgerking_project_211215\\sej_burgerking_project\\src\\main\\webapp\\resources\\img\\admin\\product\\"+p_filename;
		if(!p_file.isEmpty()) {
			p_file.transferTo(new File(savePath));
		} else {
			p_filename ="";
		}
		product.setP_filename(p_filename);
		ar.productSave(product);
	}

	// cscenter - notice - save 처리
	@Override
	public void noticeSave(NoticeDTO notice) throws IllegalStateException, IOException {
		MultipartFile n_file = notice.getN_file();
		String n_filename = n_file.getOriginalFilename();
		n_filename = System.currentTimeMillis() + "-" + n_filename;
		String savePath = "C:\\Users\\WRAPCORE\\Desktop\\icia\\development_sej\\source\\sej_burgerking_project_211215\\sej_burgerking_project\\src\\main\\webapp\\resources\\img\\admin\\notice\\"+n_filename;
		if(!n_file.isEmpty()) {
			n_file.transferTo(new File(savePath));
		} else {
			n_filename ="";
		}
		notice.setN_filename(n_filename);
		ar.noticeSave(notice);
		
	}

}
