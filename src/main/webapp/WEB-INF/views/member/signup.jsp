<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<%-- css --%>
<link href="/resources/css/common.css" rel="stylesheet" type="text/css">
<link href="/resources/css/member/signup.css" rel="stylesheet" type="text/css">

<%-- js --%>
<script src="/resources/js/member/signup.js" type="text/javascript"></script>

<%-- address --%>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<title>버거킹</title>
</head>
<body>
	<div class="box">
		<div class="header">
			<div class="content_w">
				<div class="header_top">
					<input class="header_top_btn fs_14" type="button" onclick="location.href='/'" value="브랜드홈" />
					<div class="header_top_line"></div>
					<input class="header_top_btn fs_14" type="button" onclick="location.href='/member/loginForm'" value="로그인" />
					<div class="header_top_line"></div>
					<input class="header_top_btn fs_14" type="button" onclick="location.href='/home/noticeForm'" value="고객센터" />
				</div>
				<div class="header_bottom dis_flex">
					<div class="header_bottom_l">
						<img class="header_bottom_img" src="/resources/img/header_icon_img.png" />
						<p class="header_bottom_txt fs_40">버거킹</p>
					</div>
					<div class="header_bottom_r">
						<input class="header_bottom_btn fs_25" type="button" value="회원가입" />
					</div>
				</div>
			</div>
		</div>
		<div class="contents_box">
			<%-- location --%>
			<div class="location_box">
				<div class="content_w">
					<p class="location_txt fs_14">HOME &gt; 로그인 &gt; 회원가입</p>
				</div>
			</div>
			<%-- location --%>
			
			<%-- signup input --%>
			<form class="signup_box" action="/member/signup" method="post" id="FormSignup">
				<div class="content_w">
					<%-- id --%>
					<input class="signup_input fs_20" type="text" name="m_id" id="id" onblur="idDuplicate()" placeholder="아이디 5~20자 영문 소문자, 특수기호(_),(-)만 사용 가능" />
					<p class="empty_h_40 fs_14 signup_add_txt" id="id-dup-check"></p>
					
					<%-- password --%>
					<input class="signup_input fs_20" type="password" name="m_password" id="password" onblur="pwCheck()" placeholder="비밀번호 8~16자 영문 대 소문자, 숫자, 특수문자 혼합 사용" />
					<p class="empty_h_40 fs_14 signup_add_txt" id="password-check"></p>
					<%-- password confirm --%>
					<input class="signup_input fs_20" type="password" id="password-confirm" onblur="pwConCheck()" placeholder="비밀번호 확인" />
					<p class="empty_h_40 fs_14 signup_add_txt" id="password-confirm-check"></p>
					
					<%-- name --%>
					<input class="signup_input fs_20" type="text" name="m_name" id="name" onblur="nmCheck()" placeholder="이름" />
					<p class="empty_h_40 fs_14 signup_add_txt" id="name-check"></p>
					
					<%-- gender --%>
					<div class="signup_gender_box">
						<input class="signup_gender_check" type="radio" name="m_gender" value="m" checked />
						<p class="signup_gender_txt fs_18 ">남자</p>

						<input class="signup_gender_check" type="radio" name="m_gender" value="f" />
						<p class="signup_gender_txt fs_18">여자</p>
					</div>
					<p class="empty_h_40 fs_14 signup_add_txt"></p>
					
					<%-- birth --%>
					<div class="signup_birth_box">
					<%-- <div class="signup_birth_box dis_flex">
						<select class="signup_input_birth birth_year" name="birth1">
					    	<%for(int i=2021; i>=1900; i--){ %>
					    	<option value="<%=i %>"><%=i %></option>
					    	<%} %>
					    </select>
						<p class="signup_birth_txt fs_18">년</p>
					    <select class="signup_input_birth" name="birth2">
					    	<%for(int i=1; i<=12; i++){ %>
					    	<option value="<%=i %>"><%=i %></option>
					    	<%} %>
					    </select>
					    <p class="signup_birth_txt fs_18">월</p>
					    <select class="signup_input_birth" name="birth3">
					    	<%for(int i=1; i<=31; i++){ %>
					    	<option value="<%=i %>"><%=i %></option>
					    	<%} %>
					    </select>
					    <p class="signup_birth_txt fs_18">일</p> --%>
					    <input class="signup_birth_input fs_18" type="date" name="m_birth" />
				    </div>
				    <p class="empty_h_40 fs_14 signup_add_txt"></p>
										
					<%-- phone --%>
					<input class="signup_input fs_20" type="text" name="m_phone" id="phone" onblur="phCheck()" placeholder="전화번호 010-****-****" />
					<p class="empty_h_40 fs_14 signup_add_txt" id="phone-check"></p>
					
					<%-- address --%>
					<div class="signup_address_box">
						<input class="signup_input fs_20 signup_address_input" type="text" id="address-postcode" placeholder="우편번호" disabled="disabled" />
						<input class="signup_address_btn fs_20" type="button" onclick="addressSelect()" value="우편번호 찾기" />
						<div class="empty_h_15"></div>
						<input class="signup_input fs_20" type="text" id="add-address" placeholder="주소" disabled="disabled"/>
						<div class="empty_h_15"></div>
						<input class="signup_input fs_20" type="text" id="add-detailAddress" onblur="addrCheck()" placeholder="상세주소" />
						<div class="empty_h_15"></div>
						<input class="signup_input fs_20" type="text" id="add-extraAddress" placeholder="참고항목" />
					</div>
					<p class="empty_h_40 fs_14 signup_add_txt" id="address-check"></p>
					
					<%-- email --%>
					<input class="signup_input fs_20" type="text" name="m_email" id="email" onblur="emCheck()" placeholder="이메일" />
					<p class="empty_h_40 fs_14 signup_add_txt" id="email-check"></p>
					
					<div class="signup_btn_box">
					<input class="submit_btn" type="submit"/>
						<input class="signup_btn fs_20" type="button" id="signup-btn" onclick="signupBtnClick()" value="가입하기" />
					</div>
				</div>
			</form>
			<%-- signup input --%>
			
			
			
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