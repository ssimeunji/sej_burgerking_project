package com.sej.burgerking.service;

import java.util.List;

import com.sej.burgerking.dto.NoticeDTO;
import com.sej.burgerking.dto.PageDTO;

public interface HomeService {

	// cscenter - notice - search
	List<NoticeDTO> search(String keyword);

	// paging
	List<NoticeDTO> pagingList(int page);
	PageDTO paging(int page);

}
