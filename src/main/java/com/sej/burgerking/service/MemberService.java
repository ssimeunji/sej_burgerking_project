package com.sej.burgerking.service;

import com.sej.burgerking.dto.MemberDTO;

public interface MemberService {

	// 회원가입 처리
	public int signup(MemberDTO member);

	// 아이디 중복 체크
	public String idDuplicate(String m_id);

	// 로그인
	public String login(MemberDTO member);

	// 회원 정보 화면 요청(My 킹)
	public MemberDTO userInfo(long m_number);
	
	// 회원 정보 변경 화면 요청
	public MemberDTO userInfoUpdateForm(long m_number);

	// 회원 정보 변경 처리
	public void userInfoUpdate(MemberDTO member);

	// 회원 탈퇴 화면 요청
	public MemberDTO userDeleteForm(long m_number);

	// 회원 탈퇴 처리
	public void userDelete(long m_number);

}
