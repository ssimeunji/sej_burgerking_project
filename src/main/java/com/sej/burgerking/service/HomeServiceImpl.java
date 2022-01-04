package com.sej.burgerking.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sej.burgerking.dto.NoticeDTO;
import com.sej.burgerking.dto.PageDTO;
import com.sej.burgerking.repository.HomeRepository;

@Service
public class HomeServiceImpl implements HomeService {
	
	@Autowired
	private HomeRepository hr;

	// cscenter - notice - search
	@Override
	public List<NoticeDTO> search(String keyword) {
		Map<String, String> searchParam = new HashMap<String, String>();
		searchParam.put("word", keyword);
		List<NoticeDTO> noticeList = hr.search(searchParam);
		return noticeList;
	}

	// paging
	private static final int PAGE_LIMIT = 7; // 한페이지에 보여질 글 개수 
	private static final int BLOCK_LIMIT = 10; // 한화면에 보여질 페이지 개수
	
	@Override
	public List<NoticeDTO> pagingList(int page) {
		int pagingStart = (page-1) * PAGE_LIMIT;
		Map<String, Integer> pagingParam = new HashMap<String, Integer>();
		pagingParam.put("start", pagingStart);
		pagingParam.put("limit", PAGE_LIMIT);
		List<NoticeDTO> pagingList = hr.pagingList1(pagingParam);
		for(NoticeDTO n: pagingList) {
			System.out.println(n.toString());
		}
		return pagingList;
	}
	@Override
	public PageDTO paging(int page) {
		int noticeCount = hr.noticeCount();
		int maxPage = (int)(Math.ceil((double)noticeCount / PAGE_LIMIT));
		int startPage = (((int)(Math.ceil((double)page / BLOCK_LIMIT))) -1) * BLOCK_LIMIT +1;
		int endPage = startPage + BLOCK_LIMIT -1;
		if(endPage > maxPage)
			endPage = maxPage;
		PageDTO paging = new PageDTO();
		paging.setPage(page);
		paging.setStartPage(startPage);
		paging.setEndPage(endPage);
		paging.setMaxPage(maxPage);
		
		return paging;
	}

}
