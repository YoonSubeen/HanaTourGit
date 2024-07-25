<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Insert title here</title>
	<link rel="stylesheet" href="../../css/hotel_search.css">

</head>
<body>		<!-- cursor -->
	<div id="entire_container">
		<div id="search_box">
			<div id="search_box_left">
				<button type="submit" class="search_button" style="top: 16px; left: 21px;"></button>
				<input type="text" name="input_hotel_name" placeholder="지역명이나 숙소명을 입력해 주세요">
			</div>
			<div id="search_box_right" class="fr">
				<a href="#none" class="search_box fr">숙소검색</a>
				<a href="#none" class="search_box fr">
					<img src="img/icon_person.png" style="vertical-align: middle;">
					<span style="vertical-align: middle;">객실1</span>
					<span style="vertical-align: middle;">성인 2명</span>
				</a>
				<a href="#none"class="search_box fr">
					<img src="img/icon_calendar.png" style="vertical-align: middle;">
					<span style="vertical-align: middle;">2024.06.11 - 2024.06.12 </span>
					<span style="vertical-align: middle;">1박</span>
				</a>
				<div style="clear: both;"></div>
			</div>
		</div>

		<!-- 검색결과 왼쪽 컨테이너 -->
		<div id="side_bar" class="fl">
			<div id="bar_top">
				<strong class="side_bar_title">결과 내 검색</strong>
				<div>
					<input type="text" name="input" class="search_in_result" placeholder="호텔명/랜드마크를 입력해주세요">
					<div class="fr search_button_box">
						<button class="search_button" style="margin-left: 5px; margin-top: 15px;"></button>
					</div>
				</div>
				<div id="price_detail">
					<details>
						<summary>
							<div class="summary">
								<div class="summary_inner">가격</div>
							</div>
						</summary>
							<div class="details_inner fl">8만원 미만</div>
							<div class="details_inner fl">8 ~ 16만원</div>
							<div class="details_inner fl">16 ~ 27만원</div>
							<div class="details_inner fl">27 ~ 38만원</div>
							<div class="details_inner fl">38만원 이상</div>
					</details>
				</div>
				<div id="popular_filter_detail">
					<details>
						<summary>
							<div class="summary">
								<div class="summary_inner">인기 필터</div>
							</div>
						</summary>
							<div class="details_inner fl">회원특가</div>
					</details>
				</div>
				<div id="inn_rating_detail">
					<details>
						<summary>
							<div class="summary">
								<div class="summary_inner">숙소 평점</div>
							</div>
						</summary>
							<div class="details_inner fl">최고(4.5+)</div>
							<div class="details_inner fl">우수(4+)</div>
							<div class="details_inner fl">좋음(3.5+)</div>
							<div class="details_inner fl">양호(3+)</div>
					</details>
				</div>
				<div id="inn_type_detail">
					<details>
						<summary>
							<div class="summary">
								<div class="summary_inner">숙소 종류</div>
							</div>
						</summary>
							<div class="details_inner fl">호텔</div>
							<div class="details_inner fl">레지던스</div>
							<div class="details_inner fl">리조트</div>
							<div class="details_inner fl">Inn</div>
							<div class="details_inner fl">콘도</div>
							<div class="details_inner fl">산장/롯지</div>
							<div class="details_inner fl">크루즈</div>
							<div class="details_inner fl">캠핑장</div>
							<div class="details_inner fl">골프텔</div>
					</details>
				</div>
				<div id="inn_star_detail">
					<details>
						<summary>
							<div class="summary">
								<div class="summary_inner">숙소 	등급</div>
							</div>
						</summary>
							<div class="details_inner fl">5성급</div>
							<div class="details_inner fl">4성급</div>
							<div class="details_inner fl">3성급</div>
							<div class="details_inner fl">2성급</div>
							<div class="details_inner fl">1성급</div>
							<div class="details_inner fl">성급없음</div>
					</details>
				</div>
				<div id="amenity_detail">
					<details>
						<summary>
							<div class="summary">
								<div class="summary_inner">숙소 부대시설</div>
							</div>
						</summary>
							<div class="details_inner fl">wifi</div>
							<div class="details_inner fl">주차</div>
							<div class="details_inner fl">프론트데스크</div>
							<div class="details_inner fl">여가시설</div>
							<div class="details_inner fl">짐보관 서비스</div>
							<div class="details_inner fl">레스토랑</div>
							<div class="details_inner fl">수영장</div>
							<div class="details_inner fl">기타 서비스</div>
							<div class="details_inner fl">기타 편의시설</div>
							<div class="details_inner fl">조식 서비스</div>
							<div class="details_inner fl">흡연가능</div>
							<div class="details_inner fl">피트니스 센터</div>
							<div class="details_inner fl">셔틀서비스</div>
							<div class="details_inner fl">스파/웰빙</div>
							<div class="details_inner fl">전용 해변</div>
							<div class="details_inner fl">비즈니스 시설</div>
							<div class="details_inner fl">키즈 시설</div>
							<div class="details_inner fl">장애인 편의시설</div>
							<div class="details_inner fl">인터넷</div>
							<div class="details_inner fl">쇼핑시설</div>
							<div class="details_inner fl">전기차 충전소</div>
							<div class="details_inner fl">반려동물 동반</div>
					</details>
				</div>
				<div id="facility_detail">
					<details>
						<summary>
							<div class="summary">
								<div class="summary_inner">객실 편의시설</div>
							</div>
						</summary>
							<div class="details_inner fl">wifi</div>
							<div class="details_inner fl">에어컨</div>
							<div class="details_inner fl">욕실용품</div>
							<div class="details_inner fl">tv</div>
							<div class="details_inner fl">미니바</div>
							<div class="details_inner fl">안전금고</div>
							<div class="details_inner fl">기타 객실시설</div>
							<div class="details_inner fl">객실 편의시설</div>
							<div class="details_inner fl">조리도구,주방기구</div>
							<div class="details_inner fl">발코니/테라스</div>
							<div class="details_inner fl">룸서비스</div>
							<div class="details_inner fl">커피 메이커</div>
							<div class="details_inner fl">전화</div>
							<div class="details_inner fl">엑스트라배드 추가가능</div>
							<div class="details_inner fl">욕실시설</div>
							<div class="details_inner fl">유아용 침대 이용가능</div>
							<div class="details_inner fl">개별온도조절</div>
							<div class="details_inner fl">소파베드</div>
							<div class="details_inner fl">장애인 편의시설</div>
							<div class="details_inner fl">유아용 식탁의자</div>
							<div class="details_inner fl">인터넷</div>
					</details>
				</div>
				<div id="area">
					<details>
						<summary>
							<div class="summary">
								<div class="summary_inner">지역/div>
							</div>
						</summary>
							<div class="details_inner fl">patong</div>
							<div class="details_inner fl">rawai</div>
							<div class="details_inner fl">karon</div>
							<div class="details_inner fl">choeng thale</div>
							<div class="details_inner fl">kamala</div>
							<div class="details_inner fl">phuket</div>
							<div class="details_inner fl">chalong</div>
							<div class="details_inner fl">wichit</div>
							<div class="details_inner fl">sa khu</div>
							<div class="details_inner fl">kathu</div>
							<div class="details_inner fl">ratsada</div>
							<div class="details_inner fl">ko kaeo</div>
							<div class="details_inner fl">ko yao</div>
							<div class="details_inner fl">mai khao</div>
							<div class="details_inner fl">ko racha yai</div>
							<div class="details_inner fl">phuket</div>
							<div class="details_inner fl">maprao island</div>
							<div class="details_inner fl">siray</div>
							<div class="details_inner fl">koh lon</div>
							<div class="details_inner fl">koh he</div>
							<div class="details_inner fl">ppa klok</div>
							<div class="details_inner fl">si sunthon</div>
					</details>
				</div>
