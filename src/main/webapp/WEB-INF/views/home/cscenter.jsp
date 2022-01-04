<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- JSTL(JSP Standard Tag Library)사용 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%-- css --%>
<link href="/resources/css/common.css" rel="stylesheet" type="text/css">
<link href="/resources/css/home/cscenter.css" rel="stylesheet" type="text/css">

<%-- jQuery --%>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<%-- js --%>
<script src="/resources/js/home/cscenter.js" type="text/javascript"></script>
<%-- forEach --%>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<title>공지사항</title>
</head>
<body>
	<div class="box">
		<%-- header --%>
		<div class="header">
			<div class="content_w dis_flex">
				<div class="header_icon">
					<img class="header_icon_img"
						src="/resources/img/header_icon_img.png" onclick="location.href='/'"/>
				</div>
				<div class="header_menu_box">
					<div class="header_menu">
						<input class="header_menu_btn" type="button"
							onclick="location.href='/home/menuList'" value="메뉴소개" /> <input
							class="header_menu_btn" type="button"
							onclick="location.href='/home/storeForm'" value="매장소개" /> <input
							class="header_menu_btn" type="button"
							onclick="location.href='/home/eventForm'" value="이벤트" /> <input
							class="header_menu_btn" type="button" value="브랜드스토리" />
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
			<%-- location --%>
			<div class="location_box">
				<div class="content_w">
					<p class="location_txt dis_inblock fs_15">HOME &gt; 고객센터 &gt; 공지사항</p>
				</div>
			</div>
			<%-- location --%>
			<%-- delivery menu title --%>
			<div class="cscenter_top_box">
				<div class="content_w">
					<p class="cscenter_top_title dis_inblock fs_40">고객센터</p>	
					<div class="cscenter_title_box ">
						<input class="cscenter cscenter_default" id="cscenter-1-title" type="button" value="공지사항" />
						<input class="cscenter" id="cscenter-2" type="button" value="버거킹앱 이용안내" />
						<input class="cscenter" id="cscenter-3-title" type="button" value="FAQ" />
						<input class="cscenter" id="cscenter-4-title" type="button" value="문의" />
						<input class="cscenter" id="cscenter-5-title" type="button" value="가맹점모집" />
						<input class="cscenter" id="cscenter-6-title" type="button" value="인재채용" />
					</div>
				</div>
			</div>
			<%-- delivery menu title --%>
			
			
			<%-- notice --%>
			<div class="cscenter_contents_box">
				<form class="cscenter_notice_search_box" action="/home/cscenter/notice/search" method="get">
					<input class="cscenter_notice_search_input fs_20" type="text" placeholder="제목 + 내용" />
					<input class="cscenter_notice_search_btn" type="submit" />
				</form>
				<%-- admin --%>
				<c:if test="${sessionScope.loginId eq 'admin'}">
					<input class="admin_notice_btn" type="button" value="수정" onclick="location.href='/admin/notice/updateForm'" />
					<input class="admin_notice_btn" type="button" value="추가" onclick="location.href='/admin/notice/saveForm'" />
				</c:if>
				<%-- admin --%>
				
				<div class="cscenter_notice_table_box">
					<table class="cscenter_notice_table">
						<thead>
							<tr class="fs_18">
								<th style="width: 80px;">NO.</th>
								<th>제목</th>
								<th>날짜</th>
								<th>조회수</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${noticeList}" var="notice">
								<tr class="" onclick="location.href='/home/cscenter/notice/detail?n_number=${notice.n_number}&page=${paging.page}'">
									<td>${notice.n_number}</td>
									<td>${notice.n_title}</td>
									<td>${notice.n_date}</td>
									<td>${notice.n_hits}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				
				<%-- 페이징 --%>
				<div>
					<c:choose>
						<c:when test="${paging.page<=1}">
							&lt;&nbsp;
						</c:when>
						<c:otherwise>
							<a class="cus_p" href="/home/cscenter/notice/paging?page=${paging.page-1}">&lt;</a>&nbsp;
						</c:otherwise>
					</c:choose>
					<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="i" step="1">
						<c:choose>
							<c:when test="${i eq paging.page}">
								${i}
							</c:when>
							<c:otherwise>
								<a href="/home/cscenter/notice/paging?page=${i}">${i}</a>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:choose>
						<c:when test="${paging.page>=paging.maxPage}">
							&gt;
						</c:when>
						<c:otherwise>
							<a href="/home/cscenter/notice/paging?page=${paging.page+1}">&gt;</a>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
			<%-- notice --%>
			
			
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
					<p class="bottom_menu_txt fs_18">공지사항</p>
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
						<input class="footer_1_r_btn fs_14" type="button" value="개인정보취급방침" />
						<div class="footer_1_r_line"></div>
						<input class="footer_1_r_btn fs_14" type="button" value="법적고지" />
					</div>
				</div>
				<div class="footer_2 dis_flex">
					<div class="footer_2_l">
						<p class="footer_2_l_txt fs_14">서울 종로구 삼봉로 71 G 타워 2층 주식회사
							비케이알 | 전화주문 1599-0505</p>
						<p class="footer_2_l_txt fs_14">사업자 등록번호 101-86-76277 | (주)BKR
							대표이사 문영주</p>
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
					<img class="footer_3_btn" src="/resources/img/instagram_f5ebdc.png"
						onclick="location.href='https://www.instagram.com/burgerkingkorea/'" />
				</div>
			</div>
			<%-- footer --%>
		</div>

		</div>
	</div>
</body>
</html>