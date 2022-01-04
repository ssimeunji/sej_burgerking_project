package com.sej.burgerking.repository;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sej.burgerking.dto.MemberDTO;

@Repository
public class MemberRepository {
	
	@Autowired
	private SqlSessionTemplate sql;

	// 회원가입 처리
	public int signup(MemberDTO member) {
		return sql.insert("Member.signup", member);
	}

	// 아이디 중복 체크
	public Object idDuplicate(String m_id) {
		return sql.selectOne("Member.idDuplicate", m_id);
	}

	// 로그인
	public MemberDTO login(MemberDTO member) {
		return sql.selectOne("Member.login", member);
	}

	// 회원 정보 화면 요청(My 킹)
	public MemberDTO userInfo(long m_number) {
		return sql.selectOne("Member.userInfo", m_number);
	}

	// 회원 정보 변경 화면 요청
	public MemberDTO userInfoUpdateForm(long m_number) {
		return sql.selectOne("Member.userInfoUpdateForm", m_number);
	}

	// 회원 정보 변경 처리
	public void userInfoUpdate(MemberDTO member) {
		sql.update("Member.userInfoUpdate", member);
	}

	// 회원 탈퇴 화면 요청
	public MemberDTO userDeleteForm(long m_number) {
		return sql.selectOne("Member.userDeleteForm", m_number);
	}

	// 회원 탈퇴
	public void userDelete(long m_number) {
		sql.delete("Member.userDelete", m_number);
		
	}

}
