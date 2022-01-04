package com.sej.burgerking.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class ProductDTO {
	private long p_number;
	private String p_name;
	private String p_contents;
	private String p_price;
	
	private MultipartFile p_file;
	private String p_filename;
}
