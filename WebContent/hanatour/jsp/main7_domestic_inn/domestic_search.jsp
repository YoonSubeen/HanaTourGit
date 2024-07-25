<%@page import="dto.DomesticSearchDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.DomesticHotelDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	DomesticHotelDao domesticSearchDao = new DomesticHotelDao();
	ArrayList<DomesticSearchDto> listHotel = domesticSearchDao.searchHotel();
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style>
	</style>
	<link rel="stylesheet" href="../../css/domestic_search.css">
</head>
<body>
	<div id="search_box" class="center">
		<div id="real_search_box">
				<div class="fl">
					<label for="place" style="border:none;">
						<input type="text" id="place"value="서울" class="search_box_input">
					</label>
				</div>
				<div class="fr search_btn">
					<button type="button" class="search_btn">숙소검색</button>
				</div>
				<div class="fr">
					<label for="room_num" style="border:none;">
						<input type="text" id="room_num" class="room_num_input" value="객실 1, 성인 2명, 소아 0명">
					</label>
				</div>
				<div class="fr">
					<label for="check_date" style="border:none;">
						<input type="text" id="check_date" class="date" value="2024.06.19(수) - 2024.06.20(목) 1박">
					</label>
				</div>
				<div style="clear:both;"></div>
		</div>
	</div>
	<div id="bottom" class="center">
		<div id="side_bar" class="fl">
			<div></div>
			<div class="side_bar_title">결과 내 검색</div>
			<div id="search_in_result">
				<input type="text" name="search" style="border: none;" class="fl">
				<button type="button" class="search_icon"></button>
			</div>
			<div class="side_bar_title">이벤트 모아보기</div>
			<div id="event">
				<label for="click_event" class="event">
					<input type="checkbox" name="event_code" id="click_event" style="display: none">
					<b class="event_b_tag">🎉숙박페스타 숙소만 보기🔎</b>
				</label>
			</div>
			<div class="side_bar_title">지역 바로가기</div>
			<div class="flex_container">
				<label for="" class="element">
					<input type="checkbox" name="" id="seoul" value="">
					<b>서울권</b>
				</label>
				<label for="" class="element">
					<input type="checkbox" name="" id="" value="">
					<b>제주권</b>
				</label>
				<label for="" class="element">
					<input type="checkbox" name="" id="" value="">
					<b>부산권</b>
				</label>
				<label for="" class="element">
					<input type="checkbox" name="" id="" value="">
					<b>강원도</b>
				</label>
				<label for="" class="element">
					<input type="checkbox" name="" id="" value="">
					<b>경기권</b>
				</label>
				<label for="" class="element">
					<input type="checkbox" name="" id="" value="">
					<b>충청권</b>
				</label>
				<label for="" class="element">
					<input type="checkbox" name="" id="" value="">
					<b>경상권</b>
				</label>
				<label for="" class="element">
					<input type="checkbox" name="" id="" value="">
					<b>전라권</b>
				</label>
				<label for="" class="element">
					<input type="checkbox" name="" id="" value="">
					<b>인천</b>
				</label>
				<label for="" class="element">
					<input type="checkbox" name="" id="" value="">
					<b>대구</b>
				</label>
				<label for="" class="element">
					<input type="checkbox" name="" id="" value="">
					<b>대전</b>
				</label>
				<label for="" class="element">
					<input type="checkbox" name="" id="" value="">
					<b>울산</b>
				</label>
			</div>
			<!-- 가격 카테고리 -->
			<div class="side_bar_title">가격</div>
			<div class="flex_container">
				<label for="under_8" class="element">
					<input type="checkbox" name="" id="under_8" value="">
					<b>8만원 미만</b>
				</label>
				<label for="under_16" class="element">
					<input type="checkbox" name="" id="under_16" value="">
					<b>8 ~ 16만원</b>
				</label>
				<label for="under_27" class="element">
					<input type="checkbox" name="" id="under_27" value="">
					<b>16 ~ 27만원</b>
				</label>
				<label for="under_38" class="element">
					<input type="checkbox" name="" id="under_38" value="">
					<b>27 ~ 38만원</b>
				</label>
				<label for="morethan_8" class="element">
					<input type="checkbox" name="" id="morethan_38" value="">
					<b>38만원 이상</b>
				</label>
			</div>
			<div class="side_bar_title">숙소 등급</div>
			<div class="flex_container">
				<label for="five_star" class="element">
					<input type="checkbox" name="" id="five_star" value="">
					<b>5성급</b>
				</label>
				<label for="four_star" class="element">
					<input type="checkbox" name="" id="four_star" value="">
					<b>4성급</b>
				</label>
				<label for="three_star" class="element">
					<input type="checkbox" name="" id="three_star" value="">
					<b>3성급</b>
				</label>
				<label for="two_star" class="element">
					<input type="checkbox" name="" id="two_star" value="">
					<b>2성급</b>
				</label>
				<label for="one_star" class="element">
					<input type="checkbox" name="" id="one_star" value="">
					<b>1성급</b>
				</label>
			</div>
			<div class="side_bar_title">숙소 종류</div>
			<div class="flex_container">
				<label for="hotel" class="element">
					<input type="checkbox" name="" id="hotel" value="">
					<b>호텔</b>
				</label>
				<label for="resort" class="element">
					<input type="checkbox" name="" id="resort" value="">
					<b>리조트</b>
				</label>
				<label for="residence" class="element">
					<input type="checkbox" name="" id="residence" value="">
					<b>레지던스</b>
				</label>
				<label for="cottage" class="element">
					<input type="checkbox" name="" id="cottage" value="">
					<b>펜션</b>
				</label>
			</div>
			<div class="side_bar_title">숙소 부대시설</div>
			<div class="flex_container">
				<label for="" class="element">
					<input type="checkbox" name="" id="" value="">
					<b>세미나실</b>
				</label>
				<label for="" class="element">
					<input type="checkbox" name="" id="" value="">
					<b>비즈니스센터</b>
				</label>
				<label for="" class="element">
					<input type="checkbox" name="" id="" value="">
					<b>셔틀버스</b>
				</label>
				<label for="" class="element">
					<input type="checkbox" name="" id="" value="">
					<b>실내수영장</b>
				</label>
				<label for="" class="element">
					<input type="checkbox" name="" id="" value="">
					<b>실외수영장</b>
				</label>
				<label for="" class="element">
					<input type="checkbox" name="" id="" value="">
					<b>볼링장</b>
				</label>
				<label for="" class="element">
					<input type="checkbox" name="" id="" value="">
					<b>레스토랑</b>
				</label>
				<label for="" class="element">
					<input type="checkbox" name="" id="" value="">
					<b>카페</b>
				</label>
				<label for="" class="element">
					<input type="checkbox" name="" id="" value="">
					<b>주차장</b>
				</label>
				<label for="" class="element">
					<input type="checkbox" name="" id="" value="">
					<b>피트니스</b>
				</label>
				<label for="" class="element">
					<input type="checkbox" name="" id="" value="">
					<b>사우나</b>
				</label>
				<label for="" class="element">
					<input type="checkbox" name="" id="" value="">
					<b>셀프세탁실</b>
				</label>
				<label for="" class="element">
					<input type="checkbox" name="" id="" value="">
					<b>키즈카페</b>
				</label>
				<label for="" class="element">
					<input type="checkbox" name="" id="" value="">
					<b>온수풀</b>
				</label>
				<label for="" class="element">
					<input type="checkbox" name="" id="" value="">
					<b>흡연실</b>
				</label>
				<label for="" class="element">
					<input type="checkbox" name="" id="" value="">
					<b>스키장</b>
				</label>
				<label for="" class="element">
					<input type="checkbox" name="" id="" value="">
					<b>펫룸</b>
				</label>
				<label for="" class="element">
					<input type="checkbox" name="" id="" value="">
					<b>욕조</b>
				</label>
				<label for="" class="element">
					<input type="checkbox" name="" id="" value="">
					<b>WI-FI</b>
				</label>
				<label for="" class="element">
					<input type="checkbox" name="" id="" value="">
					<b>편의점</b>
				</label>
				<label for="" class="element">
					<input type="checkbox" name="" id="" value="">
					<b>루프탑</b>
				</label>
				<label for="" class="element">
					<input type="checkbox" name="" id="" value="">
					<b>클럽라운지</b>
				</label>
				<label for="" class="element">
					<input type="checkbox" name="" id="" value="">
					<b>인터넷</b>
				</label>
				<label for="" class="element">
					<input type="checkbox" name="" id="" value="">
					<b>워터파크</b>
				</label>
				<label for="" class="element">
					<input type="checkbox" name="" id="" value="">
					<b>스파(마사지)</b>
				</label>
				<label for="" class="element">
					<input type="checkbox" name="" id="" value="">
					<b>금연실</b>
				</label>
				<label for="" class="element">
					<input type="checkbox" name="" id="" value="">
					<b>BAR</b>
				</label>
				<label for="" class="element">
					<input type="checkbox" name="" id="" value="">
					<b>바베큐장</b>
				</label>
			</div>
		<div id="customer_service">
			<div>고객상담 문의</div>
			<hr>
			<div class="customer_service_normal">
				<span class="normal_text fl"style="line-height:2.4;">국내숙박</span>
				<span class="phone_text fr" style="line-height:2.4;">02-2222-2644</span>
			</div>
			<hr>
			<div id="running_time">영업시간 안내</div>
			<div class="customer_service_normal">
				<span class="normal_text fl">평일</span>
				<span class="phone_text fr">09:00~18:00</span>
			</div>
			<div class="customer_service_normal">
				<span class="normal_text fl">점심시간</span>
				<span class="phone_text fr">12:00~13:00</span>
			</div>
			<div id="bottom_purple">
				<strong>* 주말/공휴일 긴급상담만 가능<br/><br/>(업무처리불가)</strong>
			</div>
		</div>	
		</div>
		<div id="main_container" class="fr">
			<div id="banner_img">
				<img src="https://wtdom2.hanatour.com/WebUpload/Event/5493/2024052713305689374012.jpg">
			</div>
			<div id="align">
				<div id="align_tab" class="fr">
					<a href="#" style="color: #5E2BB8;">추천순</a>
					<a href="#">가격순</a>
					<a href="#">성급순</a>
				</div>
			</div>
			<div id="result_top">
				<div class="fl">총 <span>108</span>개의 검색결과가 있습니다.</div>
				<div class="fr">
					<a href="#"></a>
					<a href="#"></a>
					<a href="#"></a>
				</div>
			</div>
			
			
			<!-- 호텔 리스트 컨텐트 하나 -->
			<!-- 현재 -->
			<% for(DomesticSearchDto showList : listHotel) { %>
			<div class="content">
				<a href="#">
					<span>
						<img src="https://img.webtour.com/WebUpload/CMS/500/2021052720165338209567.jpg">
					</span>
					<span>
						<div class="inn_type">
							<b class="inn_type_box"><%=showList.getInnType() %></b>
						</div> 
						<div class="title"><%=showList.getInnKor() %>
							<span class="star"><%=showList.getStar() %>성급</span>
						</div>
						<div class="txt">
						
							<!-- 질문 
								: <세줄의 데이터를 하나의 칼럼으로 잡았는데 출력할 때 한 줄 씩 <br/>을 써서 나눠줘야함.
								그래서 <br/>로 나눠줬더니 아예 출력이 안됨.
									-->
						
							-<%=showList.getDomesticInfo().split("<br>")[0] %><br/>
							-<%=showList.getDomesticInfo().split("<br>")[1] %><br/>
							-<%=showList.getDomesticInfo().split("<br>")[2] %><br/>
							
						</div>
					</span>
					<div class="address"><%=showList.getAddress() %></div>
					<div class="price_box fr">
						<div class="price fr">
							<span class="fr" style="padding-left: 3px; padding-top: 4px;">원~</span>
							<strong class="price_text fr"><%=showList.getPrice() %></strong>
							<div class="price_info_text fr">객실 세금/봉사료 포함</div>
						</div>
						<div class="reserv">
							<button type="button" class="reserv_btn">
								<span>예약하기</span>
							</button>
						</div>
						
					</div>
				</a>
			</div>
			<% } %>
			
			
			
			<div class="content">
				<a href="#">
					<span>
						<img src="https://img.webtour.com/WebUpload/CMS/500/2021052718035365942708.jpg">
					</span>
					<span>
						<div class="inn_type">
							<b class="inn_type_box">호텔</b>
						</div> 
						<div class="title">그랜드 인터컨티넨탈 서울 파르나스
							<span class="star">5성급</span>
						</div>
						<div class="txt">
							- 강남에 위치한 멀티플렉스 호텔<br/>- 삼성역 5번 출구 도보 10분<br/>- 봉은사역 7번 출구 코엑스몰과 연결
						</div>
					</span>
					<div class="address">서울 강남구 삼성동 159</div>
					<div class="price_box fr">
						<div class="price fr">
							<span class="fr" style="padding-left: 3px; padding-top: 4px;">원~</span>
							<strong class="price_text fr">326,700</strong>
							<div class="price_info_text fr">객실 세금/봉사료 포함</div>
						</div>
						<div class="reserv">
							<button type="button" class="reserv_btn">
								<span>예약하기</span>
							</button>
						</div>
						
					</div>
				</a>
			</div>
			<div class="content">
				<a href="#">
					<span>
						<img src="https://img.webtour.com/WebUpload/CMS/500/2023090510234239014725.jpg">
					</span>
					<span>
						<div class="inn_type">
							<b class="inn_type_box">호텔</b>
						</div> 
						<div class="title">소피텔 앰배서더 서울 호텔 & 서비스드 레지던스
							<span class="star">5성급</span>
						</div>
						<div class="txt">
							- 강남에 위치한 멀티플렉스 호텔<br/>- 삼성역 5번 출구 도보 10분<br/>- 봉은사역 7번 출구 코엑스몰과 연결
						</div>
					</span>
					<div class="address">서울 강남구 삼성동 159</div>
					<div class="price_box fr">
						<div class="price fr">
							<span class="fr" style="padding-left: 3px; padding-top: 4px;">원~</span>
							<strong class="price_text fr">326,700</strong>
							<div class="price_info_text fr">객실 세금/봉사료 포함</div>
						</div>
						<div class="reserv">
							<button type="button" class="reserv_btn">
								<span>예약하기</span>
							</button>
						</div>
						
					</div>
				</a>
			</div>
			<div class="content">
				<a href="#">
					<span>
						<img src="https://img.webtour.com/WebUpload/CMS/500/2021052711565271846059.jpg">
					</span>
					<span>
						<div class="inn_type">
							<b class="inn_type_box">호텔</b>
						</div> 
						<div class="title">롯데호텔서울
							<span class="star">5성급</span>
						</div>
						<div class="txt">
							- 강남에 위치한 멀티플렉스 호텔<br/>- 삼성역 5번 출구 도보 10분<br/>- 봉은사역 7번 출구 코엑스몰과 연결
						</div>
					</span>
					<div class="address">서울 강남구 삼성동 159</div>
					<div class="price_box fr">
						<div class="price fr">
							<span class="fr" style="padding-left: 3px; padding-top: 4px;">원~</span>
							<strong class="price_text fr">326,700</strong>
							<div class="price_info_text fr">객실 세금/봉사료 포함</div>
						</div>
						<div class="reserv">
							<button type="button" class="reserv_btn">
								<span>예약하기</span>
							</button>
						</div>
						
					</div>
				</a>
			</div>
			<div class="content">
				<a href="#">
					<span>
						<img src="https://img.webtour.com/WebUpload/CMS/500/2024050810471257296341.jpg">
					</span>
					<span>
						<div class="inn_type">
							<b class="inn_type_box">호텔</b>
						</div> 
						<div class="title">서울신라호텔
							<span class="star">5성급</span>
						</div>
						<div class="txt">
							- 강남에 위치한 멀티플렉스 호텔<br/>- 삼성역 5번 출구 도보 10분<br/>- 봉은사역 7번 출구 코엑스몰과 연결
						</div>
					</span>
					<div class="address">서울 강남구 삼성동 159</div>
					<div class="price_box fr">
						<div class="price fr">
							<span class="fr" style="padding-left: 3px; padding-top: 4px;">원~</span>
							<strong class="price_text fr">326,700</strong>
							<div class="price_info_text fr">객실 세금/봉사료 포함</div>
						</div>
						<div class="reserv">
							<button type="button" class="reserv_btn">
								<span>예약하기</span>
							</button>
						</div>
						
					</div>
				</a>
			</div>
			<div class="content">
				<a href="#">
					<span>
						<img src="https://img.webtour.com/WebUpload/CMS/500/2021052416332846750913.jpg">
					</span>
					<span>
						<div class="inn_type">
							<b class="inn_type_box">호텔</b>
						</div> 
						<div class="title">노보텔 스위트 앰배서더 서울 용산
							<span class="star">5성급</span>
						</div>
						<div class="txt">
							- 강남에 위치한 멀티플렉스 호텔<br/>- 삼성역 5번 출구 도보 10분<br/>- 봉은사역 7번 출구 코엑스몰과 연결
						</div>
					</span>
					<div class="address">서울 강남구 삼성동 159</div>
					<div class="price_box fr">
						<div class="price fr">
							<span class="fr" style="padding-left: 3px; padding-top: 4px;">원~</span>
							<strong class="price_text fr">326,700</strong>
							<div class="price_info_text fr">객실 세금/봉사료 포함</div>
						</div>
						<div class="reserv">
							<button type="button" class="reserv_btn">
								<span>예약하기</span>
							</button>
						</div>
						
					</div>
				</a>
			</div>
			<div class="content">
				<a href="#">
					<span>
						<img src="https://img.webtour.com/WebUpload/CMS/500/2021052416332846750913.jpg">
					</span>
					<span>
						<div class="inn_type">
							<b class="inn_type_box">호텔</b>
						</div> 
						<div class="title">노보텔 앰배서더 서울 용산
							<span class="star">5성급</span>
						</div>
						<div class="txt">
							- 강남에 위치한 멀티플렉스 호텔<br/>- 삼성역 5번 출구 도보 10분<br/>- 봉은사역 7번 출구 코엑스몰과 연결
						</div>
					</span>
					<div class="address">서울 강남구 삼성동 159</div>
					<div class="price_box fr">
						<div class="price fr">
							<span class="fr" style="padding-left: 3px; padding-top: 4px;">원~</span>
							<strong class="price_text fr">326,700</strong>
							<div class="price_info_text fr">객실 세금/봉사료 포함</div>
						</div>
						<div class="reserv">
							<button type="button" class="reserv_btn">
								<span>예약하기</span>
							</button>
						</div>
						
					</div>
				</a>
			</div>
			<div class="content">
				<a href="#">
					<span>
						<img src="https://img.webtour.com/WebUpload/CMS/500/2021052416332846750913.jpg">
					</span>
					<span>
						<div class="inn_type">
							<b class="inn_type_box">호텔</b>
						</div> 
						<div class="title">이비스 스타일 앰배서더 서울 용산
							<span class="star">5성급</span>
						</div>
						<div class="txt">
							- 강남에 위치한 멀티플렉스 호텔<br/>- 삼성역 5번 출구 도보 10분<br/>- 봉은사역 7번 출구 코엑스몰과 연결
						</div>
					</span>
					<div class="address">서울 강남구 삼성동 159</div>
					<div class="price_box fr">
						<div class="price fr">
							<span class="fr" style="padding-left: 3px; padding-top: 4px;">원~</span>
							<strong class="price_text fr">326,700</strong>
							<div class="price_info_text fr">객실 세금/봉사료 포함</div>
						</div>
						<div class="reserv">
							<button type="button" class="reserv_btn">
								<span>예약하기</span>
							</button>
						</div>
						
					</div>
				</a>
			</div>
			<div class="content">
				<a href="#">
					<span>
						<img src="https://img.webtour.com/WebUpload/CMS/500/2021052416332846750913.jpg">
					</span>
					<span>
						<div class="inn_type">
							<b class="inn_type_box">호텔</b>
						</div> 
						<div class="title">그랜드 머큐어 앰배서더 호텔 앤 레지던스 서울 용산
							<span class="star">5성급</span>
						</div>
						<div class="txt">
							- 강남에 위치한 멀티플렉스 호텔<br/>- 삼성역 5번 출구 도보 10분<br/>- 봉은사역 7번 출구 코엑스몰과 연결
						</div>
					</span>
					<div class="address">서울 강남구 삼성동 159</div>
					<div class="price_box fr">
						<div class="price fr">
							<span class="fr" style="padding-left: 3px; padding-top: 4px;">원~</span>
							<strong class="price_text fr">326,700</strong>
							<div class="price_info_text fr">객실 세금/봉사료 포함</div>
						</div>
						<div class="reserv">
							<button type="button" class="reserv_btn">
								<span>예약하기</span>
							</button>
						</div>
						
					</div>
				</a>
			</div>
			<div class="content">
				<a href="#">
					<span>
						<img src="https://img.webtour.com/WebUpload/CMS/500/2021060210461449071538.jpg">
					</span>
					<span>
						<div class="inn_type">
							<b class="inn_type_box">호텔</b>
						</div> 
						<div class="title">서울 레스케이프 호텔
							<span class="star">5성급</span>
						</div>
						<div class="txt">
							- 강남에 위치한 멀티플렉스 호텔<br/>- 삼성역 5번 출구 도보 10분<br/>- 봉은사역 7번 출구 코엑스몰과 연결
						</div>
					</span>
					<div class="address">서울 강남구 삼성동 159</div>
					<div class="price_box fr">
						<div class="price fr">
							<span class="fr" style="padding-left: 3px; padding-top: 4px;">원~</span>
							<strong class="price_text fr">326,700</strong>
							<div class="price_info_text fr">객실 세금/봉사료 포함</div>
						</div>
						<div class="reserv">
							<button type="button" class="reserv_btn">
								<span>예약하기</span>
							</button>
						</div>
						
					</div>
				</a>
			</div>
			<div class="flex_page">
				<a href="#">
					<span class="on">1</span>
				</a>
				<a href="#">
					<span>2</span>
				</a>
				<a href="#">
					<span>3</span>
				</a>
				<a href="#">
					<span>4</span>
				</a>
				<a href="#">
					<span>5</span>
				</a>
				<a href="#" class="next">
				</a>
			</div>
		</div>
		
	</div>
</body>
</html>