<!-- 				<div class="title_box">
				<a href="www.naver.com" class="title_text">가격</a>
				</div>
				<div class="title_box">
				<a href="www.naver.com" class="title_text">인기 필터</a>
				</div>
				<div class="title_box">
				<a href="www.naver.com" class="title_text">숙소 평점</a>
				</div>
				<div class="title_box">
				<a href="www.naver.com" class="title_text">숙소 종류</a>
				</div>
				<div class="title_box">
				<a href="www.naver.com" class="title_text">숙소 특징</a>
				</div>
				<div class="title_box">
				<a href="www.naver.com" class="title_text">숙소 등급</a>
				</div>
				<div class="title_box">
				<a href="www.naver.com" class="title_text">숙소 부대시설</a>
				</div>
				<div class="title_box">
				<a href="www.naver.com" class="title_text">객실 편의시설</a>
				</div>
				<div class="title_box">
				<a href="www.naver.com" class="title_text">지역</a> -->
				</div>
			</div>
		</div>
		
		<!-- 검색 결과 오른쪽 컨테이너 -->
		<div id="main" class="fr">
			<div id="filter_top" class="fl">
				<div id="filter_top_left" class="fl">
					<span class="fl"><img src="img/filter_icon.png" ></span>
					<span class="fl" style="width: 32.45px; height: 20px;">필터</span>
					<span class="fl"></span>
					<span style="clear: both;"></span>
				</div>
				<div id="filters" class="fl">
					<a href="#none" class="filter_reset" style="padding-top: 9px;">
						<span><img src="img/icon_reset.png"></span>
						<span>필터초기화</span>
					</a>
				</div>
			</div>
			<div id="map" class="fl">
				<div class="fr">
					<strong>지도로 보기</strong>
					<div class="fr map_off">
						OFF <!-- <input type="checkbox" id="show_map">      	클릭>>동그라미 위치 바뀔 수 있도록 만들기-->
					</div>
				</div>
			</div>	
			<div id="align" class="fl">
				<a href="#none" class="fl align_atag_purple">1박 최저가</a>

				<a href="#none" class="fr align_atag">상품평 높은순</a>
				<a href="#none" class="fr align_atag">성급 낮은순</a>
				<a href="#none" class="fr align_atag">성급 높은순</a>
				<a href="#none" class="fr align_atag">가격 낮은순</a>
				<a href="#none" class="fr align_atag">가격 높은순</a>
				<a href="#none" class="fr align_atag_purple" style="text-decoration: none;">추천순</a>
			</div>
			<div style="clear:both;">
			<span style="clear:both;">
			<div id="banner1">
				<div>
					<em>회원 특가란?</em>
					<em style="color: #333;">하나투어 고객에게 드리는 </em>
					<em>스페셜 최저가</em>
				</div>
				<span class="fr"><img src="img/icon_close.png"></span>
			</div>
			<div id="banner2">
				<img src="https://image.hanatour.com/usr/static/img/pc/temp/banner_htl01.png">
			</div>
			<div class="product">
				<!-- 리스트로 바꿔서 값 넣기! -->
				<img src="https://image.hanatour.com/usr/cms/resize/400_0/2021/11/11/10000/0066bd15-8e24-4175-bbb4-272db9049f55.jpg" class="product_img">

				<div id="hotel_price" class="fr">
					<div class="fr">
						<span class="price_static">1박 기준</span>
						<span class="price_num">136,177</span>
						<span>원~</span>
					</div>
					<div class="fr price_contain">객실 세금/봉사료 포함</div>
					<div class="fr" style="margin-top: 64.5px;">
						<a href="#none" id="zzim" class="button_top fl">
						<img src="img/icon_zzim_empty.png" style="width: 18px; height: 18px; vertical-align: middle">
						</a>
						<a href="#none"id="compare" class="button_top fl" style="margin-left:6px; text-decoration: none; color: #333;"  >비교</a>
					</div>
					<a href="https://m.naver.com/" id="show_detail" class="button_bottom fr">상세보기</a>		
				</div>
				<div id="hotel_info" class="fr">
					<div>
						<strong class="strong">그랜드 머큐어 푸켓 파통</strong>
						<span class="rating">5성급</span>
					</div>
					<div class="hotel_eng">GRAND MERCURE PHUKET PATONG</div>
					<div id=location>
						<div class="location_text">
							<img src="https://image.hanatour.com/usr/static/img2/pc/com/ic_note.png" class="location_icon">
							정실론 쇼핑센터 부근에 위치
						</div>
						<div class="location_text">
							<img src="https://image.hanatour.com/usr/static/img2/pc/com/ic_location_line_12.png" class="location_icon">
							Patong 정실론 쇼핑센터 0.31km방라 로드 0.4km
						</div>
					</div>
					<div id="hotel_info_bottom">
						<div id="hotel_info_bottom1">
							<div>
								#스페셜 베네핏
							</div>
						</div>
						<div id="hotel_info_bottom2">
							<div>
								<img src="https://image.hanatour.com/usr/static/img2/pc/com/ic_star_solid_12.png" class="star">
								<span>4.4</span>
								<span class="rating_level">우수</span>
								<span class="review_num">960개의 후기</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="product">
				<!-- 리스트로 바꿔서 값 넣기! -->
				<img src="https://image.hanatour.com/usr/cms/resize/400_0/2022/09/28/10000/2b8473c9-a011-4497-89b9-3e6e7dfd45fd.jpg" class="product_img">

				<div id="hotel_price" class="fr">
					<div class="fr">
						<span class="price_static">1박 기준</span>
						<span class="price_num">227,271</span>
						<span>원~</span>
					</div>
					<div class="fr price_contain">객실 세금/봉사료 포함</div>
					<div class="fr" style="margin-top: 64.5px;">
						<a href="#none" id="zzim" class="button_top fl">
						<img src="img/icon_zzim_empty.png" style="width: 18px; height: 18px; vertical-align: middle">
						</a>
						<a href="#none"id="compare" class="button_top fl" style="margin-left:6px; text-decoration: none; color: #333;"  >비교</a>
					</div>
					<a href="https://m.naver.com/" id="show_detail" class="button_bottom fr">상세보기</a>		
				</div>
				<div id="hotel_info" class="fr">
					<div>
						<strong class="strong">칼리마 리조트 & 스파, 푸켓 - SHA Extra Plus</strong>
						<span class="rating">5성급</span>
					</div>
					<div class="hotel_eng">KALIMA RESORT AND SPA</div>
					<div id=location>
						<div class="location_text">
							<img src="https://image.hanatour.com/usr/static/img2/pc/com/ic_note.png" class="location_icon">
							파통 비치 부근에 위치
						</div>
						<div class="location_text">
							<img src="https://image.hanatour.com/usr/static/img2/pc/com/ic_location_line_12.png" class="location_icon">
							Patong 칼림 비치 1.09km 파통 비치 2.63km
						</div>
					</div>
					<div id="hotel_info_bottom">
						<div id="hotel_info_bottom1">
							<div>
								#스페셜 베네핏
							</div>
						</div>
						<div id="hotel_info_bottom2">
							<div>
								<img src="https://image.hanatour.com/usr/static/img2/pc/com/ic_star_solid_12.png" class="star">
								<span>4.3</span>
								<span class="rating_level">우수</span>
								<span class="review_num">981개의 후기</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="product">
				<!-- 리스트로 바꿔서 값 넣기! -->
				<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/04/17/80000/97cd17e2-2969-4525-928e-e60dd340d21a.jpg" class="product_img">

				<div id="hotel_price" class="fr">
					<div class="fr">
						<span class="price_static">1박 기준</span>
						<span class="price_num">220,028</span>
						<span>원~</span>
					</div>
					<div class="fr price_contain">객실 세금/봉사료 포함</div>
					<div class="fr" style="margin-top: 64.5px;">
						<a href="#none" id="zzim" class="button_top fl">
						<img src="img/icon_zzim_empty.png" style="width: 18px; height: 18px; vertical-align: middle">
						</a>
						<a href="#none"id="compare" class="button_top fl" style="margin-left:6px; text-decoration: none; color: #333;"  >비교</a>
					</div>
					<a href="https://m.naver.com/" id="show_detail" class="button_bottom fr">상세보기</a>		
				</div>
				<div id="hotel_info" class="fr">
					<div>
						<strong class="strong">하얏트 리젠시 푸켓 리조트</strong>
						<span class="rating">5성급</span>
					</div>
					<div class="hotel_eng">HYATT REGENCY PHUKET RESORT</div>
					<div id=location>
						<div class="location_text">
							<img src="https://image.hanatour.com/usr/static/img2/pc/com/ic_note.png" class="location_icon">
							푸켓 환타씨 부근에 위치
						</div>
						<div class="location_text">
							<img src="https://image.hanatour.com/usr/static/img2/pc/com/ic_location_line_12.png" class="location_icon">
							Kamala Big C Market Kamala 1.04km 쓰나미 추모비 1.31km
						</div>
					</div>
					<div id="hotel_info_bottom">
						<div id="hotel_info_bottom1">
							<div>
								#스페셜 베네핏
							</div>
						</div>
						<div id="hotel_info_bottom2">
							<div>
								<img src="https://image.hanatour.com/usr/static/img2/pc/com/ic_star_solid_12.png" class="star">
								<span>4.1</span>
								<span class="rating_level">우수</span>
								<span class="review_num">110개의 후기</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="product">
				<!-- 리스트로 바꿔서 값 넣기! -->
				<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/03/26/840000/9ba61bf7-95bc-4f68-bdea-6df4871e5788.jpg" class="product_img">

				<div id="hotel_price" class="fr">
					<div class="fr">
						<span class="price_static">1박 기준</span>
						<span class="price_num">125,692</span>
						<span>원~</span>
					</div>
					<div class="fr price_contain">객실 세금/봉사료 포함</div>
					<div class="fr" style="margin-top: 64.5px;">
						<a href="#none" id="zzim" class="button_top fl">
						<img src="img/icon_zzim_empty.png" style="width: 18px; height: 18px; vertical-align: middle">
						</a>
						<a href="#none"id="compare" class="button_top fl" style="margin-left:6px; text-decoration: none; color: #333;"  >비교</a>
					</div>
					<a href="https://m.naver.com/" id="show_detail" class="button_bottom fr">상세보기</a>		
				</div>
				<div id="hotel_info" class="fr">
					<div>
						<strong class="strong">홀리데이 인 리조트 푸켓, IHG 호텔</strong>
						<span class="rating">4성급</span>
					</div>
					<div class="hotel_eng">HOLIDAY INN RESORT PHUKET</div>
					<div id=location>
						<div class="location_text">
							<img src="https://image.hanatour.com/usr/static/img2/pc/com/ic_note.png" class="location_icon">
							방라 로드 부근에 위치
						</div>
						<div class="location_text">
							<img src="https://image.hanatour.com/usr/static/img2/pc/com/ic_location_line_12.png" class="location_icon">
							Patong 방라 로드 0.67km 정실론 쇼핑센터 0.72km
						</div>
					</div>
					<div id="hotel_info_bottom">
						<div id="hotel_info_bottom1">
							<div>
								#스페셜 베네핏
							</div>
						</div>
						<div id="hotel_info_bottom2">
							<div>
								<img src="https://image.hanatour.com/usr/static/img2/pc/com/ic_star_solid_12.png" class="star">
								<span>4.4</span>
								<span class="rating_level">우수</span>
								<span class="review_num">966개의 후기</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>