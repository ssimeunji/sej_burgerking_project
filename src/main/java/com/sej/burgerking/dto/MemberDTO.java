package com.sej.burgerking.dto;


import lombok.Data;

@Data
public class MemberDTO {
	private long m_number;
	private String m_id;
	private String m_password;
	private String m_name;
	private String m_gender;
	private String m_phone;
	private String m_address;
	private String m_email;
	private String m_birth;
}
