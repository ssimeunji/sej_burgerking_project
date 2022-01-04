package com.sej.burgerking.repository;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sej.burgerking.dto.NoticeDTO;
import com.sej.burgerking.dto.ProductDTO;

@Repository
public class AdminRepository {

	@Autowired
	private SqlSessionTemplate sql;

	// menu - save 처리
	public void productSave(ProductDTO product) {
		sql.insert("Product.productSave", product);
	}

	// cscenter - notice -save 처리
	public void noticeSave(NoticeDTO notice) {
		sql.insert("Notice.noticeSave", notice);
		
	}
	
}
