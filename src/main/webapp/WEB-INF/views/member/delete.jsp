<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%-- css --%>
<link href="/resources/css/common.css" rel="stylesheet" type="text/css">
<link href="/resources/css/member/delete.css" rel="stylesheet" type="text/css">

<%-- js --%>
<script src="/resources/js/member/delete.js" type="text/javascript"></script>
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
			
			<%-- user delete form --%>
			<div class="user_delete_box">
			 	<div class="content_w">
					<p class="user_delete_box_title fs_40">회원탈퇴</p>
					<%-- user delete content 1 --%>
					<div class="user_delete_content_box">
						<div class="user_delete_content_title_box">
							<img class="user_delete_content_title_img" src="/resources/img/delete_check.png" />
							<p class="user_delete_content_title_txt dis_inblock fs_20">회원 탈퇴시 유의사항</p>
						</div>
						<div class="user_delete_content_1_top">
							<p class="fs_22">아래 유의사항을 반드시 확인하세요.</p>
						</div>
						<div class="user_delete_content_1_bottom">
							<ul>
								<li>
									탈퇴 시 고객님의 정보는 전자상거래 상에서의 소비자 보호 법률에 의거한 버거킹의 개인정보보호정책에 따라 관리됩니다.
								</li>
								<li>
									탈퇴 시 보유한 쿠폰 정보는 모두 초기화 되며, 재가입 시 복구가 불가합니다.
								</li>
								<li>
									탈퇴 후 어떠한 방법으로도 기존의 개인정보를 복원할 수 없습니다.(단 결제 내역은 5년까지 보관)
								</li>
								<li>
									삭제되는 기록은 다음과 같습니다.
									<p class="fs_15" style="margin-top: 4px;">
										- 아이디(이메일), 휴대폰 번호, MY 배달지, 멤버십, 마이 세트, 쿠폰, 주문 이력
									</p>
								</li>
							</ul>
						</div>
					</div>
					<%-- user delete content 1 --%>
					
					<%-- user delete content 2 --%>
					<div class="user_delete_content_box">
						<div class="user_delete_content_title_box">
							<img class="user_delete_content_title_img" src="/resources/img/delete_check.png" />
							<p class="user_delete_content_title_txt dis_inblock fs_20">탈퇴 사유</p>
						</div>
						<div class="user_delete_content_2_box">
							<select class="user_delete_content_2 fs_20" name="withdrawal">
								<option value="" selected>탈퇴 사유를 선택해주세요.</option>
								<option value="개인정보보호">개인정보보호</option>
								<option value="아이디변경">아이디변경</option>
								<option value="사이트이용불만">사이트이용불만</option>
							</select>
						</div>
					</div>
					<%-- user delete content 2 --%>
					
					<%-- user delete content 3 --%>
					<div class="user_delete_content_box">
						<div class="user_delete_content_title_box">
							<img class="user_delete_content_title_img" src="/resources/img/delete_check.png" />
							<p class="user_delete_content_title_txt dis_inblock fs_20">계정확인</p>
						</div>
						<div class="user_delete_content_2_box">
							<div class="user_info_update_content">
								<p class="user_info_update_title dis_inblock fs_25">전화번호</p>
								<input class="user_info_update_txt dis_inblock fs_25" type="text" value="${member.m_phone}" readonly/>
							</div>
						</div>
					</div>
					<%-- user delete content 3 --%>
					
					<div class="user_delete_check_box">
						<input class="user_delete_check" type="checkbox" id="user-delete-check" onclick="userDeleteCheck()" />
						<p class="user_delete_check_txt fs_20 dis_inblock">위 내용을 확인하였으며, 버거킹 탈퇴를 합니다.</p>
					</div>
					
					<div class="user_delete_bottom_btn_box">
						<input class="user_delete_bottom_btn user_delete_cancel_btn fs_30" type="button" value="취소" onclick="location.href='/member/userInfo?m_number=${sessionScope.loginNumber}'" />
						<input class="user_delete_bottom_btn user_delete_btn fs_30" type="button" value="회원 탈퇴" id="user-delete-btn" onclick="location.href='/member/userDelete?m_number=${member.m_number}'" disabled="disabled"/>
					</div>
			 	</div>
			</div>
			<%-- user delete form --%>
			
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