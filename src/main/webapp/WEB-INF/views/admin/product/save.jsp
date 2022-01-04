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
<title>Admin</title>
</head>
<body>
	<div class="box">
		<div class="header">
			<div class="content_w">
				<div class="header_top">
					<input class="header_top_btn fs_14" type="button" value="브랜드홈" onclick="location.href='/'" />
					<div class="header_top_line"></div>
					<input class="header_top_btn fs_14" type="button" value="로그아웃" onclick="location.href='/member/loginForm'" />
					<div class="header_top_line"></div>
					<input class="header_top_btn fs_14" type="button" value="고객센터" />
				</div>
				<div class="header_bottom dis_flex">
					<div class="header_bottom_l">
						<img class="header_bottom_img" src="/resources/img/header_icon_img.png" />
						<p class="header_bottom_txt fs_40">Admin</p>
					</div>
					
				</div>
			</div>
		</div>
		<div class="contents_box">
			<%-- location --%>
			<div class="location_box">
				<div class="content_w">
					<p class="location_txt fs_14">Admin &gt; 메뉴추가</p>
				</div>
			</div>
			<%-- location --%>
			
			<%-- admin menu product save --%>
			<form class="admin_menu_product_box" action="/admin/product/save" method="POST" enctype="multipart/form-data">
				<div class="admin_content_w">
					<p class="admin_title">메뉴추가</p>
					<input class="admin_input_txt" type="text" name="p_name" placeholder="이름" />
					<input class="admin_input_txt" type="text" name="p_contents" placeholder="구성" />
					<input class="admin_input_txt" type="text" name="p_price" placeholder="가격" />
					<input class="admin_input_file" type="file" name="p_file" />
					<input class="admin_btn" type="submit" value="등록" /> 
				</div>
			</form>
			<%-- admin menu product save --%>
			
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