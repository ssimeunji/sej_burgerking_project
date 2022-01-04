package com.sej.burgerking.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sej.burgerking.dto.MemberDTO;
import com.sej.burgerking.repository.MemberRepository;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberRepository mr;
	
	@Autowired
	private HttpSession session;

	// 회원가입 처리
	@Override
	public int signup(MemberDTO member) {
		return mr.signup(member);
	}

	// 아이디 중복 체크
	@Override
	public String idDuplicate(String m_id) {
		if(mr.idDuplicate(m_id) == null) {
			return "ok";
		} else {			
			return "no";
		}
	}

	// 로그인
	@Override
	public String login(MemberDTO member) {
		MemberDTO loginMember = mr.login(member);
		if(loginMember != null) {
			session.setAttribute("loginId", member.getM_id());
			session.setAttribute("loginNumber", loginMember.getM_number());
			return "/delivery/menu";
		}
		else {
			
			return "/member/login";
		}
	}

	// 회원 정보 화면 요청(My 킹)
	@Override
	public MemberDTO userInfo(long m_number) {
		return mr.userInfo(m_number);
	}

	// 회원 정보 변경 화면 요청
	@Override
	public MemberDTO userInfoUpdateForm(long m_number) {
		return mr.userInfoUpdateForm(m_number);
	}

	// 회원 정보 변경 처리
	@Override
	public void userInfoUpdate(MemberDTO member) {
		mr.userInfoUpdate(member);
	}

	// 회원 탈퇴 화면 요청
	@Override
	public MemberDTO userDeleteForm(long m_number) {
		return mr.userDeleteForm(m_number);
	}

	// 회원 탈퇴 처리
	@Override
	public void userDelete(long m_number) {
		mr.userDelete(m_number);
	}
}
