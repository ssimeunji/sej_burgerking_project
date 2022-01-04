<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%-- css --%>
<link href="/resources/css/common.css" rel="stylesheet" type="text/css">
<link href="/resources/css/member/update.css" rel="stylesheet" type="text/css">

<%-- js --%>
<script src="/resources/js/member/update.js" type="text/javascript"></script>
<title>버거킹</title>
</head>
<body>
	<div class="box">
		<div class="header">
			<div class="content_w">
				<div class="header_top">
					<input class="header_top_btn fs_14" type="button" onclick="location.href='/'" value="브랜드홈" />
					<div class="header_top_line"></div>
					<form class="dis_inline" action="/member/logout" method="get">
						<input class="header_top_btn fs_14" type="submit" value="로그아웃" />
					</form>
					<div class="header_top_line"></div>
					<input class="header_top_btn fs_14" type="button" onclick="location.href='/member/userInfo?m_number=${sessionScope.loginNumber}'" value="MY킹" />
					<div class="header_top_line"></div>
					<input class="header_top_btn fs_14" type="button" onclick="location.href='/home/noticeForm'" value="고객센터" />
				</div>
				<div class="header_bottom dis_flex">
					<div class="header_bottom_l">
						<img class="header_bottom_img" src="/resources/img/header_icon_img.png" />
						<input class="header_bottom_txt fs_40" type="button" onclick="location.href='/delivery/menu'" value="버거킹" />
					</div>
					<div class="header_bottom_r dis_flex">
						<img class="header_user_btn_img" src="/resources/img/user.png" />
						<div style="text-align: left;">
							<p class="header_user_btn_txt fs_18">${sessionScope.loginId} 님 안녕하세요</p>
							<input class="header_user_btn_txt header_user_btn fs_20" type="button"  onclick="location.href='/member/userInfo?m_number=${sessionScope.loginNumber}'" value="MY킹 바로가기 &gt;">
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="contents_box">
			<%-- top --%>
			<div class="info_top_box">
				<div class="content_w dis_flex">
					<div class="info_top">
						<img class="info_top_img" src="/resources/img/store_info1_white.png" />
						<div class="dis_inblock info_top_btn">
							<p class="info_top_title fs_22">딜리버리 주문내역</p>
							<p class="info_top_txt fs_18">주문내역이 없습니다.</p>
						</div>
					</div>
					<div class="info_top_line"></div>
					<div class="info_top">
						<img class="info_top_img" src="/resources/img/cart_white.png" />
						<div class="dis_inblock info_top_btn">
							<p class="info_top_title fs_22">카트</p>
							<p class="info_top_txt fs_18">카트에 담은 상품이 없습니다.</p>
						</div>
					</div>
				</div>
			</div>
			<%-- top --%>
			
			<%-- location --%>
			<div class="location_box">
				<div class="content_w">
					<p class="location_txt dis_inblock fs_15">딜리버리 &gt; MY킹</p>
					<div class="location_info_box dis_inblock">
						<div class="location_info_contents dis_inblock">
							<img class="location_addr_img" src="/resources/img/map_white.png" />
							<p class="location_addr_txt dis_inblock fs_15">배달지</p>
						</div>
						<div class="location_info_contents dis_inblock">
							<img class="location_store_img" src="/resources/img/store_info2_white.png" />
							<p class="location_store_txt dis_inblock fs_15">지점명</p>
						</div>
						<div class="dis_inblock">
							<p class="location_txt fs_15">최소주문금액: 12,000원 / 배달팁: 0원</p>
						</div>
						<input class="location_info_btn fs_18" type="button" onclick="location.href='/delivery/addrForm'" value="변경" />
					</div>
				</div>
			</div>
			<%-- location --%>
			
			<%-- user info update --%>
			<form class="user_info_update_box" action="/member/userInfoUpdate" method="POST" >
				<div class="content_w">
					<p class="content_title fs_40">회원 정보 변경</p>
					<div class="content_top">
						<img class="content_top_img" src="/resources/img/instagram_follow_black.png" />
						<p class="content_top_txt fs_25 dis_inblock">기본정보</p>
					</div>
					<div class="content_box">
					<input type="hidden" name="m_number" value="${member.m_number}"/>
					
					<%-- name --%>
						<div class="user_info_update_content">
							<p class="user_info_update_title dis_inblock fs_25">이름</p>
							<input class="user_info_update_txt dis_inblock fs_25" name="m_name" type="text" value="${member.m_name}" readonly />
						</div>
					<%-- name --%>
						<div class="empty_h_20"></div>
						
					<%-- email --%>
						<div class="user_info_update_content">
							<p class="user_info_update_title dis_inblock fs_25">이메일 *</p>
							<input class="user_info_update_txt dis_inblock fs_25" name="m_email" type="text" value="${member.m_email}" />
						</div>
					<%-- email --%>
						<div class="empty_h_20"></div>
						
					<%-- phone --%>
						<div class="user_info_update_content">
							<p class="user_info_update_title dis_inblock fs_25">전화번호 *</p>
							<input class="user_info_update_txt dis_inblock fs_25" name="m_phone" type="text" onblur="userInfoUpdatePhone()" value="${member.m_phone}" />
							<p class="user_info_update_check empty_h_40 dis_inblock fs_14" id="phone-check"></p>
						</div>
					<%-- phone --%>
					</div>
					
					<div class="content_top">
						<img class="content_top_img" src="/resources/img/check_black.png" />
						<p class="content_top_txt fs_25 dis_inblock">선택정보</p>
					</div>
					<div class="content_box">
					
					<%-- gender --%>
						<div class="user_info_update_content">
							<p class="user_info_update_title dis_inblock fs_25">성별 *</p>
							<div class="signup_gender_box dis_inblock">
								<input class="signup_gender_check" type="radio" name="m_gender" value="m" checked />
								<p class="signup_gender_txt fs_20">남자</p>
		
								<input class="signup_gender_check" type="radio" name="m_gender" value="f" />
								<p class="signup_gender_txt fs_20">여자</p>
							</div>
						</div>
					<%-- gender --%>
						<div class="empty_h_20"></div>
						
					<%-- birth --%>
						<div class="user_info_update_content">
							<p class="user_info_update_title dis_inblock fs_25">생년월일 *</p>
							
							<input class="signup_birth_input fs_18" type="date" name="m_birth" value="${member.m_birth}" />
							
						</div>
					<%-- birth --%>
					</div>

					<!-- <input class="submit_btn" type="submit"/> -->
					<input class="user_info_update_btn fs_30" type="submit" value="변경" />
					
					<input class="user_delete_btn fs_20" type="button" onclick="location.href='/member/userDeleteForm?m_number=${member.m_number}'" value="회원탈퇴 →" />
				</div>
			</form>
			<%-- user info update --%>
			
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