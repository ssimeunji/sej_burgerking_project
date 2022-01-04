package com.sej.burgerking.repository;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sej.burgerking.dto.NoticeDTO;

@Repository
public class HomeRepository {

	@Autowired
	private SqlSessionTemplate sql;
	
	// cscenter - notice - search
	public List<NoticeDTO> search(Map<String, String> searchParam) {
		return sql.selectList("Notice.search", searchParam);
	}

	// paging
	public List<NoticeDTO> pagingList1(Map<String, Integer> pagingParam) {
		return sql.selectList("Notice.pagingList1", pagingParam);
	}

	public int noticeCount() {
		return sql.selectOne("Notice.count");
	}

}
