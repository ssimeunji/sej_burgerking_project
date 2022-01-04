package com.sej.burgerking.dto;

import lombok.Data;

@Data
public class CartDTO {
	private long c_number;
	private int c_amount;
	private long p_number;
	private long m_number;
}
