<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%-- css --%>
<link href="/resources/css/common.css" rel="stylesheet" type="text/css">
<link href="/resources/css/member/login.css" rel="stylesheet" type="text/css">

<%-- js --%>
<script src="/resources/js/login.js" type="text/javascript"></script>
<title>버거킹</title>
</head>
<body>
	<div class="box">
		<div class="header">
			<div class="content_w">
				<div class="header_top">
					<input class="header_top_btn fs_14" type="button" onclick="location.href='/'" value="브랜드홈" />
					<div class="header_top_line"></div>
					<input class="header_top_btn fs_14" type="button" onclick="location.href='#'" value="로그인" />
					<div class="header_top_line"></div>
					<input class="header_top_btn fs_14" type="button" onclick="location.href='/home/cscenterForm'" value="고객센터" />
				</div>
				<div class="header_bottom dis_flex">
					<div class="header_bottom_l">
						<img class="header_bottom_img" src="/resources/img/header_icon_img.png" />
						<p class="header_bottom_txt fs_40">버거킹</p>
					</div>
					<div class="header_bottom_r">
						<input class="header_bottom_btn fs_25" type="button" value="회원가입" onclick="location.href='/member/signupForm'" />
					</div>
				</div>
			</div>
		</div>
		<div class="contents_box">
			<%-- location --%>
			<div class="location_box">
				<div class="content_w">
					<p class="location_txt fs_14">HOME &gt; 로그인</p>
				</div>
			</div>
			<%-- location --%>
			
			<%-- login box --%>
			<div class="login_box">
				<div class="content_w">
					<p class="login_title_1 fs_40">YOUR WAY</p>
					<p class="login_title_2 fs_40">어서오세요! 버거킹입니다.</p>
					<div class="dis_flex login_choice_box">
						<div class="login_member_box">
							<div class="login_member_top">
								<img class="login_member_top_img" src="/resources/img/login_member.png" />
								<p class="login_member_top_txt fs_20">
									일반 로그인
								</p>
							</div>
							<form class="login_input_box" action="/member/login" method="post" id="FormLogin">
								<input class="login_input_id fs_20" type="text" name="m_id" id="id" placeholder="아이디" />
								<input class="login_input_pw fs_20" type="password" name="m_password" id="password" placeholder="비밀번호" />
								<div class="login_remeber dis_table">
									<input class="login_remeber_check" type="checkbox" />
									<p class="login_remeber_check_txt fs_18 dis_table_cell">아이디 저장</p>
								</div>
								<div class="login_btn_box dis_flex">
								<input class="submit_btn" type="submit"/>
									<input class="login_btn login fs_25" type="button" id="login-btn" onclick="loginBtnClick()" value="로그인" />
									<input class="login_btn signup fs_25" type="button" value="회원가입" onclick="location.href='/member/signupForm'" />
								</div>
								<div class="login_find_box">
									<input class="find_id fs_20" type="button" value="아이디 찾기" />
									<div class="login_find_line"></div>
									<input class="find_pw fs_20" type="button" value="비밀번호 찾기" />
								</div>
							</form>
						</div>
						<div class="login_easy_box">
							<div class="login_easy_top">
								<img class="login_easy_top_img" src="/resources/img/login_easy.png" />
								<p class="login_easy_top_txt fs_20">
									간편 로그인
								</p>
							</div>
							<div class="login_easy_content_box">
								<div class="login_easy_content_btn easy_btn_1 dis_flex">
									<img class="login_easy_content_img" src="/resources/img/easy_login_naver.png" />
									<div class="login_easy_content_line"></div>
									<p class="login_easy_content_txt fs_25">네이버 로그인</p>
								</div>
								<div class="login_easy_content_btn easy_btn_2 dis_flex">
									<img class="login_easy_content_img" src="/resources/img/easy_login_kakao.png" />
									<div class="login_easy_content_line"></div>
									<p class="login_easy_content_txt fs_25">카카오톡 로그인</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<%-- login box --%>
			
			<%-- footer --%>
			<div class="bottom">
				<div class="footer content_w">
					<div class="footer_1 dis_flex">
						<p class="footer_1_l fs_30">BURGER KING</p>
						<div class="footer_1_r">
							<input class="footer_1_r_btn fs_14" type="button" value="이용약관" />
							<div class="footer_1_r_line"></div>
							<input class="footer_1_r_btn fs_14" type="button" value="개인정보취급방침" />
							<div class="footer_1_r_line"></div>
							<input class="footer_1_r_btn fs_14" type="button" value="법적고지" />
						</div>					
					</div>
					<div class="footer_2 dis_flex">
						<div class="footer_2_l">
							<p class="footer_2_l_txt fs_14">
								서울 종로구 삼봉로 71 G 타워 2층 주식회사 비케이알 | 전화주문 1599-0505
							</p>
							<p class="footer_2_l_txt fs_14">
								사업자 등록번호 101-86-76277 | (주)BKR 대표이사 문영주
							</p>
							<p class="footer_2_l_txt fs_14">
								Copyright 2019 BKR Co., Ltd.All right Reserved
							</p>
						</div>
						<div class="footer_2_r">
							<input class="footer_2_r_btn fs_18" type="button" value="인재채용" />
							<input class="footer_2_r_btn fs_18" type="button" value="가맹점모집" />
						</div>
					</div>
					<div class="footer_3">
						<img class="footer_3_btn" src="/resources/img/facebook_f5ebdc.png" onclick="location.href='https://www.facebook.com/burgerkingkorea'" />
						<img class="footer_3_btn" src="/resources/img/instagram_f5ebdc.png" onclick="location.href='https://www.instagram.com/burgerkingkorea/'" />
					</div>
				</div>
			</div>
			<%-- footer --%>
		</div>
	</div>
</body>
</html>