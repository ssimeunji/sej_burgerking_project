<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%-- css --%>
<link href="/resources/css/common.css" rel="stylesheet" type="text/css">
<link href="/resources/css/index.css" rel="stylesheet" type="text/css">

<%-- jQuery --%>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<%-- js --%>
<script src="/resources/js/index.js" type="text/javascript"></script>

<script type="text/javascript">
	$(function() {
		$('#main_bn').ulslide({
			statusbar : true,
			<%-- height : 320, --%>
			affect : 'slide',
			axis : 'x',
			navigator : '#main_bn_btn a',
			duration : 400,
			autoslide : 3000
		});
	});
</script>
<title>버거킹</title>
</head>
<body>
	<div class="box">
		<%-- header --%>
		<div class="header">
			<div class="content_w dis_flex">
				<div class="header_icon">
					<img class="header_icon_img"
						src="/resources/img/header_icon_img.png" />
				</div>
				<div class="header_menu_box">
					<div class="header_menu">
						<input class="header_menu_btn" type="button"
						onclick="location.href='/home/menuList'" value="메뉴소개" />
						<input class="header_menu_btn" type="button"
						onclick="location.href='/home/storeForm'" value="매장소개" />
						<input class="header_menu_btn" type="button"
						onclick="location.href='/home/eventForm'" value="이벤트" />
						<input class="header_menu_btn" type="button" value="브랜드스토리" />
					</div>
				</div>
				<div class="header_delivery">
					<input class="header_delivery_btn" type="button" value="딜리버리 주문"
						onclick="location.href='/member/loginForm'" />
					<!-- <input class="header_delivery_btn" type="button" value="딜리버리 주문" onclick="deliveryBtn()" /> -->
				</div>
			</div>
		</div>
		<%-- header --%>

		<div class="contents_box">
			<div class="max_w">
				<%-- slide banner --%>
				<div class="slide_banner_box">
					<div id="wrap">
						<ul id="main_bn">
							<li><img src="/resources/img/slide_banner1.png" alt="" /></li>
							<li><img src="/resources/img/slide_banner2.png" alt="" /></li>
							<li><img src="/resources/img/slide_banner3.png" alt="" /></li>
							<li><img src="/resources/img/slide_banner4.png" alt="" /></li>
							<li><img src="/resources/img/slide_banner5.png" alt="" /></li>
							<li><img src="/resources/img/slide_banner6.png" alt="" /></li>
							<li><img src="/resources/img/slide_banner7.png" alt="" /></li>
							<li><img src="/resources/img/slide_banner8.png" alt="" /></li>
						</ul>
					</div>
				</div>
				<%-- slide banner --%>

				<%-- youtube --%>
				<div class="youtube_box max_w">
					<iframe width="100%" height="100%"
						src="https://www.youtube.com/embed/AeDPdqHbF3w"
						title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
						allowfullscreen></iframe>
				</div>
				<%-- youtube --%>

				<%-- sns --%>
				<div class="sns_box">
					<div class="content_w dis_flex">
						<div class="sns_btn"
							onclick="location.href='https://www.youtube.com/channel/UCEKRI0fipK4LEgV98nI2CQA/featured'">
							<img class="sns_img" src="/resources/img/youtube_white.png" />
							<div style="display: inline-block;">
								<p class="sns_txt fs_20">YOUTUBE</p>
								<div class="sns_info">
									<img class="sns_info_img"
										src="/resources/img/youtube2_black.png" />
									<p class="sns_info_txt">구독 4.9만</p>
								</div>
							</div>
						</div>
						<div class="sns_btn"
							onclick="location.href='https://www.facebook.com/burgerkingkorea'">
							<img class="sns_img" src="/resources/img/facebook_white.png" />
							<div style="display: inline-block;">
								<p class="sns_txt fs_20">FACEBOOK</p>
								<div class="sns_info">
									<img class="sns_info_img"
										src="/resources/img/facebook_like_black.png" />
									<p class="sns_info_txt">좋아요 47.8만</p>
								</div>
							</div>
						</div>
						<div class="sns_btn"
							onclick="location.href='https://www.instagram.com/burgerkingkorea/'">
							<img class="sns_img" src="/resources/img/instagram_white.png" />
							<div style="display: inline-block;">
								<p class="sns_txt fs_20">INSTAGRAM</p>
								<div class="sns_info">
									<img class="sns_info_img"
										src="/resources/img/instagram_follow_black.png" />
									<p class="sns_info_txt">팔로워 74.9K</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<%-- sns --%>

				<%-- store info --%>
				<div class="store_info_box">
					<div class="content_w">
						<div>
							<p class="store_info_title_1 fs_50">매장찾기</p>
							<p class="store_info_title_2 fs_25">고객님 주변에 있는 버거킹을 찾아보세요!</p>
							<input class="store_info_btn fs_20" type="button" value="매장찾기" />
						</div>
						<div class="dis_flex">
							<div class="store_info_content">
								<img class="store_info_content_img"
									src="/resources/img/store_info1.png" />
								<p class="store_info_content_txt_1 fs_18">집에서 편안하게</p>
								<p class="store_info_content_txt_1 fs_18">받을 수 있는</p>
								<p class="store_info_content_txt_2 fs_18">딜리버리</p>
							</div>
							<div class="store_info_content_line"></div>
							<div class="store_info_content">
								<img class="store_info_content_img"
									src="/resources/img/store_info2.png" />
								<p class="store_info_content_txt_1 fs_18">미리 주문하고</p>
								<p class="store_info_content_txt_1 fs_18">픽업 가능한</p>
								<p class="store_info_content_txt_2 fs_18">킹오더</p>
							</div>
							<div class="store_info_content_line"></div>
							<div class="store_info_content">
								<img class="store_info_content_img"
									src="/resources/img/store_info3.png" />
								<p class="store_info_content_txt_1 fs_18">차안에서 빠르게</p>
								<p class="store_info_content_txt_1 fs_18">이용할 수 있는</p>
								<p class="store_info_content_txt_2 fs_18">드라이브 스루</p>
							</div>
							<div class="store_info_content_line"></div>
							<div class="store_info_content">
								<img class="store_info_content_img"
									src="/resources/img/store_info4.png" />
								<p class="store_info_content_txt_1 fs_18">24시간 언제든</p>
								<p class="store_info_content_txt_1 fs_18">함께할 수 있는</p>
								<p class="store_info_content_txt_2 fs_18">24시간</p>
							</div>
							<div class="store_info_content_line"></div>
							<div class="store_info_content">
								<img class="store_info_content_img"
									src="/resources/img/store_info5.png" />
								<p class="store_info_content_txt_1 fs_18">든든한</p>
								<p class="store_info_content_txt_1 fs_18">아침을 도와줄</p>
								<p class="store_info_content_txt_2 fs_18">아침메뉴</p>
							</div>
							<div class="store_info_content_line"></div>
							<div class="store_info_content">
								<img class="store_info_content_img"
									src="/resources/img/store_info6.png" />
								<p class="store_info_content_txt_1 fs_18">내 차와 함께</p>
								<p class="store_info_content_txt_1 fs_18">올 수 있는</p>
								<p class="store_info_content_txt_2 fs_18">주차공간</p>
							</div>
						</div>
					</div>
				</div>
				<%-- store info --%>

				<%-- banner store number--%>
				<div class="banner_store_number_box">
					<div class="content_w dis_flex">
						<div class="banner_store_number_text_1">
							<p class="fs_40" style="margin: 60px 0px 20px 0px;">집에서 만나는
								버거킹</p>
							<p class="fs_20">딜리버리 전화주문 안내 10:00–22:00 / 연중무휴 (매장별로 상이할 수
								있습니다.)</p>
						</div>
						<div class="banner_store_number_text_2">
							<img class="banner_store_number_img"
								src="/resources/img/phone_white.png" />
							<p class="fs_60">1599-0505</p>
						</div>
					</div>
				</div>
				<%-- phone number banner --%>

			</div>

			<div class="bottom">
				<%-- bottom menu --%>
				<div class="bottom_menu_box content_w dis_flex">
					<div class="bottom_menu">
						<p class="bottom_menu_title fs_30">메뉴</p>
						<p class="bottom_menu_txt fs_18">스페셜&amp;할인팩</p>
						<p class="bottom_menu_txt fs_18">프리미엄</p>
						<p class="bottom_menu_txt fs_18">와퍼</p>
						<p class="bottom_menu_txt fs_18">주니어&amp;버거</p>
						<p class="bottom_menu_txt fs_18">올데이킹&amp;치킨버거</p>
						<p class="bottom_menu_txt fs_18">사이드</p>
						<p class="bottom_menu_txt fs_18">음료&amp;디저트</p>
						<p class="bottom_menu_txt fs_18">독퍼</p>
					</div>
					<div class="bottom_menu">
						<p class="bottom_menu_title fs_30">매장</p>
						<p class="bottom_menu_txt fs_18">매장찾기</p>

					</div>
					<div class="bottom_menu">
						<p class="bottom_menu_title fs_30">이벤트</p>
						<p class="bottom_menu_txt fs_18">이벤트</p>
					</div>
					<div class="bottom_menu">
						<p class="bottom_menu_title fs_30">브랜드 스토리</p>
						<p class="bottom_menu_txt fs_18">버거킹 스토리</p>
						<p class="bottom_menu_txt fs_18">WHY 버거킹</p>
						<p class="bottom_menu_txt fs_18">버거킹 News</p>
					</div>
					<div class="bottom_menu">
						<p class="bottom_menu_title fs_30">고객센터</p>
						<p class="bottom_menu_txt fs_18" onclick="location.href='/home/cscenterForm'">공지사항</p>
						<p class="bottom_menu_txt fs_18">버거킹앱이용안내</p>
						<p class="bottom_menu_txt fs_18">FAQ</p>
						<p class="bottom_menu_txt fs_18">문의</p>
						<p class="bottom_menu_txt fs_18">가맹점모집</p>
						<p class="bottom_menu_txt fs_18">인재채용</p>
					</div>
				</div>
				<%-- bottom menu --%>

				<%-- footer --%>
				<div class="footer content_w">
					<div class="footer_1 dis_flex">
						<p class="footer_1_l fs_30">BURGER KING</p>
						<div class="footer_1_r">
							<input class="footer_1_r_btn fs_14" type="button" value="이용약관" />
							<div class="footer_1_r_line"></div>
							<input class="footer_1_r_btn fs_14" type="button"
								value="개인정보취급방침" />
							<div class="footer_1_r_line"></div>
							<input class="footer_1_r_btn fs_14" type="button" value="법적고지" />
						</div>
					</div>
					<div class="footer_2 dis_flex">
						<div class="footer_2_l">
							<p class="footer_2_l_txt fs_14">서울 종로구 삼봉로 71 G 타워 2층 주식회사
								비케이알 | 전화주문 1599-0505</p>
							<p class="footer_2_l_txt fs_14">사업자 등록번호 101-86-76277 |
								(주)BKR 대표이사 문영주</p>
							<p class="footer_2_l_txt fs_14">Copyright 2019 BKR Co.,
								Ltd.All right Reserved</p>
						</div>
						<div class="footer_2_r">
							<input class="footer_2_r_btn fs_18" type="button" value="인재채용" />
							<input class="footer_2_r_btn fs_18" type="button" value="가맹점모집" />
						</div>
					</div>
					<div class="footer_3">
						<img class="footer_3_btn" src="/resources/img/facebook_f5ebdc.png"
							onclick="location.href='https://www.facebook.com/burgerkingkorea'" />
						<img class="footer_3_btn"
							src="/resources/img/instagram_f5ebdc.png"
							onclick="location.href='https://www.instagram.com/burgerkingkorea/'" />
					</div>
				</div>
				<%-- footer --%>
			</div>
		</div>
	</div>
</body>
</html>