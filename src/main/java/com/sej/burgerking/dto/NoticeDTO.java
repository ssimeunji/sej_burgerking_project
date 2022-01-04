package com.sej.burgerking.dto;

import java.sql.Timestamp;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class NoticeDTO {
	private long n_number;
	private String n_title;
	private String n_contents;
	private Timestamp n_date;
	private int n_hits;
	
	private MultipartFile n_file;
	private String n_filename;
}
