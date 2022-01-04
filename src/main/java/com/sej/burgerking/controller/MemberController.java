package com.sej.burgerking.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sej.burgerking.dto.MemberDTO;
import com.sej.burgerking.service.MemberService;

@Controller
@RequestMapping(value = "/member/*")
public class MemberController {

	@Autowired
	private MemberService ms;

	// 로그인 화면 요청
	@RequestMapping(value = "loginForm", method = RequestMethod.GET)
	public String loginForm() {
		return "member/login";
	}

	// 로그인
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(@ModelAttribute MemberDTO member) {
		return ms.login(member);
	}

	// 회원가입 화면 요청
	@RequestMapping(value = "signupForm", method = RequestMethod.GET)
	public String signupForm() {
		return "member/signup";
	}

	// 회원가입 처리
	@RequestMapping(value = "signup", method = RequestMethod.POST)
	public String signup(@ModelAttribute MemberDTO member) {
		int result = ms.signup(member);
		if (result > 0) {
			return "member/login";
		} else {
			return "member/signupForm";
		}
	}

	// 아이디 중복 체크
	@RequestMapping(value = "idDuplicate", method = RequestMethod.POST)
	public @ResponseBody String idDuplicate(@RequestParam("m_id") String m_id) {
		return ms.idDuplicate(m_id);
	}

	// 로그아웃
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "member/login";
	}

	// 회원 정보 화면 요청(My 킹)
	@RequestMapping(value = "userInfo", method = RequestMethod.GET)
	public String userInfo(@RequestParam("m_number") long m_number, Model model) {
		MemberDTO member = ms.userInfo(m_number);
		model.addAttribute("member", member);

		return "member/info";
	}

	// 회원 정보 변경 화면 요청
	@RequestMapping(value = "userInfoUpdateForm", method = RequestMethod.GET)
	public String userInfoUpdateForm(@RequestParam("m_number") long m_number, Model model) {
		MemberDTO member = ms.userInfo(m_number);
		model.addAttribute("member", member);

		return "member/update";
	}

	// 회원 정보 변경 처리
	@RequestMapping(value = "userInfoUpdate", method = RequestMethod.POST)
	public String userInfoUpdate(@ModelAttribute MemberDTO member) {
		ms.userInfoUpdate(member);
		System.out.println(member.toString());
		return "redirect:/member/userInfo?m_number="+member.getM_number();
	}

	// 회원 탈퇴 화면 요청
	@RequestMapping(value = "userDeleteForm", method = RequestMethod.GET)
	public String userDeleteForm(@RequestParam("m_number") long m_number, Model model) {
		MemberDTO member = ms.userInfo(m_number);
		model.addAttribute("member", member);

		return "member/delete";
	}

	 // 회원 탈퇴 처리
	 @RequestMapping(value="userDelete", method=RequestMethod.GET)
	 public String userDelete(@RequestParam("m_number") long m_number) {
		 ms.userDelete(m_number);
		 return "redirect:/member/loginForm";
	 }
	 
}
