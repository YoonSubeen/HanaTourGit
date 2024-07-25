<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="../../css/header.css">
	<link rel="stylesheet" href="../../css/footer.css">
	<link rel="stylesheet" href="../../css/tour_search.css">
	<script src="https://kit.fontawesome.com/f8ad0e4bbc.js" crossorigin="anonymous"></script>
	<script>
		function myFunction() {
				document.getElementById("myDropdown").classList.toggle("show");
		}
		window.onclick = function(event) {
			if (!event.target.matches('.dropbtn')) {
				var dropdowns = document.getElementsByClassName("dropdown-content");
				var i;
				for(i=0; i<dropdowns.length; i++) {
					var openDropdown = dropdowns[i];
					if (openDropdown.classList.contains('show')) {
						openDropdown.classList.remove('show');
					}
					
				}
			}
			
		}
	</script>
</head>
<body>
 <header>
        <!-- header1 -->
        <div class="header1">
            <div class="login fr">
                <span class="fl">
                    <a href="">로그인</a>
                </span>
                <span class="fl">
                    <a href="">회원가입</a>
                </span>
                <span class="fr">
                    <a href="">고객센터</a>
                </span>
                <span style="clear: both;"></span>
            </div>
        </div>
        <!-- header2 -->
        <div class="header2">
        
            <!-- header2 왼쪽 -->
            <div class="fl">
                <div class="logo fl">
                    <img src="../../img/header/ico-hanatour-logo2.png" alt="logo">
                </div>
                <div class="search_bar fl">
                    <form action="#">
                        <input 
                            type="text" 
                            name ="search_keyword" 
                            placeholder="검색어를 입력해 주세요"
                        >
                        <button class="search_btn">
                            <img src="../../img/header/ico-search.png" alt="돋보기">
                        </button>
                    </form>
                </div>
                <div class="trending_search fl">
                    <img src="../../img/header/osaka.png" alt="osaka">
                    <div class="trending_hover">
                        <div>
                            <img src="../../img/header/trending_search.png" alt="인기검색어">
                        </div>
                        <div>
                            <div>일본</div>
                            <div>몽골</div>
                            <div>다낭</div>
                        </div>
                    </div>
                </div>
                <div style="clear: both;"></div>
            </div>

            <!-- header2 오른쪽 -->
            <div class="mypage fr">
                <div class="mypage_item1 fr">
                    <a href="#">
                        <img src="../../img/header/ico-haeder-choice.png" alt="">
                       
                    </a>
                </div>
                <div class="mypage_item2 fr">
                    <a href="#">
                        <img src="../../img/header/ico-reservationhistory.png" alt="">
                    </a>
                </div>
                <div class="mypage_item3 fr">
                    <a href="">
                        <img src="../../img/header/ico-mymenu.png" alt="">
                    </a>
                </div>
                <div style="clear:both;"></div>
            </div>
        
            <div style="clear: both;"></div>
        </div>
        
        <!-- header3 -->
        <div class="header3">
            <div class="menu">
                <div class="menu_left fl" id="menu_left">
                    <a href="#">
                        <img src="../../img/header/ico-hamburgermenu.png" alt="">
                    </a>

                    <div class="sub_menu_container smc_hide" id="sub_menu_container">
                        <div class="sub_menu">
                            <div class="sub_top">
                                <div class="sub_item fl">
                                    <div>
                                        <a href="#">
                                            해외여행
                                        </a>
                                    </div>
                                    <div>
                                        <a href="#">
                                            해외여행 홈
                                        </a>
                                    </div>
                                </div>
                                <div class="sub_item fl">
                                    <div>
                                        <a href="">
                                            항공
                                        </a>
                                    </div>
                                    <div>
                                        <a href="#">
                                            항공예약
                                        </a>
                                    </div>
                                </div>
                                <div class="sub_item fl">
                                    <div>
                                        <a href="#">
                                            호텔
                                        </a>
                                    </div>
                                    <div>
                                        <a href="#">
                                            해외호텔
                                        </a>
                                    </div>
                                    <div>
                                        <a href="#">
                                            국내숙박
                                        </a>
                                    </div>
                                </div>
                                <div class="sub_item fl">
                                    <div>
                                        <a href="#">
                                            국내여행
                                        </a>
                                    </div>
                                    <div>
                                        <a href="#">
                                            제주여행
                                        </a>
                                    </div>
                                    <div>
                                        <a href="#">
                                            내륙여행
                                        </a>
                                    </div>
                                    <div>
                                        <a href="#">
                                            울릉도/섬
                                        </a>
                                    </div>
                                    <div>
                                        <a href="#">
                                            내나라여행
                                        </a>
                                    </div>
                                    <div>
                                        <a href="#">
                                            국내골프
                                        </a>
                                    </div>
                                </div>
                                <div class="sub_item fl">
                                    <div>
                                        <a href="#">
                                            연계서비스
                                        </a>
                                    </div>
                                    <div>
                                        <a href="#">
                                            하나투어상품권
                                        </a>
                                    </div>
                                    <div>
                                        <a href="#">
                                            포켓와이파이
                                        </a>
                                    </div>
                                </div>
                                <div class="sub_item fl">
                                    <div>
                                        <br>
                                    </div>
                                    <div>
                                        <a href="#">
                                            하나트래비즈
                                        </a>
                                    </div>
                                    <div>
                                        <a href="#">
                                            하나투어 기프트카드
                                        </a>
                                    </div>
                                    <div>
                                        <a href="#">
                                            여행자보험
                                        </a>
                                    </div>
                                </div>
                                <div style="clear: both;"></div>
                            </div>
                            <!-- sub_top close -->
                            
                            <div class="sub_bottom">
                                <div class="sub_item fl">
                                    <div>
                                        <br>
                                    </div>
                                </div>
                                <div class="sub_item fl">
                                    <div>
                                        <a href="">
                                            테마여행
                                        </a>
                                    </div>
                                    <div>
                                        <a href="#">
                                            허니문
                                        </a>
                                    </div>
                                    <div>
                                        <a href="#">
                                            해외골프
                                        </a>
                                    </div>
                                    <div>
                                        <a href="#">
                                            크루즈
                                        </a>
                                    </div>
                                    <div>
                                        <a href="#">
                                            트래킹
                                        </a>
                                    </div>
                                    <div>
                                        <a href="#">
                                            제우스
                                        </a>
                                    </div>
                                    <div>
                                        <a href="#">
                                            MICE
                                        </a>
                                    </div>
                                </div>
                                <div class="sub_item fl">
                                    <div>
                                        <a href="#">
                                            투어/입장권
                                        </a>
                                    </div>
                                    <div>
                                        <a href="#">
                                            투어/입장권 홈
                                        </a>
                                    </div>
                                </div>
                                <div class="sub_item fl">
                                    <div>
                                        <a href="#">
                                            혜택/이벤트
                                        </a>
                                    </div>
                                    <div>
                                        <a href="#">
                                            이벤트
                                        </a>
                                    </div>
                                    <div>
                                        <a href="#">
                                            할인/혜택
                                        </a>
                                    </div>
                                    <div>
                                        <a href="#">
                                            여행기획전
                                        </a>
                                    </div>
                                </div>
                                <div class="sub_item fl">
                                    <div>
                                        <a href="#">
                                            하나투어 셀렉션
                                        </a>
                                    </div>
                                    <div>
                                        <a href="#">
                                            하나LIVE
                                        </a>
                                    </div>
                                    <div>
                                        <a href="#">
                                            하나Original
                                        </a>
                                    </div>
                                    <div>
                                        <a href="#">
                                            밍글링투어
                                        </a>
                                    </div>
                                    <div>
                                        <a href="#">
                                            마일리지 클럽
                                        </a>
                                    </div>
                        
                                </div>
                                <div class="sub_item fl">
                                    <div>
                                        <br>
                                    </div>
                                    <div>
                                        <a href="#">
                                            하나팩 2.0
                                        </a>
                                    </div>
                                    <div>
                                        <a href="#">
                                            개런티 프로그램
                                        </a>
                                    </div>
                                    <div>
                                        <a href="#">
                                            SAFETY&JOY
                                        </a>
                                    </div>
                                    <div>
                                        <a href="#">
                                            우리끼리
                                        </a>
                                    </div>
                                </div>
                                <div style="clear: both;"></div>
                            </div>
                            <!-- sub_bottom close -->
                        </div>
                        <!-- sub_menu close -->
                        <div class="sub_menu_close" id="sub_menu_close">
                            <a href="#">
                                <img src="../../img/header/ico-alllmenu_close.png" alt="">
                            </a>
                        </div>
                    </div>
                    <!-- sub_menu_container close -->
                </div>
                <!-- menu_left close -->

                <div class="menu_center fl">
                    <ul>
                        <li>
                            <a href="">베스트</a>
                            <div></div>
                        </li>
                        <li class="menu_center_sub1">
                            <a href="#">해외여행</a>
                            <div></div>
                        </li>
                        <li>
                            <a href="#">항공</a>
                            <div></div>
                        </li>
                        <li>
                            <a href="#">호텔</a>
                            <div></div>
                        </li>
                        <li>
                            <a href="#">항공+호텔</a>
                            <div></div>
                        </li>
                        <li>
                            <a href="#">투어/입장권</a>
                            <div></div>
                        </li>
                        <li>
                            <a href="#">국내여행</a>
                            <div></div>
                        </li>
                        <li>
                            <a href="#">테마여행</a>
                            <div></div>
                        </li>
                        <li>
                            <a href="#">제우스</a>
                            <div></div>
                        </li>
                        <li>
                            <a href="#">하나LIVE</a>
                            <div></div>
                        </li>
                    </ul>
                </div>	
                <div class="menu_right fr">
                    <ul>
                        <li>
                            <a href="#">이달의 혜택</a>
                        </li>
                        <li>
                            <a href="#">맞춤여행</a>
                        </li>
                        <li>
                            <a href="#">여행기획전</a>
                        </li>
                    </ul>
                </div>
                <div style="clear:both"></div>
            </div>
        </div>
    </header>


	<div id="top" class="center">
		<div>도쿄</div>
	</div>
	<div id="bottom">
		<div id="side_bar" class="fl">
			<div id="category" class="category_text">CATEGORY</div>
			<div id="category_content">
				<div>
					<a href="#" class="whole_a">전체</a>
				</div>
				<div>
					<details>
						<summary class="">
						<a href="#">투어/체험/액티비티</a>
						</summary>
						<div>
							<div><a href="#" class="details_inner_a">전체</a></div>
							<div><a href="#" class="details_inner_a">시내관광</a></div>
							<div><a href="#" class="details_inner_a">근교투어</a></div>
							<div><a href="#" class="details_inner_a">버스투어/기차투어</a></div>
							<div><a href="#" class="details_inner_a">현지이색체험</a></div>
						</div>
					</details>
				</div>
				<div>
					<details>
						<summary class="">
						<a href="#">입장권/교통패스/시즌권</a>
						</summary>
						<div>
							<div><a href="#" class="details_inner_a">전체</a></div>
							<div><a href="#" class="details_inner_a">테마파크</a></div>
							<div><a href="#" class="details_inner_a">워터파크</a></div>
							<div><a href="#" class="details_inner_a">박물관&미술관</a></div>
							<div><a href="#" class="details_inner_a">동물원,식물원&수족관</a></div>
							<div><a href="#" class="details_inner_a">랜드마크</a></div>
							<div><a href="#" class="details_inner_a">전망대&스카이라운지</a></div>
							<div><a href="#" class="details_inner_a">철도,교통패스</a></div>
						</div>
					</details>
				</div>
				<div>
					<details>
						<summary class="">
						<a href="#">USIM/편의서비스</a>
						</summary>
						<div>
							<div><a href="#" class="details_inner_a">전체</a></div>
							<div><a href="#" class="details_inner_a">대여서비스</a></div>
							<div><a href="#" class="details_inner_a">픽업서비스</a></div>
							<div><a href="#" class="details_inner_a">와이파이&SIM카드</a></div>

						</div>
					</details>
				</div>
				<div>
					<details>
						<summary class="">
						<a href="#">맛집/카페/레스토랑</a>
						</summary>
						<div>
							<div><a href="#" class="details_inner_a">전체</a></div>
							<div><a href="#" class="details_inner_a">식사권</a></div>
							<div><a href="#" class="details_inner_a">카페&베이커리</a></div>
						</div>
					</details>
				</div>
				<div>
					<details>
						<summary class="">
						<a href="#">요트/유람선/크루즈</a>
						</summary>
						<div>
							<div><a href="#" class="details_inner_a">전체</a></div>
							<div><a href="#" class="details_inner_a">크루즈</a></div>
						</div>
					</details>
				</div>
				<div style="border-top: 1px solid #999;"></div>
			</div>
		</div>
		<div id="main" class="fr">
			<div id="main_top">
				<div id="main_top_left" class="fl">
					<span>전체</span>
					<span>(57)</span>
				</div>
				
				<div class="dropdown fl">
					<button onclick="myFunction()" class="dropbtn">추천순</button>
					<div id="myDropdown" class="dropdown-content">
						<a href="#">추천순</a>
						<a href="#">인기순</a>
						<a href="#">신규 상품순</a>
						<a href="#">가격 낮은 순</a>
						<a href="#">가격 높은 순</a>
					</div>
				</div>
				<div id="view_button" class="fl">
					<span id="view1" class="fl">
					<img src="" class="view1_img">
					</span>
					<span id="view2" class="fl"></span>
				</div>
			</div>
			<div id="main_content">
				<div id="line">
					<div class="content fl shadow" style="margin-left:0;">
						<a>	
							<!-- 컨텐츠 이미지/설명 -->
							<div><img src="https://static.hanatour.com/product/2022/11/02/23519c860z/small.jpg" class="content_img fl"></div>
							<div class="info fl">
								<div class="content_title truncate">인천국제공항 공항리무진버스 편도 티켓 예약 #서울 시내 주요지역 이용 가능 #즉시사용가능</div>
								<div id="info_price" class="info_price">
									<div class="price">15,500<span>원</span></div>
									<div class="use_when">즉시 사용 가능</div>
								</div>
								<div id="star" class="star_container"> 
									<div>
										<img src="별">
										<span class="review_count">(134)</span>
									</div>
								</div>
								
								<div id="content_bottom">
									<div>
										<span>구매 1천</span>
										<i class="fa-light fa-arrow-up-long" aria-hidden="true"></i>
										<span style="margin-left: 10px;">조회 8만</span>
										<i class="fa-light fa-arrow-up-long" aria-hidden="true"></i>
									</div>
								</div>
							</div>
						</a>
					</div>
					<div class="content fl shadow">
						<a>	
							<!-- 컨텐츠 이미지/설명2 -->
							<div><img src="https://static.hanatour.com/product/2023/09/25/0419bt5gfd/small.jpg" class="content_img fl"></div>
							<div class="info fl">
								<div class="content_title truncate">인천국제공항 공항리무진버스 편도 티켓 예약 #서울 시내 주요지역 이용 가능 #즉시사용가능</div>
								<div id="info_price" class="info_price">
									<div class="price">15,500<span>원</span></div>
									<div class="use_when">즉시 사용 가능</div>
								</div>
								<div id="star" class="star_container"> 
									<div>
										<img src="별">
										<span class="review_count">(134)</span>
									</div>
								</div>
								
								<div id="content_bottom">
									<div>
										<span>구매 1천</span>
										<i class="fa-light fa-arrow-up-long" aria-hidden="true"></i>
										<span style="margin-left: 10px;">조회 8만</span>
										<i class="fa-light fa-arrow-up-long" aria-hidden="true"></i>
									</div>
								</div>
							</div>
						</a>
					</div>
					<div class="content fl shadow" style="margin-right:0;">
						<a>	
							<!-- 컨텐츠 이미지/설명2 -->
							<div><img src="https://static.hanatour.com/product/2024/01/11/0050p5o619/small.jpg" class="content_img fl"></div>
							<div class="info fl">
								<div class="content_title truncate">인천국제공항 공항리무진버스 편도 티켓 예약 #서울 시내 주요지역 이용 가능 #즉시사용가능</div>
								<div id="info_price" class="info_price">
									<div class="price">15,500<span>원</span></div>
									<div class="use_when">즉시 사용 가능</div>
								</div>
								<div id="star" class="star_container"> 
									<div>
										<img src="별">
										<span class="review_count">(134)</span>
									</div>
								</div>
								
								<div id="content_bottom">
									<div>
										<span>구매 1천</span>
										<i class="fa-light fa-arrow-up-long" aria-hidden="true"></i>
										<span style="margin-left: 10px;">조회 8만</span>
										<i class="fa-light fa-arrow-up-long" aria-hidden="true"></i>
									</div>
								</div>
							</div>
						</a>
					</div>
				</div>
				
				
				<!-- line2 -->
				<div id="line">
					<div class="content fl shadow" style="margin-left:0;">
						<a>	
							<!-- 컨텐츠 이미지/설명4 -->
							<div><img src="https://static.hanatour.com/product/2019/09/30/01231ey3ku/small.jpg" class="content_img fl"></div>
							<div class="info fl">
								<div class="content_title truncate">인천국제공항 공항리무진버스 편도 티켓 예약 #서울 시내 주요지역 이용 가능 #즉시사용가능</div>
								<div id="info_price" class="info_price">
									<div class="price">15,500<span>원</span></div>
									<div class="use_when">즉시 사용 가능</div>
								</div>
								<div id="star" class="star_container"> 
									<div>
										<img src="별">
										<span class="review_count">(134)</span>
									</div>
								</div>
								
								<div id="content_bottom">
									<div>
										<span>구매 1천</span>
										<i class="fa-light fa-arrow-up-long" aria-hidden="true"></i>
										<span style="margin-left: 10px;">조회 8만</span>
										<i class="fa-light fa-arrow-up-long" aria-hidden="true"></i>
									</div>
								</div>
							</div>
						</a>
					</div>
					<div class="content fl shadow">
						<a>	
							<!-- 컨텐츠 이미지/설명5 -->
							<div><img src="https://static.hanatour.com/product/2022/11/24/0739a8otv2/small.jpg" class="content_img fl"></div>
							<div class="info fl">
								<div class="content_title truncate">인천국제공항 공항리무진버스 편도 티켓 예약 #서울 시내 주요지역 이용 가능 #즉시사용가능</div>
								<div id="info_price" class="info_price">
									<div class="price">15,500<span>원</span></div>
									<div class="use_when">즉시 사용 가능</div>
								</div>
								<div id="star" class="star_container"> 
									<div>
										<img src="별">
										<span class="review_count">(134)</span>
									</div>
								</div>
								
								<div id="content_bottom">
									<div>
										<span>구매 1천</span>
										<i class="fa-light fa-arrow-up-long" aria-hidden="true"></i>
										<span style="margin-left: 10px;">조회 8만</span>
										<i class="fa-light fa-arrow-up-long" aria-hidden="true"></i>
									</div>
								</div>
							</div>
						</a>
					</div>
					<div class="content fl shadow" style="margin-right:0;">
						<a>	
							<!-- 컨텐츠 이미지/설명6 -->
							<div><img src="https://static.hanatour.com/product/2023/09/25/0242jc6e56/small.jpg" class="content_img fl"></div>
							<div class="info fl">
								<div class="content_title truncate">인천국제공항 공항리무진버스 편도 티켓 예약 #서울 시내 주요지역 이용 가능 #즉시사용가능</div>
								<div id="info_price" class="info_price">
									<div class="price">15,500<span>원</span></div>
									<div class="use_when">즉시 사용 가능</div>
								</div>
								<div id="star" class="star_container"> 
									<div>
										<img src="별">
										<span class="review_count">(134)</span>
									</div>
								</div>
								
								<div id="content_bottom">
									<div>
										<span>구매 1천</span>
										<i class="fa-light fa-arrow-up-long" aria-hidden="true"></i>
										<span style="margin-left: 10px;">조회 8만</span>
										<i class="fa-light fa-arrow-up-long" aria-hidden="true"></i>
									</div>
								</div>
							</div>
						</a>
					</div>
				</div>
	
			</div>
		</div>
	</div>
	<div style="clear:both"> </div>
	
	<footer>

        <div class="footer1 center">
            <div>
                <div class="footer1_left fl">
                    <div>공지</div>
                    <div class="footer1_announcement">
                        <a href="#" class="footer1_active">
                            &lt;하나LIVE&gt; 24년 5월 30일 방송 이벤트 당첨자 안내(사전알림/퀴즈/구매인증)
                        </a>
                        <a href="#">
                            [여행만보] 24년 6월 미션 변동 사항 안내
                        </a>
                        <a href="#">
                            [공지] 24년 6월, 신용카드 ARS/온라인 무이자 할부 혜택 관련 안내 (항공권 제외)
                        </a>
                    </div>
                </div>
                <div class="footer1_center fl">
                    <a href="#">
                        더보기
                    </a>
                </div>
                <div class="footer1_right fr">
                    <div>
                        <a href="#">
                            <img src="../../img/footer/facebook.png" alt="페이스북">
                        </a>
                    </div>
                    <div>
                        <a href="#">
                            <img src="../../img/footer/instagram.png" alt="인스타그램">
                        </a>
                    </div>
                    <div>
                        <a href="#">
                            <img src="../../img/footer/naverblog.png" alt="네이버 블로그">
                        </a>
                    </div>
                    <div >
                        <a href="#">
                            <img src="../../img/footer/kakaoplus.png" alt="카카오 플러스">
                        </a>
                    </div>
                    <div>
                        <a href="#">
                            <img src="../../img/footer/youtube.png" alt="유튜브">
                        </a>
                    </div>
                    <div>
                        <a href="#">
                            <img src="../../img/footer/kakaostory.png" alt="카카오 스토리">
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <!-- footer1 종료 -->
        


        <div class="footer2">
            <div>
                <div class="fl">
                    <div class="footer2_left_top">
                        <div class="fl">
                            <a href="#">회사소개</a>
                        </div>
                        <div class="fl">
                            <a href="#">이용약관</a>
                        </div>
                        <div class="fl">
                            <a href="#">개인정보처리방침</a>
                        </div>
                        <div class="fl">
                            <a href="">여행약관</a>
                        </div>
                        <div class="fl">
                            <a href="#">해외여행자보험</a>
                        </div>
                        <div class="fl">
                            <a href="#">마케팅제휴</a>
                        </div>
                        <div class="fl">
                            <a href="#">공식인증예약센터 검색</a>
                        </div>
                    </div>
                    <div class="footer2_left_bottom">
                        <img src="../../img/footer/footer2_left.png" alt="">
                    </div>
                   <div style="clear: both;"></div>
                </div>
                <div class="footer2_right fr">
                    <div>하나은행 구매안전 서비스</div>
                    <div>
                        고객님은 안전거래를 위해 현금으로 결제시<br/>
                        (주)하나투어에서 가입한 하나은행으로<br/>
                        구매안전서비스를 이용하실 수 있습니다.
                    </div>
                    <div>
                        <a href="#">
                            서비스 가입사실 확인
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <!-- footer2 종료 -->



        <div class="footer3">
            <div>
                <div>
                    ※ 부득이한 사정에 의해 여행일정이 변경되는 경우 사전 동의를 받습니다.
                </div>
                <div>
                    ※ 하나투어는 개별 항공권, 단품 및 일부 여행상품에 대하여 통신판매중개자로서 통신판매의 당사자가 아니며 해당상품의 거래정보 및 거래등에 대해 책임을 지지 않습니다.
                </div>
                <div>
                    COPYRIGHTⓒ HANATOUR SERVICE INC. ALL RIGHTS RESERVED
                </div>
                
            </div>
        </div>
        <!-- footer3 종료 -->

        
        <div class="footer4">
            <div>
                <div class="footer4_left fl">
                    <div class="fl">
                        <div class="fl">
                            <img src="../../img/footer/award-logo-01.png" alt="">
                        </div>
                        <div class="fl">
                            대한민국<br/>100대 브랜드
                        </div>
                        <div style="clear: both;"></div>
                    </div>
                    <div class="fl">
                        <div class="fl">
                            <img src="../../img/footer/award-logo-02-2024.png" alt="">
                        </div>
                        <div class="fl">
                            한국능률협회선정<br/>20년연속(2005~2024)<br/>브랜드파워 1위
                        </div>
                        <div style="clear: both;"></div>
                    </div>
                    <div class="fl">
                        <div class="fl">
                            <img src="../../img/footer/award-logo-03-2024.png" alt="">
                        </div>
                        <div class="fl">
                            브랜드스탁선정<br/>20년연속(2005~2024)<br/>브랜드스타 1위
                        </div>
                        <div style="clear: both;"></div>
                    </div> 
                    <div style="clear: both;"></div>
                </div>
                <!-- footer4_left 종료  -->

                <div class="footer4_center fl">
                   <button>
                        <img src="../../img/footer/ico-arrow-left.png" alt="">
                    </button>
                    <button>
                       <img src="../../img/footer/ico-arrow-right.png" alt="">
                   </button>
                </div>
                <!-- footer4_center 종료 -->
                <div class="footer4_right fl">
                    <div>
                        <img src="../../img/footer/korea_brand_awards.jpg" alt="">
                    </div>
                    <div>
                        <img src="../../img/footer/mark_01.png" alt="">
                    </div>
                    <div>
                        <img src="../../img/footer/mark1_eprivacy.png" alt="">
                    </div>
                    <div>
                        <img src="../../img/footer/mark_03_new.png" alt="">
                    </div>
                    <div>
                        <img src="../../img/footer/ico_isms.png" alt="">
                    </div>
                </div>
                <!-- footer4_right 종료 -->
                <div style="clear: both;"></div>
            </div>
        </div>
        <!-- footer4 종료 -->

    </footer>

</body>
<script src="../../script/header.js"></script>
<script src="../../script/footer.js"></script>
</html>