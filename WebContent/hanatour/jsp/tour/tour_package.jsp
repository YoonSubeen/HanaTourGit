<%@page import="dto.* "%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.PackageDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	PackageDao pdao = new PackageDao();
	ArrayList<PackageTopOneLineInfoDto> ptoliDto =pdao.packageTopOneLineInfo(1);
	ArrayList<String> topImg = pdao.packageTopImg(1);
	ArrayList<String> topTag = pdao.packageTopTag(1);
	ArrayList<PackageTwoFlightInfoDto> twoFlightDto = pdao.packageTwoFlightInfo(1);
	ArrayList<PackageOneFlightInfoDto> oneFlightDto = pdao.packageOneFlightInfo(1);
	ArrayList<PackageReservationInfoDto> packageReservation = pdao.packageReservationInfo(1);
	ArrayList<PackagePriceDto> priceDto = pdao.packagePrice(1);
	ArrayList<PackageInfoDto> packageInfo = pdao.packageInfo(1);
	ArrayList<PackageContainInfoDto> packageContainInfoDto = pdao.packageContainInfo(1);
	ArrayList<PackageReservationNoticeDto> packageReservationNotice = pdao.packageReservationNotice(1);
	ArrayList<PackageMeetingInfoDto> packageMeetingInfoDto = pdao.packageMeetingInfo(1);
	ArrayList<HotelAttractionAttractionDto> hotelAttractionAttraction = pdao.HotelAttractionAttraction(1);
	ArrayList<TabSmallHotelBoxDto> tabSmallHotelBox = pdao.tabSmallHotelBox(1);
	ArrayList<TabHotelInfoDto> tabHotelInfoDto = pdao.tabHotelInfo(1);
%>  
<%
	// 패키지 상단 상품정보  (사진정보 제외)
	PackageTopOneLineInfoDto topdto = ptoliDto.get(0);
	// 항공 출발일 
	PackageTwoFlightInfoDto departureInfoDto = twoFlightDto.get(0);
	// 항공 도착일 
	PackageTwoFlightInfoDto arrivalInfoDto = twoFlightDto.get(1);
	// 패키지 한줄 항공정보 
	PackageOneFlightInfoDto oneFlightInfo = oneFlightDto.get(0);
	// 도시정보와 예약 계산하는 한줄 데이터
	PackageReservationInfoDto reservationInfo = packageReservation.get(0);
	// 패키지의 가격 정보 데이터 한 줄 
	PackagePriceDto packagePrice = priceDto.get(0);
	// 패키지 포함내역 데이터 한 줄 
	PackageContainInfoDto packageContainInfo = packageContainInfoDto.get(0);
	// 패키지 미팅 데이터 한 줄 
	PackageMeetingInfoDto packageMeetingInfo = packageMeetingInfoDto.get(0);
%>  
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="../../css/tour_package.css">
	<link rel="stylesheet" href="../../css/header.css">
	<link rel="stylesheet" href="../../css/footer.css">
	<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
	
</head>
<body>
	<!-- header 시작 -->
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
    <!-- header 종료 -->
    
    <div id="category_body" class="center">
    	<div id="div_country_check">
			<div class="fl"><img src="https://image.hanatour.com/usr/static/img2/nation/JP.gif" alt="국기"/></div>
			<div class="fl"><strong>일본 :</strong> 여행 전 입국 규정을 확인해 주세요</div>
			<div style="clear:both;"></div>
		</div>
		
		<div id="img_price">
			<div class="fl">
				<div id="main_img_slider">
					<div class="main_slider_left"></div>
					<div class="main_slider_right"></div>
					<ul id="main_img_list">
						<%
							for(String dto : topImg) {
						%>
							<li class="fl">
								<img src="<%=dto %>" alt="여행지 사진">
							</li>
						<%
							}
						%>
						<div style="clear:both;"></div>
					</ul>
					
				</div>
				
				<div>
					<div class="fl">
						<div>상품코드<span><strong><%=topdto.getPackageNumber() %></strong></span></div>
					</div>
					<div class="fr">
						<span class="print_img"></span>
						<span class="share_img"></span>
					</div>
					<div style="clear:both;"></div>
				</div>
			</div>
			<div class="fr">
				<div>
					<button type="button" class="fr">여행상품 핵심정보</button>
					<div style="clear:both;"></div>
				</div>
				<div>
					<div class="fl save">세이브</div>
					<div style="clear:both;"></div>
				</div>
				<div>
					<div><strong><%=topdto.getPackageName() %></strong></div>
					<div>
						<span class="i_img fl"></span>
						<div class="fl"><%=topdto.getPackageEx() %></div>
						<div style="clear:both;"></div>
					</div>
				</div>
				<div>
					<div class="fl">
						<%
							for (String dto : topTag) {
						%>
							<span><%=dto%></span>
						<%
							}
						%>
					</div>
					<div class="fr">
						<div class="fl">
							<span class="purple_star_img fl"></span>
							<div class="purple_font fl"><%=topdto.getReviewStar() %></div>
							<div style="clear:both;"></div>
						</div>
						<div class="fl">
							<span class="comment_img fl"></span>
							<div class="fl"><%=topdto.getReviewComment() %></div>
							<div style="clear:both;"></div>
						</div>
						<div style="clear:both;'"></div>
					</div>
					<div style="clear:both;"></div>
				</div>
				<div>
					<div class="fl">
						<div class="calender_img"></div>
						<div><%=topdto.getTravelPeriod() %></div>
					</div>
					<div class="fl">
						<%
							if(topdto.getFlight().equals("T")) {
						%>
								<div class="flight_img"></div>
								<div><%=topdto.getAirline() %></div>
						<%
							} else {
						%>
								<div class="flight_no_img"></div>
								<div>항공없음</div>
						<%
							}
						%>
					</div>
					<div class="fl">
						<%
							if(topdto.getShopping().equals("T")) {
						%>
								<div class="shopping_img"></div>
								<div><%=topdto.getShoppingTimes() %></div>
						<%
							} else {
						%>
								<div class="shopping_no_img"></div>
								<div>쇼핑없음</div>
						<%
							}
						%>
					</div>
					<div class="fl">
						<div class="with_img"></div>
						<div>
							<%
								if(topdto.getGroupTravel().equals("T")) {
							%>
									단체여행
							<%
								} else {
							%>
									우리끼리여행
							<%
								}
							%>
						</div>
					</div>
					<div class="fl">
						<%
							if(topdto.getFreeTour().equals("T")) {
						%>
								<div class="free_schedule_img"></div>
								<div>자유일정포함</div>
						<%
							} else {
						%>
							<div class="free_schedule_img"></div>
							<div>자유일정불포함</div>
						<%
							}
						%>
					</div>
					<div class="fl">
						<%
							if(topdto.getGuide().equals("T")) {
						%>
								<div class="guide_fee_img"></div>
								<div>가이드경비<br/><%=topdto.getGuideFee() %></div>
						<%
							} else {
						%>
								<div class="guide_fee_no_img"></div>
								<div>가이드경비 없음</div>
						<%
							}
						%>
					</div>
					<div class="fl">
						<%
							if(topdto.getOptionalTour().equals("T")) {
						%>
								<div class="optional_tour_img"></div>
								<div>선택관광포함</div>
						<%
							} else {
						%>
								<div class="optional_tour_no_img"></div>
								<div>선택관광없음</div>
						<%
							}
						%>	
						
					</div>
					<div style="clear:both;"></div>
				</div>
				<div>
					<span class="confirmed">출발확정</span>
					<span class="confirmed_not">항공예정</span>
					<span class="confirmed_not">일정예정</span>
					<span class="confirmed_not"> 호텔예정</span>
					<span class="confirmed_not">가격예정</span>
				</div>
				<div >
					<div>
						<div class="fr">성인 1인</div>
					</div>
					<div>
						<!-- 여기 :  숫자 단위 쉼표 하는 방법 -->
						<div class="fr"><span><%=topdto.getAdult() %> </span>원</div>
					</div>
				</div>
			</div>
			<div style="clear:both"></div>
		</div>
		
		<div id="banner1">
			<img class="fl" src="https://image.hanatour.com/usr/static/img/pc/com/safe_fair_payment_banner.png" alt="안심결제">
			<img class="fl" src="https://image.hanatour.com/usr/static/img/pc/com/ccm_banner_02.png" alt="소비자경영">
			<div style="clear:both;"></div>
		</div>
		
		<div id="main_content">
			<div id="main_left" class="fl">
				<div id="import_schedule">
					<div>
						<div class="fl">주요일정</div>
						<div class="fr">
							<button type="button" class="fl">항공여정보기</button>
							<button type="button" class="fl">다른 출발일 선택</button>
							<div style="clear:both;"></div>
						</div>
						<div style=clear:both;></div>
					</div>
					<div>
						<dl>
							<dt>일정</dt>
							
							<dd> 
								<%=oneFlightInfo.getPeriod() %>박 <%=(oneFlightInfo.getPeriod()) +1 %>일  <img src=" <%=oneFlightInfo.getLogo() %> " alt="항공사 로고"/> <%=oneFlightInfo.getName() %>
								<br/>출발 : <%=departureInfoDto.getDepartureDate() %> <span class="right_arrow"></span><%=departureInfoDto.getArrivalDate() %> <span class="blue_font"><%=departureInfoDto.getFlightNumber() %></span>총 <%=departureInfoDto.getPeriod() %> 소요
								<br/>도착 : <%=arrivalInfoDto.getDepartureDate() %><span class="right_arrow"></span><%=arrivalInfoDto.getArrivalDate() %> <span class="blue_font"><%=arrivalInfoDto.getFlightNumber() %></span>총 <%=arrivalInfoDto.getPeriod() %> 소요
							</dd>
						</dl>
						<dl> 
							<dt>여행도시</dt>
							<dd> 
								<%=reservationInfo.getTravelCity() %>
							</dd>
						</dl>
						<dl>
							<dt>예약현황</dt>
							<dd> 
								예약 <%=reservationInfo.getReservationCount() %>명
								<br/>좌석 : <%=reservationInfo.getTotalSeat() %>석(최소출발 : 성인<%=reservationInfo.getMinimumNumber() %>명)
							</dd>
						</dl>
					</div>
				</div>
				<div id="package_price" class="grey_border">
					<div>상품가격</div>
					<table>
						<tr class="grey_background">
							<th class="th_td" >구분</th>
							<th class="th_td">
								성인
								<br/><span class="grey_font"  style="font-size: 12px;">만 12세 이상</span>
							</th>
							<th class="th_td">
								아동
								<br/><span class="grey_font" style="font-size: 12px;">만 12세 미만</span>
							</th>
							<th class="th_td">
								유아
								<br/><span class="grey_font" style="font-size: 12px;">만 2세 미만</span>
							</th>
						</tr>
						<tr>
							<th class="th_td">기본상품</th>
							<td class="th_td"><span class="td_price_size"><strong class="comma"><%=packagePrice.getAdult() %></strong></span>원</td>
							<td class="th_td"><span class="td_price_size"><strong class="comma"><%=packagePrice.getChild() %></strong></span>원</td>
							<td class="th_td"><span class="td_price_size"><strong class="comma"><%=packagePrice.getInfant() %></strong></span>원</td>
						</tr>
					</table>
					<div class="grey_font">- 유류할증료 및 제세공과금은 유가와 환율에 따라 변동될 수 있습니다.</div>
					<div class="grey_font">- 1인 객실 사용시 추가요금 발생됩니다. <br/>- 1인 객실 사용료 : 150,000원</div>
					<img src="https://image.hanatour.com/usr/static/img/pc/com/banner_safe_campaign_bar.png" alt="안심결제 캠페인" />
				</div>
				
				<div id="theme" class="grey_border">
					<div>
						<div class="fl">테마소개</div>
						<div class="fr">#관광+자유</div>
						<div class="theme_banner_img">
							<div class="white_font"><strong>관광+자유</strong></div>
							<div class="white_font">‘랜드마크 관광+반일 이상의 자유일정 포함’ 여행!</div>
							<br/>
							<div class="white_font">핵심 관광지와 더불어 자유일정을 여유롭게 즐기는 시간</div>
						</div>
						<div style="clear:both;"></div>
					</div>
				</div>
				
				<div id="point" class="grey_border">
					<div class="fl">
						<a href="#main_point_detail_part" class="point_explain">
							<button class="fl main_point_icon"></button>
							<div class="fl">핵심포인트</div>
							<div style="clear:both;"></div>
						</a>
						<a href="#main_attraction_detail_part" class="point_explain">
							<button class="fl attraction_icon"></button>
							<div class="fl">관광</div>
							<div style="clear:both;"></div>
						</a>
						<a href="#main_inn_detail_part" class="point_explain">
							<button class="fl inn_icon"></button>
							<div class="fl">호텔</div>
							<div style="clear:both;"></div>
						</a>
						<a href="#main_insurance_detail_part" class="point_explain">
							<button class="fl insurance_icon "></button>
							<div class="fl">보험</div>
							<div style="clear:both;"></div>
						</a>
						<a href="#main_ect_detail_part" class="point_explain">
							<button class="fl ect_icon"></button>
							<div class="fl">기타</div>
							<div style="clear:both;"></div>
						</a>
					</div>
					<div class="fl">
						<%
							for(PackageInfoDto dto : packageInfo) { 
								if(dto.getContain().equals("핵심포인트")) {
						%>
						<div id="main_point_detail_part" class="point_detail_explain">
							<div><strong><%=dto.getBoldText() %></strong></div>
							<br/>
							<div>
								<%=dto.getThinText() %>
							</div>
						</div>
						<%
								}
							}
						%>
						<%
							for(PackageInfoDto dto : packageInfo) {
								if(dto.getContain().equals("관광")) {
						%>
						<div id="main_attraction_detail_part" class="point_detail_explain">
							<div class="grey_dot_border"><strong><%=dto.getBoldText() %></strong></div>
							<br/>
							<div>
								<%=dto.getThinText() %>
							</div>
						</div>
						<%
								}
							}
						%>
						<%
							for(PackageInfoDto dto : packageInfo) {
								if(dto.getContain().equals("호텔")) {
						%>
						<div id="main_inn_detail_part" class="point_detail_explain">
							<div class="grey_dot_border"><strong><%=dto.getBoldText() %></strong></div>
							<br/>
							<div>
								<%=dto.getThinText() %>
							</div>
						</div>
						<%
								}
							}
						%>
						<%
							for(PackageInfoDto dto : packageInfo) {
								if(dto.getContain().equals("보험")) {
						%>
						<div id="main_insurance_detail_part" class="point_detail_explain">
							<div class="grey_dot_border"><strong><%=dto.getBoldText() %></strong></div>
							<br/>
							<div>
								<%=dto.getThinText() %>
							</div>
						</div>
						<%
								}
							}	
						%>
						<%
							for(PackageInfoDto dto : packageInfo) {
								if(dto.getContain().equals("기타")) {
						%>
						<div id="main_ect_detail_part" class="point_detail_explain">
							<div class="grey_dot_border"><strong><%=dto.getBoldText() %></strong></div>
							<br/>
							<div>
								<%=dto.getThinText() %>
							</div>
						</div>
						<%
								}
							}
						%>
					</div>
					<div style="clear:both;"></div>
				</div>
				<div id="banner2">
					<img src="https://image.hanatour.com/usr/manual/update/pc/schedule/1c/010.jpg" alt="banner2">
				</div>
				<div>
					<div>포함/불포함/선택경비 정보</div>
					<div  class="contain_fee_info">
						<div class="fl">
							<div><span class="contain_circle_icon"></span>포함내역</div>
						</div>
						<div class="fl">
							<div >
								<div class="contain_line_height grey_font"><%=packageContainInfo.getContain()%></div>
							</div>
						</div>
						<div style="clear:both;"></div>
					</div>
					
					<div  class="contain_fee_info">
						<div class="fl">
							<div><span class="non_contain_icon"></span>불포함내역</div>
						</div>
						<div class="fl">
							<div>
								<div class="contain_line_height grey_font"><%=packageContainInfo.getNonContain() %></div>
							</div>
						</div>
						<div style="clear:both;"></div>
					</div>
					
					<div  class="contain_fee_info">
						<div class="fl">
							<div><span class="choice_fee_icon"></span>선택경비</div>
						</div>
						<div class="fl">
							<div>
								<div class="contain_line_height grey_font"><%=packageContainInfo.getChoicePrice() %></div>
							</div>
						</div>
						<div style="clear:both;"></div>
					</div>
				</div>
				
				<div id="termsOfUse" class="grey_border">
					<div>
						<div class="fl">상품약관</div>
						<button class="fr" type="button">약관상세보기</button>
						<div style="clear:both;"></div>
					</div>
					<div>
						본 상품의 예약과 취소는 <span class="purple_font"><strong>국외여행 표준약관</strong></span>이 적용됨을 알려드립니다.
						<br/>
						<br/><span><strong>계약금 규정</strong></span>
						<br/><span class="purple_font"><strong>예약일 기준 3일 이내에 1인당 50,000원을 납입하셔야합니다.</strong></span>
						<br/><br/><span><strong>취소료 규정</strong></span>
						<br/>여행 취소시 <span><strong>국외여행표준약관</strong></span> 제 16조 소비자분쟁해결규정에 따라 아래의 비율로 취소료가 부과됩니다. (단, 당사의 귀책사유로 여행출발 취소 경우에도 동일한 규정이 적용됩니다.
					</div>
					<button type="button">더보기<span class="grey_down_img"></span></button>
				</div>
				<!-- 여기 -->
				<div id="reservation_notice" class="grey_border">
					<div class="purple_font">예약시 유의사항</div>
					<% 
						for (PackageReservationNoticeDto dto : packageReservationNotice) { 
					%>
						<div class="reservation_notice_bottom">
							<strong><%=dto.getBoldText() %></strong>
							<%=dto.getThinText() %>
						</div>
					<%
						}
					%>
				</div>
				
				<div id="guide_meeting">
					<div>가이드/인솔자 및 미팅정보</div>
					<div class="guide_leader">
						<div class="fl"><strong>가이드</strong></div>
						<div class="fl">
						<%
							if(packageMeetingInfo.getGuide().equals("T")) {
						%>
								가이드와 미팅이 이루어집니다.
						<%
							} else {
						%>
								가이드가 동행하지 않습니다.
						<%
							}
						%>
						</div>
						<div style="clear:both;"></div>
					</div>
					<div class="guide_leader">
						<div class="fl"><strong>인솔자</strong></div>
						<div class="fl">
						<%
							if(packageMeetingInfo.getLeader().equals("T")) {
						%>
								인솔자와 미팅이 이루어집니다.
						<%
							} else {
						%>
								인솔자가 동행하지 않습니다.
						<%
							}
						%>
						</div>
						<div style="clear:both;"></div>
					</div>
					<div id="guide_meeting_box" class="purple_border">
						<div>
							<div class="fl"><span class="place_dot"></span>미팅정보</div>
							<button class="fr" type="button">미팅장소 보기</button>
							<div style="clear:both;"></div>
						</div>
						<div>
							<div>일시 : <strong><%=packageMeetingInfo.getInfoDate() %></strong></div>
							<div>장소 : <strong><%=packageMeetingInfo.getLocation() %></strong></div>
						</div>
						<div>
							<div class="purple_font"><%=packageMeetingInfo.getPurpleInfo() %></div>
							<br/>
							<div class="grey_font"><%=packageMeetingInfo.getThinInfo() %></div>
						</div>
					</div>
				</div>
				
				<div id="long_content">
					<div></div>
					<div id="long_content_header">
						<div id="travel_trip" class="fl">일정여행</div>
						<div id="hotel_attraction" class="fl">호텔&관광지</div>
						<div id="optional_tour" class="fl">선택관광</div>
						<div id="three_note" class="fl">참고사항</div>
						<div id="aboard_safety" class="fl">해외안전정보</div>
						<div id="travel_review" class="fl">여행후기</div>
						<div style="clear:both;  width : 0; height : 0;"></div>
					</div>
				
					<div id="travel_trip_detail"> <!-- 여행일정 -->
						<div>
							<div class="fl">1일차</div>
							<div class="fl">2일차</div>
							<div class="fl">3일차</div>
							<div class="fl">4일차</div>
							<button class="fr">일정 전체 펼침</button>
							<div style="clear:both;"></div>
						</div>
						<div>
							<div class="purple_font"><span class="purple_i_img"></span>여행일정 변경에 관한 사전 동의안내</div>
							<br/>
							<div class="grey_font">여행일정은 계약체결 시 예상하지 못한 부득이한 사정 등이 발생하는 경우 여행자의 사전동의를 거쳐 변경될 수 있음을 양지하시기 바랍니다.</div>
						</div>
						
						<div class="day_schedule">	<!-- 1일차 -->
							<div>
								<div class="fl white_font" >
									<div>1일차</div>
									<div>07/31(수)</div>
								</div>
								<div class="fl">
								 	<div><strong>도쿄</strong></div>
								 	<div>에어프레미아 항공, 아사쿠사, 나카미세도리, 오다이바, 오다이바 해상공원 & 자유의 여신상, 다이바시티</div>
								 	<div class="fr grey_down_img"></div>
								 	<div style="clear:both;"></div>
								</div>
								<div style="clear:both;"></div>
							</div>
							
							<div> <!-- 접히는 부분 -->
							 	<div class="schedule_flight"> <!-- 항공 -->
							 		<div>
								 		<div>
								 			<img src="https://image.hanatour.com/usr/static/img/airline/YP.png" alt="항공사 로고"/>
								 			<strong>에어프레미아</strong>
								 		</div>
								 		<div class="grey_font">02시간 30분 <span class="blue_font">YP0731</span></div>
								 		<div>
								 			<div class="fl purple_circle_div"></div>
								 			<div class="fr purple_circle_div"></div>
								 			<div style="clear:both;"></div>
								 		</div>
							 		</div>
							 		<div>
							 			<div>
							 				<div class="fl"><strong>08:50</strong></div>
							 				<div class="fr"><strong>11:20</strong></div>
							 				<div style="clear:both;"></div>
							 			</div>
							 			<div>
							 				<div class="fl grey_font">2024.07.31(수)</div>
							 				<div class="fr grey_font">2024.07.31(수)</div>
							 				<div style="clear:both;"></div>
							 			</div>
							 			<div>
							 				<div class="fl grey_font">서울 ICN 출발</div>
							 				<div class="fr grey_font">도쿄 NRT 도착</div>
							 				<div style="clear:both;"></div>
							 			</div>
							 		</div>
							 	</div>
							 	
							 	<div id="grey_left"> <!-- 옆에 회색 줄 생기는 부분 -->
							 		<div class="immigration_procedure_box" > <!-- 방문객 출입국 절차  -->
							 			<div><strong>일본 방문객 출입국 절차 안내</strong></div>
							 			<div>
							 				<div>
							 					<div class="fl"><strong>일본 방문객 출입국 절차 안내</strong></div>
							 					<div class="fr purple_font">상세보기</div>
							 					<div style="clear:both;"></div>
							 				</div>
							 				<div class="grey_font">일본 여행 필요서류/준비사항</div>
							 				<br/>
							 				<div class="white_font"><strong>일본 입국 시 준비사항</strong></div>
							 				<div>2023.04.29일 0시~입국부터 코로나 관련 서류를 제출할 필요가 없습니다.</div>
							 				<br/>
							 				<div class="purple_font"><strong>◎일본 입국 패스트트랙(Fast Track)</strong></div>
							 				<div>[Visit Japan Web 등록] https://www.vjw.digital.go.jp/main/#/vjwplo001</div>
							 				<div>비짓 재팬웹의 경우 필수 등록 사항은 아니며, 입국신고서 및 세관신고서는 지류 작성으로 대체 가능합니다.</div>
							 			</div>
							 			<div><div class="immigration_procedure_box_dot"></div></div>
							 		</div>
							 		
							 		<div class="flight_info_box"> <!-- 항공 정보 -->
							 			<div>
						 					<div class="fl"><strong>에어프레미아 항공</strong></div>
						 					<div class="fr purple_font">상세보기</div>
						 					<div style="clear:both;"></div>
						 				</div>
						 				<div class="grey_font">국내 유일의 중장거리 전문 HSC 하이브리드 서비스 항공사</div>
						 				<div>
						 					<img class="fl" src="https://image.hanatour.com/usr/cms/resize/400_0/2021/12/02/10000/aa06f5d3-f297-43ba-b722-1e58632b0e08.jpg" alt="항공사진1"/>
						 					<img class="fl" src="https://image.hanatour.com/usr/cms/resize/400_0/2023/03/24/10000/013b8427-b863-48e3-b727-5fdc612a77fd.png" alt="항공사진2"/>
						 					<img class="fl" src="https://image.hanatour.com/usr/cms/resize/400_0/2023/03/24/10000/cde4e7db-e22e-493b-aff3-e4dce7f03a6e.png" alt="항공사진3"/>
						 					<div style="clear:both;"></div>
						 				</div>
						 				<div>- 신규 도입 최신 항공기로 보잉 787-900 드림라이너 기종의 중형기를 이용합니다.</div>
						 				<div>- 좌석은 프리미엄 이코노미와 이코노미로 구성되어 있습니다.</div>
						 				<div><div class="flight_info_box_dot"></div></div>
							 		</div>
							 		
							 		<div class="bold_text"> <!-- 굵은 글씨 -->
							 			<div><strong>■ 나리타 공항에서 [하나투어] 피켓을 든 현지 가이드와 첫만남</strong></div>
							 			<div>- 나리타 공항 도착 후 현지 가이드와 미팅합니다.</div>
							 			<div>가이드 : 연락처 :</div>
							 			<br/>
							 			<div>①수하물을 찾으신 후, 입국장을 빠져 나오셔서 오른쪽 편의점 앞 대기 의자 쪽으로 나오세요.</div>
							 			<div>② 비슷한 시간대의 항공을 이용하는 하나투어 고객이 합류될 수 있는 단체여행입니다.</div>
							 			<div>③ 약 30분~1시간의 대기시간이 발생할 수 있습니다.</div>
							 			<div class="bold_text_dot"></div>
							 		</div>
							 		
							 		<div class="thin_text" > <!-- 얇은 글씨 -->
							 			<div>도쿄로 이동</div>
							 			<div class="thin_text_dot"></div>
							 		</div>
							 		
							 		<div class="region"> <!-- 지역 -->
							 			<div><strong>도쿄</strong></div>
							 			<div class="region_white_dot"><span class="purple_dot_img"></span></div>
							 		</div>
							 		
							 		<div class="city_info_box"> <!-- 도시 -->
							 			<div><strong>도쿄(Tokyo / 東京)</strong></div>
							 			<div class="grey_font">초고층 빌딩과 화려한 네온 조명, 잠들지 않는 대도시에 공존하는 과거와 미래, 도쿄(Tokyo / 東京)</div>
							 			<img src="https://image.hanatour.com/usr/cms/resize/800_0/2021/09/01/10000/1db600f9-a998-4bf1-902d-8aed33fa0065.jpg" alt="도시 사진"/>
							 			<div><div class="city_info_box_dot"></div></div>
							 		</div>
							 		
							 		<div class="thin_text" > <!-- 얇은 글씨 -->
							 			<div>중식 (불포함)</div>
							 			<div class="thin_text_dot"></div>
							 		</div>
							 		
							 		<div class="many_attraction_box"> <!-- 관광지 여러개 상자 -->
							 			<div><strong>아사쿠사 핵심관광</strong></div>
							 			<div>
							 				<div><strong>아사쿠사</strong></div>
							 				<div class="grey_font">도쿄의 오래된 사찰인 센소지와 나카미세 도오리가 있는 아사쿠사</div>
							 				<img src="https://image.hanatour.com/usr/cms/resize/800_0/2021/08/30/10000/1f4d27fb-e055-4edf-87d9-696cbff004d7.jpg" alt="관광지 사진"/>
							 				<div class="many_in_attraction dotted_border">
							 					<div>
								 					<div class="fl"><strong>아사쿠사</strong></div>
								 					<div class="fr purple_font">상세보기</div>
								 					<div style="clear:both;"></div>
								 				</div>
							 					<div class="grey_font">도쿄의 오래된 사찰인 센소지와 나카미세 도오리가 있는 아사쿠사</div>
							 					<div class="grey_font">Asakusa</div>
							 					<div>
							 						<img class="fl" src="https://image.hanatour.com/usr/cms/resize/400_0/2021/08/30/10000/114f16af-f107-42df-a026-dd688e554e95.jpg" alt="사진1 "/>
							 						<img class="fl" src="https://image.hanatour.com/usr/cms/resize/400_0/2021/08/30/10000/276227d9-0a76-4f0c-b1df-63ab6abd55bf.jpg" alt="사진2 "/>
							 						<img class="fl" src="https://image.hanatour.com/usr/cms/resize/400_0/2012/12/26/10000/d041ccf4-d49d-422d-8e75-a84435cb8fc1.jpg" alt="사진3 "/>
							 						<div style="clear:both;"></div>
							 					</div>
							 					<div>서울에서 인사동을 가는 것처럼 도쿄에서는 아사쿠사를 꼭 들러봐야 합니다. 아사쿠사는 에도시대의 모습을 간직한 전통 거리로 도쿄에서 가장 오래된 사찰인 아사쿠사 센소지(浅草寺) 및 가미나리몬(雷門)이 있습니다. 가미나리몬 뒤로는, 나카미세 도오리라는 약 400m의 전통 상가 거리가 있습니다. 전통 과자 및 공예품 등 여러 전통적인 물건을 판매하고 있으며, 약 100여 개의 점포가 위치하여 일본의 정서를 자아냅니다.
							 					</div>
							 				</div>
							 				
							 				<div class="many_in_attraction dotted_border">
							 					<div>
								 					<div class="fl"><strong>나카미세도리</strong></div>
								 					<div class="fr purple_font">상세보기</div>
								 					<div style="clear:both;"></div>
								 				</div>
							 					<div class="grey_font">에도시대부터 번영했던 가미나리몬에서 호조몬에 이르는 상점가</div>
							 					<div class="grey_font">Nakamisedori</div>
							 					<div>
							 						<img class="fl" src="https://image.hanatour.com/usr/cms/resize/400_0/2021/08/24/10000/4f94aaa3-4231-4853-9e28-549293b93305.jpg" alt="사진1 "/>
							 						<img class="fl" src="https://image.hanatour.com/usr/cms/resize/400_0/2021/08/24/10000/bcb95c51-5b83-48c9-ac2b-ea8c2c41afd0.jpg" alt="사진2 "/>
							 						<img class="fl" src="https://image.hanatour.com/usr/cms/resize/400_0/2021/08/24/10000/33ef6b34-4120-4a70-b39a-1edde71e59ec.jpg" alt="사진3 "/>
							 						<div style="clear:both;"></div>
							 					</div>
							 					<div>약 300m에 이르는 거리의 양쪽에는 오래전부터 변함없이 그 자리를 지키고 있는 약 90여 개의 일본 전통 가게들 줄지어 있습니다. 도중 다코야키나 센베이 등 간식거리를 파는 곳이 곳곳에 자리를 잡고 있어 군것질하며 천천히 구경할 수 있고 센소지 절을 나서면 우측에 전시된 센소지 유래 관련 그림들을 감상할 수 있습니다. 일본 전통 기념품과 토산품을 비롯해 연극이나 무용에 쓰이는 소품과 특이한 의상 등 재미있는 물건이 많아 현지인들도 관광객들도 그 매력에 푹 빠져드는 곳입니다.
							 					</div>
							 				</div>
							 				<div><div class="many_attraction_box_dot"></div></div>
							 			</div>
							 		</div>
							 		
							 		<div class="bold_text"> <!-- 굵은 글씨 -->
							 			<div><strong>오다이바로 이동</strong></div>
							 			<div class="bold_text_dot"></div>
							 		</div>
							 		
							 		<div class="many_attraction_box"> <!-- 관광지 여러개 상자 -->
							 			<div><strong>도쿄의 인기스팟 리조트식 타운 오다이바</strong></div>
							 			<div>
							 				<div><strong>오다이바</strong></div>
							 				<div class="grey_font">도쿄에서 가장 인기있는 리조트식 타운</div>
							 				<img src="https://image.hanatour.com/usr/cms/resize/800_0/2022/04/18/10000/3896f7bb-85a3-4f15-a47e-f5a16dc5503d.jpg" alt="관광지 사진"/>
							 				<div class="many_in_attraction dotted_border">
							 					<div>
								 					<div class="fl"><strong>오다이바</strong></div>
								 					<div class="fr purple_font">상세보기</div>
								 					<div style="clear:both;"></div>
								 				</div>
							 					<div class="grey_font">도쿄에서 가장 인기있는 리조트식 타운</div>
							 					<div class="grey_font">Odaiba</div>
							 					<div>
							 						<img class="fl" src="https://image.hanatour.com/usr/cms/resize/400_0/2018/06/05/10000/921641f0-231f-4609-bc48-c13b4d379ee0.jpg" alt="사진1 "/>
							 						<img class="fl" src="https://image.hanatour.com/usr/cms/resize/400_0/2018/06/05/10000/2e2d6f75-22f1-470f-89db-c3684622167c.jpg" alt="사진2 "/>
							 						<img class="fl" src="https://image.hanatour.com/usr/cms/resize/400_0/2018/06/05/10000/1e1f9626-199f-4e7e-aefd-107d579722d2.jpg" alt="사진3 "/>
							 						<div style="clear:both;"></div>
							 					</div>
							 					<div>오다이바(お台場)는 도쿄베이 지역에 지어진 리조트 식 타운으로, 최신식 쇼핑타운과 어뮤즈먼트, 호텔, 방송국과 박람회장 등 다채로운 시설이 갖춰진 도쿄에서 가장 인기 있는 지역입니다. 다양한 쇼핑센터와 볼거리가 있으며, 도쿄 최대 박람회장인 빅사이트 등 다양한 시설이 있습니다. 이중 유니콘 건담 동상, 뉴욕의 자유의 여신상을 그대로 조각해 놓은 동상, 레인보우 브리지가 보이는 산책로 등은 오다이바를 찾는 많은 사람이 손꼽는 인기 사진 스팟입니다. 일본인들은 물론 많은 외국인 관광객들이 쇼핑과 어뮤즈먼트를 즐기기 위해 찾고 있습니다.</div>
							 				</div>
							 				
							 				<div class="many_in_attraction dotted_border">
							 					<div>
								 					<div class="fl"><strong>오다이바 해상공원 & 자유의 여신상</strong></div>
								 					<div class="fr purple_font">상세보기</div>
								 					<div style="clear:both;"></div>
								 				</div>
							 					<div class="grey_font">오다이바 해상공원에서 관람하실 수 있는 자유의 여신상</div>
							 					<div class="grey_font"></div>
							 					<div>
							 						<img class="fl" src="https://image.hanatour.com/usr/cms/resize/400_0/2013/08/14/10000/ba2ac374-9a45-4d22-831a-b759e5986ca6.jpg" alt="사진1 "/>
							 						<img class="fl" src="https://image.hanatour.com/usr/cms/resize/400_0/2019/07/25/10000/057dd2a1-c25b-4e0e-858c-e1f2325ee135.jpg" alt="사진2 "/>
							 						<img class="fl" src="https://image.hanatour.com/usr/cms/resize/400_0/2019/07/25/10000/f9e635f8-6039-42e6-9be9-40471de20467.jpg" alt="사진3"/>
							 						<div style="clear:both;"></div>
							 					</div>
							 					<div>도쿄만과 레인보우 브리지를 한눈에 조망할 수 있는 오다이바 해상공원에서 도심을 벗어나 탁 트인 조망을 감상해 보세요. 맑은 날에는 오다이바 자유의 여신상이 있는 곳에서 레인보우 브리지를 배경으로 기념사진을 남겨보세요.
							 					</div>
							 				</div>
							 				
							 				<div class="many_in_attraction dotted_border">
							 					<div>
								 					<div class="fl"><strong>다이바시티</strong></div>
								 					<div class="fr purple_font">상세보기</div>
								 					<div style="clear:both;"></div>
								 				</div>
							 					<div class="grey_font">극장형 도시공간 컨셉의 오다이바 대표 복합상업시설</div>
							 					<div class="grey_font">Diver City Tokyo Plaza</div>
							 					<div>
							 						<img class="fl" src="https://image.hanatour.com/usr/cms/resize/400_0/2021/05/10/10000/26df9cba-9320-4a74-8f7a-3172be2f2a80.JPG" alt="사진1 "/>
							 						<img class="fl" src="https://image.hanatour.com/usr/cms/resize/400_0/2012/07/05/10000/a7fdcb69-4dab-495f-a47b-72ae6792ff75.jpg" alt="사진2 "/>
							 						<img class="fl" src="https://image.hanatour.com/usr/cms/resize/400_0/2017/03/02/10000/79b25026-64ed-4120-87d6-aa8dd4184911.jpg" alt="사진3"/>
							 						<div style="clear:both;"></div>
							 					</div>
							 					<div>﻿2012년 4월 오픈한 다이버 시티 도쿄 플라자는 오다이바의 대표적인 복합 상업 시설입니다. 극장형 도시 공간을 콘셉트로 만들어졌으며, 만남의 장소이자 데이트 코스로 사랑받고 있습니다. 해외 브랜드와 다양한 캐주얼 브랜드가 입점되어 있으며, 약 700석 규모의 푸드 코드 '도쿄 구루메 스타디움'도 유명합니다.</div>
							 				</div>
							 				<div><div class="many_attraction_box_dot"></div></div>
							 			</div>
							 		</div>
							 		
							 		<div class="thin_text" > <!-- 얇은 글씨 -->
							 			<div>석식 (불포함, 다이바시티 자유식)</div>
							 			<div class="thin_text_dot"></div>
							 		</div>
							 		
							 		<div class="food_box"> <!-- 음식 상자 -->
							 			<div>
						 					<div class="fl"><strong>다이바 시티에서 입맛대로 한 끼</strong></div>
						 					<div class="fr purple_font">상세보기</div>
						 					<div style="clear:both;"></div>
						 				</div>
						 				<div class="grey_font"></div>
						 				<div>
						 					<img src="https://image.hanatour.com/usr/cms/resize/400_0/2021/07/15/10000/7cc67dd2-a187-48ed-a8e9-b9711842d1ee.png" alt="사진1"/>
						 					<img src="https://image.hanatour.com/usr/cms/resize/400_0/2021/07/15/10000/e3234548-0d85-4f29-9a3d-c95913844e97.png" alt="사진2"/>
						 					<img src="https://image.hanatour.com/usr/cms/resize/400_0/2021/07/15/10000/7d41f852-8322-40ab-92dc-15eeaab3ac0e.png" alt="사진3"/>
						 				</div>
						 				<div>오다이바에 위치한 복합 쇼핑몰 다이바 시티에는 쇼핑은 물론 28개의 맛집이 기다리고 있습니다. 특히 다양한 메뉴를 합리적인 가격으로 즐길 수 있어, 맛있는 한 끼를 찾는 분들께 적합한 장소입니다.
						 				</div>
						 				<div><div class="food_box_dot"></div></div>
							 		</div>
							 		
							 		<div class="bold_text"> <!-- 굵은 글씨 -->
							 			<div><strong>호텔로 이동</strong></div>
							 			<div class="bold_text_dot"></div>
							 		</div>
							 		
							 		<div class="inn_box"> <!-- 호텔소개 -->
							 			<div><strong>Candeo Hotels Ueno Park</strong></div>
							 			<div class="grey_font">칸데오 호텔 우에노코엔</div>
							 			<div>
							 				<img src="https://image.hanatour.com/usr/cms/resize/400_0/2023/07/19/10000/5f20cf8c-ec66-465c-a685-028d616f8e17.png" alt="호텔사진1"/>
							 				<img src="https://image.hanatour.com/usr/cms/resize/400_0/2023/07/19/10000/991b2d4f-da93-4bbb-bcdb-fb2db324bb75.jpg" alt="호텔사진2"/>
							 				<img src="https://image.hanatour.com/usr/cms/resize/400_0/2023/07/19/10000/095d130e-311a-4977-ad80-a442890afb64.jpeg" alt="호텔사진3"/>
							 			</div>
							 			<div><strong>호텔소개</strong></div>
							 			<div>칸데오 우에노는 신주쿠, 도쿄타워, 이케부쿠로, 아ss키하바라 등 주요 관광 명소로의 이동이 편리한 시내 호텔입니다. 조식은 일식, 양식을 다양하게 즐기실 수 있는 구성으로 이루어져 있고 호텔에서 도보로 이동 가능한 곳에는 도쿄를 대표하는 다양한 미술관, 박물관이 위치해있는 우에노 공원이 있어 산책하기 좋은 위치를 자랑합니다.</div>
							 			<div>객실타입 : 헐리우드 트윈 (16m²)</div>
							 			<div>기타정보 : 무료 와이파이(객실/로비)</div>
							 			<div class="grey_font">※3인 숙박이 불가하여, 3인 고객의 경우 2인실과 1인실 이용 및 1인객실 사용료가 부과됩니다.</div>
							 			<div></div>
							 		</div>
							 		
							 		<div class = "inn_icon_info"> <!-- 호텔 아이콘 상자 -->
							 			<div class="fl">
							 				<div><span class="hotel_icon"></span><strong>호텔</strong></div>
							 			</div>
							 			<div class="fl">
							 				<div><strong>총 <span class="purple_font">1개</span>의 <span class="purple_font">예정호텔</span>이 있습니다.</strong>출발 3일 전까지 확정되어 일정표에서 확인하실 수 있습니다.</div>
							 				<div class="grey_font">1일전 카카오 알림톡으로도 알려드립니다.</div>
							 				
							 				<div class="inn_candidate">
							 					<div class="fl">예정</div>
							 					<div class="fl">
							 						<div><strong>칸데오 호텔 우에노코엔</strong> <span class="yellow_star"></span></div>
							 						<div>Candeo Hotels Ueno Park <span>상세보기</span></div>
							 					</div>
							 					<div style="clear:both;"></div>
							 				</div>
							 				
							 				<div class="inn_candidate">
							 					<div class="fl">예정</div>
							 					<div class="fl">
							 						<div><strong>칸데오 호텔 우에노코엔</strong> <span class="yellow_star"></span></div>
							 						<div>Candeo Hotels Ueno Park <span>상세보기</span></div>
							 					</div>
							 					<div style="clear:both;"></div>
							 				</div>
							 			</div>
							 			<div style="clear:both;"></div>
							 		</div>
							 		
							 		<div class="meal"> <!-- 식사 아이콘 줄 -->
							 			<div class="fl"><span class="fork_icon"></span><strong>식사</strong></div>
							 			<div class="fl">
							 				<div class="fl">[조식]</div>
							 				<div class="meal_dot fl"></div>
							 				<div class="fl">[중식] 불포함 </div>
							 				<div class="meal_dot fl"></div>
							 				<div class="fl">[석식] 불포함 다이바시티 자유식 </div>
							 				<div style="clear:both;"></div>
							 			</div>
							 			<div style="clear:both;"></div>
							 		</div>
							 	</div> <!-- 왼쪽 회색줄 끝나는 부분 -->
							</div> <!-- 접히는 부분 종료 -->
						</div> <!-- 1일차 종료 -->
						
						
						<div class="day_schedule">	<!-- 2일차 -->
							<div>
								<div class="fl white_font" >
									<div>2일차</div>
									<div>08/01(목)</div>
								</div>
								<div class="fl">
								 	<div><strong>도쿄</strong></div>
								 	<div>도쿄타워, 시부야 스카이 전망대</div>
								 	<div class="fr grey_down_img"></div>
								 	<div style="clear:both;"></div>
								</div>
								<div style="clear:both;"></div>
							</div>
						</div>
						
						
						<div class="day_schedule">	<!-- 3일차 -->
							<div>
								<div class="fl white_font" >
									<div>3일차</div>
									<div>08/02(금)</div>
								</div>
								<div class="fl">
								 	<div><strong>도쿄</strong></div>
								 	<div>도쿄타워, 시부야 스카이 전망대</div>
								 	<div class="fr grey_down_img"></div>
								 	<div style="clear:both;"></div>
								</div>
								<div style="clear:both;"></div>
							</div>
						</div>
						
						
						<div class="day_schedule">	<!-- 4일차 -->
							<div>
								<div class="fl white_font" >
									<div>4일차</div>
									<div>08/03(토)</div>
								</div>
								<div class="fl">
								 	<div><strong>도쿄</strong></div>
								 	<div>상세내용을 확인해보세요</div>
								 	<div class="fr grey_down_img"></div>
								 	<div style="clear:both;"></div>
								</div>
								<div style="clear:both;"></div>
							</div>
						</div>
						
						
					</div> <!-- 여행일정 종료 -->
					
					
					<div id="hotel_attraction_detail"> <!-- 호텔&관광지 시작 -->
						<div>
							<div id="hotel_detail" class="fl">호텔정보</div>
							<div id="attraction_detail"class="fl">관광지정보</div>
							<div style="clear:both;"></div>
						</div>
						<div id="hotel_detail_info">
							<div>
								<div class="purple_font"><span class="purple_i_img"></span>예약 시 유의사항</div>
								<div class="grey_font">- 현재 국제적으로 통용되는 호텔 등급의 표기 기준은 없으며 일부 국가에서는 자국의 기준에 따라 등급표기를 하는 경우가 있습니다. </div>
								<div class="grey_font">- 당사 일정표 및 호텔정보에 표기되는 호텔의 등급표기는 현지 호텔측으로부터 받은 등급 기준을 반영하여 정한 것으로 국제적으로 통용되는 등급은 아니며, 고객님의 선택의 편의를 도모하기 위함임을 양해바랍니다. </div>
								<div class="grey_font">- 본 정보는 호텔에 대한 전반적인 안내를 위한 것이며, 실제로 사용하시는 시설과는 이미지가 다를 수 있습니다. </div>
							</div>
							<div>
								<%
									for(TabSmallHotelBoxDto dto : tabSmallHotelBox) {
								%>
									<div class="hotel_check_box fl"> <!-- 호텔 이름 -->
										<div>
											<div class="fl">예정</div>
											<div class="fl"><%=dto.getLocation() %></div>
											<div style="clear:both;"></div>
										</div>
										<div><%=dto.getInnKor() %></div>
									</div>
								<%
									}
								%>
								<div style="clear:both;"></div>
							</div>
							<%
								for (TabHotelInfoDto dto : tabHotelInfoDto) {
							%>
								<div class="hotel_total_info">
									<div class="hotel_check_box_detail"> <!-- 호텔정보 -->
										<div>
											<div class="fl"><img src="<%=dto.getImgUrl() %>" alt="호텔사진" /></div>
											<div class="fl">
												<div><strong><%=dto.getInnKor() %></strong></div>
												<% if(dto.getInnEng()!=null) { %>
													<div class="grey_font"><%=dto.getInnEng() %></div>
												<% } %>
											</div>
											<div style="clear:both;"></div>
										</div>
										
										<div>
											<div class="fl">
												<div class="front_desk_icon"></div>
												<div>24시간 프런트 데스크</div>
											</div>
											<div class="fl">
												<div class="laundary_icon"></div>
												<div>세탁시설</div>
											</div>
											<div class="fl">
												<div class="laundary_icon"></div>
												<div>세탁서비스</div>
											</div>
											<div class="fl">
												<div class="free_wifi_icon"></div>
												<div>Wi-Fi(무료)</div>
											</div>
											<div style="clear:both;"></div>
										</div>
										
										<div class="hotel_table">
											<div>기본정보</div>
											<table>
												<tr>
													<th >도시</th>
													<% if(dto.getLocation()!= null) { %>
														<td><%=dto.getLocation() %></td>
													<% } else { %>
														<td>-</td>
													<% } %>
													<th>주소</th>
													<% if(dto.getAddress()!=null) { %>	
														<td><%=dto.getAddress() %></td>
													<% } else { %>
														<td>-</td>
													<% } %>
												</tr>
												<tr>
													<th>연락처</th>
													<% if(dto.getPhone()!=null) { %>
														<td><%=dto.getPhone() %></td>
													<% } else { %>
														<td>-</td>
													<% } %>
													<th>홈페이지</th>
													<% if(dto.getHomepageUrl()!=null) { %>
														<td><%=dto.getHomepageUrl() %></td>
													<% } else { %>
														<td>-</td>
													<% } %>
												</tr>
												<tr>
													<th>층수 / 객실수</th>
													<% if(dto.getFloors()!= null && dto.getRoomNum()!=null) { %>
														<td><%=dto.getFloors() %> 층 / <%=dto.getRoomNum() %> 객실</td>
													<% } else { %>
														<td>-층 / -객실</td>
													<% } %>
													<th>체크인/체크아웃</th>
													<% if(dto.getCheckInCheckOut()!=null) { %>
														<td><%=dto.getCheckInCheckOut() %></td>
													<% } else { %>
														<td>-</td>
													<% } %>
												</tr>
												<tr>
													<th>위치</th>
													<% if(dto.getFamousSpot()!=null) { %>
														<td colspan="3"><%=dto.getFamousSpot() %></td>
													<% } else { %>
														<td>-</td>
													<% } %>
												</tr>
											</table>
											<div>부대시설</div>
											<table class="hotel_table">
												<tr>
													<th>부대시설</th>
													<td>
														- 레스토랑
														<br/>- 자동 판매기
														<br/>- 코인 세탁기
														<br/>- 컴퓨터 코너
														<br/>- 장애인용 시설
														<br/>- 커피숍
														<br/>- 수화물 보관소
													</td>
													<th>객실시설</th>
													<td>
														<br/>- TV
														<br/>- 전화기
														<br/>- 에어컨
														<br/>- 헤어 드라이어
														<br/>- 냉장고
													</td>
												</tr>
											</table>
										</div>
									</div>
								</div>
							<%
								}
							%>
						</div>
						
						<div id="attraction_detail_info">
							<%
								for(int i=1; i<=4; i++) {
							%>
							<div><strong><%=i %>일차</strong> <span class="grey_font">2024.08.01(목)</span></div>
							<%
								}
							%>	
							<!-- ★질문 일차에 맞는 관광지 정보넣어주는 것과 일차기 증가하는데 문자열로 받아서 연산자 사용의 불가능. 하지만 요일까지 나와야 하는데 어쩔까요? -->
								<%
								for (HotelAttractionAttractionDto dto : hotelAttractionAttraction) {
								
								%>
								<div class="attraction_days">
									<img class="fl" src="<%=dto.getImgUrl() %>" alt="풍경사진"/>
									<div class="fl">
										<div><strong><%=dto.getAttractionKor() %></strong></div>
										<div><%=dto.getDetailedEx() %> </div>
										<div class="purple_font">자세히보기</div>
									</div>
									<div style="clear:both;"></div>
								</div>
							<%
								}
							%>
							<!-- 
							<div class="attraction_days">
								<img class="fl" src="https://image.hanatour.com/usr/cms/resize/400_0/2019/07/25/10000/f9e635f8-6039-42e6-9be9-40471de20467.jpg" alt="풍경사진"/>
								<div class="fl">
									<div><strong>오다이바 해상공원 & 자유의 여신상</strong></div>
									<div>도쿄만과 레인보우 브리지를 한눈에 조망할 수 있는 오다이바 해상공원에서 도심을 벗어나 탁 트인 조망을 감상해 보세요. 맑은 날에는 오다이바 자유의 여신상이 있는 곳에서 레인보우 브리지를 배경으로 기념사진을 남겨보세요.</div>
									<div class="purple_font">자세히보기</div>
								</div>
								<div style="clear:both;"></div>
							</div>
							
							<div class="attraction_days">
								<img class="fl" src="https://image.hanatour.com/usr/cms/resize/400_0/2012/07/05/10000/a7fdcb69-4dab-495f-a47b-72ae6792ff75.jpg" alt="풍경사진"/>
								<div class="fl">
									<div><strong>다이바시티</strong></div>
									<div>﻿2012년 4월 오픈한 다이버 시티 도쿄 플라자는 오다이바의 대표적인 복합 상업 시설입니다. 극장형 도시 공간을 콘셉트로 만들어졌으며, 만남의 장소이자 데이트 코스로 사랑받고 있습니다. 해외 브랜드와 다양한 캐주얼 브랜드가 입점되어 있으며, 약 700석 규모의 푸드 코드 '도쿄 구루메 스타디움'도 유명합니다.</div>
									<div class="purple_font">자세히보기</div>
								</div>
								<div style="clear:both;"></div>
							</div>
							
							<div class="attraction_days">
								<img class="fl" src="https://image.hanatour.com/usr/cms/resize/400_0/2019/12/16/10000/a1945152-8fb3-41b7-86d6-60deaf0cc0d1.jpg" alt="풍경사진"/>
								<div class="fl">
									<div><strong>도쿄(Tokyo / 東京)</strong></div>
									<div>일본 3대도시인 동경, 오사카, 나고야 중 인구별 최대인 동경은 행정구역상 23특별구 27시(市),5정(町),8촌(村)으로 나뉘며, 인구는 1,1821만명으로 도(都)의 인구에 있어서도 세계 1위이고, 인구밀도는 1㎦당 5,482명으로 인구밀도 최저인 훗카이도(73명)의 70배를 넘는다.이러한 동경의 인구과밀화를 해결하고자 수도권 계획의 일환으로 동경 인근지역에 신도시가 들어서 중,고층 주민들의 공동주택단지가 세워졌고 근접한 곳에 나리타 신동경 국제공항이 들어서있다. 역사적으로 볼때 이미 1868년 메이지유신으로 265년에 걸친 도쿠가와 막부가 붕괴되고 권력을 회복한 천왕이 교토에서 에도로 옮겨와 도쿄로 개명하여 일본의 중심이 되기 시작했다. 메이지 시대에 이르러 서양문물을 받아들인 도쿄는 긴자거리서부터 서양문화가 스며들기시작하며 많은 문화의 변화가 일어났고 이후 지금에 이르기까지 동경은 일본의 정치, 경제, 행정, 교육, 문화의 중심지이며 세계 경제의 중심도시로 발전해왔다. 뿐만아니라 이런 높은 현대적인 요소들 사이에서도 사라지지 않은 견고한 전통적 가치관과 믿음처럼 옛 신사가 고고한 자태를 지키고 있다. 신록이 우거진 고전적인 풍경속에 그림같이 자리잡은 정자와 찻집 등과 레게바나 디스코텍 같은 현대적 오락과 시설의 만남, 현대 일본의 모습과 고전일본의 모습, 그들의 생활양식까지 단기간에 체험할 수 있는, 일본의 모든것이 집약되어 있는 도시이다.</div>
									<div class="purple_font">자세히보기</div>
								</div>
								<div style="clear:both;"></div>
							</div>
							
							<div class="attraction_days">
								<img class="fl" src="https://image.hanatour.com/usr/cms/resize/400_0/2012/12/26/10000/486a6b8a-c7e4-43f8-962c-744341504306.jpg" alt="풍경사진"/>
								<div class="fl">
									<div><strong>아사쿠사</strong></div>
									<div>서울에서 인사동을 가는 것처럼 도쿄에서는 아사쿠사를 꼭 들러봐야 합니다. 아사쿠사는 에도시대의 모습을 간직한 전통 거리로 도쿄에서 가장 오래된 사찰인 아사쿠사 센소지(浅草寺) 및 가미나리몬(雷門)이 있습니다. 가미나리몬 뒤로는, 나카미세 도오리라는 약 400m의 전통 상가 거리가 있습니다. 전통 과자 및 공예품 등 여러 전통적인 물건을 판매하고 있으며, 약 100여 개의 점포가 위치하여 일본의 정서를 자아냅니다. </div>
									<div class="purple_font">자세히보기</div>
								</div>
								<div style="clear:both;"></div>
							</div>
							
							<div class="attraction_days">
								<img class="fl" src="https://image.hanatour.com/usr/cms/resize/400_0/2012/07/06/10000/4206133e-48c5-41a2-9e43-8cf3c2275e67.jpg" alt="풍경사진"/>
								<div class="fl">
									<div><strong>나카미세도리</strong></div>
									<div>약 300m에 이르는 거리의 양쪽에는 오래전부터 변함없이 그 자리를 지키고 있는 약 90여 개의 일본 전통 가게들 줄지어 있습니다. 도중 다코야키나 센베이 등 간식거리를 파는 곳이 곳곳에 자리를 잡고 있어 군것질하며 천천히 구경할 수 있고 센소지 절을 나서면 우측에 전시된 센소지 유래 관련 그림들을 감상할 수 있습니다. 일본 전통 기념품과 토산품을 비롯해 연극이나 무용에 쓰이는 소품과 특이한 의상 등 재미있는 물건이 많아 현지인들도 관광객들도 그 매력에 푹 빠져드는 곳입니다.</div>
									<div class="purple_font">자세히보기</div>
								</div>
								<div style="clear:both;"></div>
							</div>
							
							<div class="attraction_days">
								<img class="fl" src="https://image.hanatour.com/usr/cms/resize/400_0/2022/09/23/10000/73c1efcc-cd85-4031-8ab5-218d024e1db4.jpg" alt="풍경사진"/>
								<div class="fl">
									<div><strong>에어프레미아 항공</strong></div>
									<div>- 신규 도입 최신 항공기로 보잉 787-900 드림라이너 기종의 중형기를 이용합니다.
										<br/>- 좌석은 프리미엄 이코노미와 이코노미로 구성되어 있습니다.
									</div>
									<div class="purple_font">자세히보기</div>
								</div>
								<div style="clear:both;"></div>
							</div>
							 -->
							
							<div><strong>2일차</strong> <span class="grey_font">2024.08.01(목) </span></div>
							
							<div class="attraction_days">
								<img class="fl" src="https://image.hanatour.com/usr/cms/resize/400_0/2019/12/16/10000/a1945152-8fb3-41b7-86d6-60deaf0cc0d1.jpg" alt="풍경사진"/>
								<div class="fl">
									<div><strong>도쿄(Tokyo / 東京)</strong></div>
									<div>일본 3대도시인 동경, 오사카, 나고야 중 인구별 최대인 동경은 행정구역상 23특별구 27시(市),5정(町),8촌(村)으로 나뉘며, 인구는 1,1821만명으로 도(都)의 인구에 있어서도 세계 1위이고, 인구밀도는 1㎦당 5,482명으로 인구밀도 최저인 훗카이도(73명)의 70배를 넘는다.이러한 동경의 인구과밀화를 해결하고자 수도권 계획의 일환으로 동경 인근지역에 신도시가 들어서 중,고층 주민들의 공동주택단지가 세워졌고 근접한 곳에 나리타 신동경 국제공항이 들어서있다. 역사적으로 볼때 이미 1868년 메이지유신으로 265년에 걸친 도쿠가와 막부가 붕괴되고 권력을 회복한 천왕이 교토에서 에도로 옮겨와 도쿄로 개명하여 일본의 중심이 되기 시작했다. 메이지 시대에 이르러 서양문물을 받아들인 도쿄는 긴자거리서부터 서양문화가 스며들기시작하며 많은 문화의 변화가 일어났고 이후 지금에 이르기까지 동경은 일본의 정치, 경제, 행정, 교육, 문화의 중심지이며 세계 경제의 중심도시로 발전해왔다. 뿐만아니라 이런 높은 현대적인 요소들 사이에서도 사라지지 않은 견고한 전통적 가치관과 믿음처럼 옛 신사가 고고한 자태를 지키고 있다. 신록이 우거진 고전적인 풍경속에 그림같이 자리잡은 정자와 찻집 등과 레게바나 디스코텍 같은 현대적 오락과 시설의 만남, 현대 일본의 모습과 고전일본의 모습, 그들의 생활양식까지 단기간에 체험할 수 있는, 일본의 모든것이 집약되어 있는 도시이다.</div>
									<div class="purple_font">자세히보기</div>
								</div>
								<div style="clear:both;"></div>
							</div>
							
							<div class="attraction_days">
								<img class="fl" src="https://image.hanatour.com/usr/cms/resize/400_0/2016/10/28/10000/25502690-8f97-490c-b7c4-c6914efd86e6.jpg" alt="풍경사진"/>
								<div class="fl">
									<div><strong>도쿄타워</strong></div>
									<div>파리 에펠탑의 모양으로 1958년 세워진 도쿄타워는 333m의 높이로 자립 철탑으로는 세계 제일의 높이를 자랑합니다.
										총 4000t의 철근이 사용됐으며, 붉은 페인트로 칠해진 웅장한 철탑으로 164개의 투광에 의해 도쿄의 야경을 아름답게 비춥니다. 도쿄를 한눈에 바라볼 수 있는 도쿄타워 속 전망대도 아름답지만, 도쿄타워를 외부에서 바라보는 장소들도 매해 방문하는 많은 관광객들에게 사랑받고 있습니다. 
										</div>
									<div class="purple_font">자세히보기</div>
								</div>
								<div style="clear:both;"></div>
							</div>
							
							<div class="attraction_days">
								<img class="fl" src="https://image.hanatour.com/usr/cms/resize/400_0/2022/11/10/10000/9336fe1e-bd86-4cac-a62f-a21d8a093e5a.jpg" alt="풍경사진"/>
								<div class="fl">
									<div><strong>시부야 스카이 전망대</strong></div>
									<div>시부야역과 연결된 초대형 복합시설 시부야 스크램블 스퀘어의 옥상에 있는 360° 야외 전망대입니다. 229m 높이에서 내려다보는 도쿄의 파노라마 절경을 감상해 보세요 스카이 엣지 루프탑에서는 도쿄의 황홀한 전경이 눈앞에 펼쳐집니다. 후지산, 도쿄 스카이트리, 롯폰기 힐즈 등 주요 도쿄 명소들이 한눈에 볼 수 있습니다. 안전상의 이유로 강풍, 강우, 강설, 뇌우, 스모그, 이상 기온 등의 기상 상황에 따라 루프탑 운영이 중단될 수 있습니다. 이 경우, 실내 전망대를 이용해 주세요 루프탑 반입금지 물품이 있습니다. 반입금지 물품은 46층 전용 보관함에 맡기신 후 옥상으로 입장해 주세요.</div>
									<div class="purple_font">자세히보기</div>
								</div>
								<div style="clear:both;"></div>
							</div>
							
							<div><strong>3일차</strong> <span class="grey_font">2024.08.02(금)</span></div>
							
							<div class="attraction_days">
								<img class="fl" src="https://image.hanatour.com/usr/cms/resize/400_0/2019/12/16/10000/a1945152-8fb3-41b7-86d6-60deaf0cc0d1.jpg" alt="풍경사진"/>
								<div class="fl">
									<div><strong>도쿄(Tokyo / 東京)</strong></div>
									<div>일본 3대도시인 동경, 오사카, 나고야 중 인구별 최대인 동경은 행정구역상 23특별구 27시(市),5정(町),8촌(村)으로 나뉘며, 인구는 1,1821만명으로 도(都)의 인구에 있어서도 세계 1위이고, 인구밀도는 1㎦당 5,482명으로 인구밀도 최저인 훗카이도(73명)의 70배를 넘는다.이러한 동경의 인구과밀화를 해결하고자 수도권 계획의 일환으로 동경 인근지역에 신도시가 들어서 중,고층 주민들의 공동주택단지가 세워졌고 근접한 곳에 나리타 신동경 국제공항이 들어서있다. 역사적으로 볼때 이미 1868년 메이지유신으로 265년에 걸친 도쿠가와 막부가 붕괴되고 권력을 회복한 천왕이 교토에서 에도로 옮겨와 도쿄로 개명하여 일본의 중심이 되기 시작했다. 메이지 시대에 이르러 서양문물을 받아들인 도쿄는 긴자거리서부터 서양문화가 스며들기시작하며 많은 문화의 변화가 일어났고 이후 지금에 이르기까지 동경은 일본의 정치, 경제, 행정, 교육, 문화의 중심지이며 세계 경제의 중심도시로 발전해왔다. 뿐만아니라 이런 높은 현대적인 요소들 사이에서도 사라지지 않은 견고한 전통적 가치관과 믿음처럼 옛 신사가 고고한 자태를 지키고 있다. 신록이 우거진 고전적인 풍경속에 그림같이 자리잡은 정자와 찻집 등과 레게바나 디스코텍 같은 현대적 오락과 시설의 만남, 현대 일본의 모습과 고전일본의 모습, 그들의 생활양식까지 단기간에 체험할 수 있는, 일본의 모든것이 집약되어 있는 도시이다.</div>
									<div class="purple_font">자세히보기</div>
								</div>
								<div style="clear:both;"></div>
							</div>
							
							<div class="attraction_days">
								<img class="fl" src="https://image.hanatour.com/usr/cms/resize/400_0/2016/10/28/10000/25502690-8f97-490c-b7c4-c6914efd86e6.jpg" alt="풍경사진"/>
								<div class="fl">
									<div><strong>도쿄타워</strong></div>
									<div>파리 에펠탑의 모양으로 1958년 세워진 도쿄타워는 333m의 높이로 자립 철탑으로는 세계 제일의 높이를 자랑합니다.
										총 4000t의 철근이 사용됐으며, 붉은 페인트로 칠해진 웅장한 철탑으로 164개의 투광에 의해 도쿄의 야경을 아름답게 비춥니다. 도쿄를 한눈에 바라볼 수 있는 도쿄타워 속 전망대도 아름답지만, 도쿄타워를 외부에서 바라보는 장소들도 매해 방문하는 많은 관광객들에게 사랑받고 있습니다. 
										</div>
									<div class="purple_font">자세히보기</div>
								</div>
								<div style="clear:both;"></div>
							</div>
							
							<div class="attraction_days">
								<img class="fl" src="https://image.hanatour.com/usr/cms/resize/400_0/2022/11/10/10000/9336fe1e-bd86-4cac-a62f-a21d8a093e5a.jpg" alt="풍경사진"/>
								<div class="fl">
									<div><strong>시부야 스카이 전망대</strong></div>
									<div>시부야역과 연결된 초대형 복합시설 시부야 스크램블 스퀘어의 옥상에 있는 360° 야외 전망대입니다. 229m 높이에서 내려다보는 도쿄의 파노라마 절경을 감상해 보세요 스카이 엣지 루프탑에서는 도쿄의 황홀한 전경이 눈앞에 펼쳐집니다. 후지산, 도쿄 스카이트리, 롯폰기 힐즈 등 주요 도쿄 명소들이 한눈에 볼 수 있습니다. 안전상의 이유로 강풍, 강우, 강설, 뇌우, 스모그, 이상 기온 등의 기상 상황에 따라 루프탑 운영이 중단될 수 있습니다. 이 경우, 실내 전망대를 이용해 주세요 루프탑 반입금지 물품이 있습니다. 반입금지 물품은 46층 전용 보관함에 맡기신 후 옥상으로 입장해 주세요.</div>
									<div class="purple_font">자세히보기</div>
								</div>
								<div style="clear:both;"></div>
							</div>
							
							<!-- 샘플용
							<div class="attraction_days">
								<img class="fl" src="" alt="풍경사진"/>
								<div class="fl">
									<div><strong>오다이바 해상공원 & 자유의 여신상</strong></div>
									<div></div>
									<div class="purple_font">자세히보기</div>
								</div>
								<div style="clear:both;"></div>
							</div>
							 -->
						</div>
						
					</div> <!-- 호텔&관광지 종료 -->
					
					<div id="optional_tour_detail"> <!-- 선택관광 -->
						<div>
							<div class="purple_font"><span class="purple_i_img"></span>예약 시 유의사항</div>
							<div class="purple_font">- 또 하나의 즐거움 선택관광! 합리적인 가격으로 새로워졌습니다.</div>
							<div class="purple_font">- 선택관광은 상품 가격에 불포함입니다.</div>
							<div class="grey_font">- 선택관광에 참여하지 않아도 추가적 비용 또는 일정상 불이익은 없습니다.</div>
							<div class="grey_font">- 스페셜 포함은 상품 가격에 포함된 관광입니다.</div>
							<div class="grey_font">- 출발 전 선택관광 신청, 결제 시 환율에 따라 결제 금액이 변동될 수 있습니다.</div>
							<div class="grey_font">- 현지 사정으로 진행이 어려울 수 있으니 예약하신 여행사 및 상담원과 확인 후 결제 부탁드립니다.</div>
							<div class="grey_font">- 일자별 선택 가능하며 여행 출발 7일 전까지 사전 신청 가능합니다.</div>
							<div class="grey_font">- 출발일 기준 7일 미만 시점의 사전 신청은 현지에서 진행이 미확정입니다.</div>
						</div>
						
						<div class="optional_tour_city">
							<div>
								<div class=" fl place_dot"></div>
								<div class="fl">체코</div>
								<div class=" fl optional_tour_city_dot"></div>
								<div class="fl">프라하</div>
								<div style="clear:both;"></div>
							</div>
							<div class="optional_tour_explain">
								<div>
									<div class="fl">프라하 야간 투어</div>
									<div class="fr grey_down_img"></div>
									<div style="clear:both;"></div>
								</div>
								<div>
									<div class="fl">
										<img src="https://image.hanatour.com/usr/cms/resize/400_0/2021/04/23/10000/1698f46b-00fc-4efa-b20f-29f19b1c7ec1.jpg" alt="풍경사진"/>
									</div>
									<div class="fl">
										<div>모짜르트, 요한슈트라우스, 베토벤 등이 활약을 했던 비엔나에서 클래식 음악을 감상하십니다. 비엔나 음악회 관람 시 정장은 필요하지 않으며, 반바지와 민소매 셔츠를 제외한 편안한 복장으로 준비하시면 됩니다. ※음악회 예약 상황 등으로 인해 진행이 불가할 수 있습니다. ※최소 출발인원 : 10명</div>
										<div>
											<div class="fl grey_font">이용요금 <span class="purple_font">성인 (EUR 80) 아동 (EUR 80)</span></div>
											<div class="fl grey_font">소요시간 <span class="purple_font">약 1시간 20분 소요</span></div>
											<div style="clear:both;"></div>
										</div>
										<div>
											<div class="grey_font">대체일정 <span class="purple_font">선택관광 미 진행시 가이드 또는 인솔자와 함께 호텔로 이동 후 개별적으로 자유시간을 갖습니다.</span></div>
										</div>
										<div>
											<div class="grey_font">미선택시 가이드동행  <span class="purple_font">미동행</span></div>
										</div>
									</div>
									<div style="clear:both;"></div>
								</div>
							</div>
							
							<div class="optional_tour_explain">
								<div>
									<div class="fl">프라하 야간 투어</div>
									<div class="fr grey_down_img"></div>
									<div style="clear:both;"></div>
								</div>
								<div>
									<div class="fl">
										<img src="https://image.hanatour.com/usr/cms/resize/400_0/2021/04/23/10000/1698f46b-00fc-4efa-b20f-29f19b1c7ec1.jpg" alt="풍경사진"/>
									</div>
									<div class="fl">
										<div>모짜르트, 요한슈트라우스, 베토벤 등이 활약을 했던 비엔나에서 클래식 음악을 감상하십니다. 비엔나 음악회 관람 시 정장은 필요하지 않으며, 반바지와 민소매 셔츠를 제외한 편안한 복장으로 준비하시면 됩니다. ※음악회 예약 상황 등으로 인해 진행이 불가할 수 있습니다. ※최소 출발인원 : 10명</div>
										<div>
											<div class="fl grey_font">이용요금 <span class="purple_font">성인 (EUR 80) 아동 (EUR 80)</span></div>
											<div class="fl grey_font">소요시간 <span class="purple_font">약 1시간 20분 소요</span></div>
											<div style="clear:both;"></div>
										</div>
										<div>
											<div class="grey_font">대체일정 <span class="purple_font">선택관광 미 진행시 가이드 또는 인솔자와 함께 호텔로 이동 후 개별적으로 자유시간을 갖습니다.</span></div>
										</div>
										<div>
											<div class="grey_font">미선택시 가이드동행  <span class="purple_font">미동행</span></div>
										</div>
									</div>
									<div style="clear:both;"></div>
								</div>
							</div>
					
						</div>
						
								<div class="optional_tour_city">
							<div>
								<div class=" fl place_dot"></div>
								<div class="fl">체코</div>
								<div class=" fl optional_tour_city_dot"></div>
								<div class="fl">프라하</div>
								<div style="clear:both;"></div>
							</div>
							<div class="optional_tour_explain">
								<div>
									<div class="fl">프라하 야간 투어</div>
									<div class="fr grey_down_img"></div>
									<div style="clear:both;"></div>
								</div>
								<div>
									<div class="fl">
										<img src="https://image.hanatour.com/usr/cms/resize/400_0/2021/04/23/10000/1698f46b-00fc-4efa-b20f-29f19b1c7ec1.jpg" alt="풍경사진"/>
									</div>
									<div class="fl">
										<div>모짜르트, 요한슈트라우스, 베토벤 등이 활약을 했던 비엔나에서 클래식 음악을 감상하십니다. 비엔나 음악회 관람 시 정장은 필요하지 않으며, 반바지와 민소매 셔츠를 제외한 편안한 복장으로 준비하시면 됩니다. ※음악회 예약 상황 등으로 인해 진행이 불가할 수 있습니다. ※최소 출발인원 : 10명</div>
										<div>
											<div class="fl grey_font">이용요금 <span class="purple_font">성인 (EUR 80) 아동 (EUR 80)</span></div>
											<div class="fl grey_font">소요시간 <span class="purple_font">약 1시간 20분 소요</span></div>
											<div style="clear:both;"></div>
										</div>
										<div>
											<div class="grey_font">대체일정 <span class="purple_font">선택관광 미 진행시 가이드 또는 인솔자와 함께 호텔로 이동 후 개별적으로 자유시간을 갖습니다.</span></div>
										</div>
										<div>
											<div class="grey_font">미선택시 가이드동행  <span class="purple_font">미동행</span></div>
										</div>
									</div>
									<div style="clear:both;"></div>
								</div>
							</div>
							
							<div class="optional_tour_explain">
								<div>
									<div class="fl">프라하 야간 투어</div>
									<div class="fr grey_down_img"></div>
									<div style="clear:both;"></div>
								</div>
								<div>
									<div class="fl">
										<img src="https://image.hanatour.com/usr/cms/resize/400_0/2021/04/23/10000/1698f46b-00fc-4efa-b20f-29f19b1c7ec1.jpg" alt="풍경사진"/>
									</div>
									<div class="fl">
										<div>모짜르트, 요한슈트라우스, 베토벤 등이 활약을 했던 비엔나에서 클래식 음악을 감상하십니다. 비엔나 음악회 관람 시 정장은 필요하지 않으며, 반바지와 민소매 셔츠를 제외한 편안한 복장으로 준비하시면 됩니다. ※음악회 예약 상황 등으로 인해 진행이 불가할 수 있습니다. ※최소 출발인원 : 10명</div>
										<div>
											<div class="fl grey_font">이용요금 <span class="purple_font">성인 (EUR 80) 아동 (EUR 80)</span></div>
											<div class="fl grey_font">소요시간 <span class="purple_font">약 1시간 20분 소요</span></div>
											<div style="clear:both;"></div>
										</div>
										<div>
											<div class="grey_font">대체일정 <span class="purple_font">선택관광 미 진행시 가이드 또는 인솔자와 함께 호텔로 이동 후 개별적으로 자유시간을 갖습니다.</span></div>
										</div>
										<div>
											<div class="grey_font">미선택시 가이드동행  <span class="purple_font">미동행</span></div>
										</div>
									</div>
									<div style="clear:both;"></div>
								</div>
							</div>
					
						</div>
						
						
						
						
						
						
					</div> <!-- 선택관광 종료 -->
					
					<div id="three_note_detail">
						<div>
							<div id="notice" class="fl">유의사항</div>
							<div id="payment_benefit" class="fl">결제/혜택/보험</div>
							<div id="emergency_contact" class="fl">비상연락방법</div>
							<div style="clear:both; width:0; height:0;"></div>
						</div>
						
						<div id="notice_detail">
							<div>
								<div><strong>여권/비자</strong></div>
								<div class="grey_font">- 여권에 낙서 또는 메모를 하거나 기념도장을 찍은 경우, 페이지를 임의로 뜯어내는 경우, 신원정보면에 얼룩이 묻은 경우, 여권 표지가 손상된 경우, 여권 잔여 유효기간 부족, 여권 사증란 부족한 경우 출입국 및 항공권 발권 등에 제한이 있을 수 있으므로 출발 전에 반드시 여권을 확인하여 주시기 바랍니다.</div>
								<div class="grey_font">- 서명이 없는 여권은 위조여권으로 의심받는 경우가 있으므로, 여권 소지인의 서명란에 반드시 서명하시기 바랍니다.</div>
								<div class="grey_font">- 서명란에 이름 외에 다른 글자나 기호(하트모양, 별모양 등 특수기호 포함)를 적지 않도록 유의하시기 바랍니다. 영유아의 경우 보호자가 아이의 이름으로 대신 서명(정자 기입)하시면 됩니다.</div>
							</div>
							<div>
								<div><strong>외국/이중국적 주의사항</strong></div>
								<div>외국/이중국적자의 해외여행은 도착지국가(경유국가 포함)의 출입국정책이 상이하므로, 반드시 여행자본인이 해당국의 대사관에 확인하셔야 합니다.</div>
							</div>
							<div>
								<div><strong>항공사 관련 서비스</strong></div>
								<div>항공사 마일리지적립 가능/불가능 여부는 해당 항공의 룰에 따라 달라지므로 예약하신 상품의 항공사로 확인하여 주시기 바랍니다.</div>
							</div>
							<div>
								<div><strong>공항이용</strong></div>
								<div class="purple_font">- 항공기 좌석 배정은 항공사의 고유권한으로 공항에서 선착순 배정됨에 따라 일행과 좌석이 분리될 수도 있으며, 대리수속은 불가합니다.</div>
								<div class="grey_font">- 항공기 이용시 용기당 100ml 초과 액체류 (화장품, 치약류, 젤 등) 물품 기내 반입 제한됩니다. (단, 탁송수하물은 제한 없음)</div>
								<div class="grey_font">- 수하물 탁송 시 각 항공사 규정에 따라 보상불가한 경우가 있으므로, 귀중품은 반드시 휴대하셔야 합니다.</div>
							</div>
							<div>
								<div><strong>동/축산물 검역안내</strong></div>
								<div class="grey_font">- 대부분의 축산물(소세지, 육포 등) 및 생과실·열매채소 등은 휴대반입할 수 없으며, 휴대반입이 가능한 축산물과 식물류도 신고 및 검역을 받아야하며, 불법 반입시 최고 1,000만원의 과태료가 부과됩니다.</div>
								<div class="grey_font">- 해외 축산농장, 가축시장을 방문한 여행객과 가축전염병 발생 국가를 방문한 축산관계자는 농림축산검역본부에 신고하여 소독을 받아야 합니다.</div>
								<div class="grey_font">- 축산업종사자는 가축전염병 발생국가로 출/입국시 신고를 해야 합니다.</div>
							</div>
							<div>
								<div><strong>안전사고</strong></div>
								<div>여행일정 중 발생할 수 있는 모든 안전사고에 유의하시기 바라며, 가이드의 안내사항 및 안전수칙 준수하기 바라며,여행자 본인의 과실로 인한 안전사고는 본인이 책임을 지게 됩니다.</div>
							</div>
						</div>
						
						<div id="payment_benefit_detail">
							<div><strong>결제 안내</strong></div>
							<div>
								<div><strong>- 결제 방법 </strong></div>
								<div class="grey_font">하나투어 법인계좌(가상계좌 포함)로의 송금, 신용카드의 경우 하나투어본사의 ARS(1577-0015) 또는 하나투어 홈페이지에서 온라인결제</div>
								<div><strong>- 결제 확인</strong></div>
								<div>하나투어 홈페이지 내 "예약확인/결제" 하나투어 공식결제 방법을 이용하셔야 법적권리 및 소비자 권익을 보호 받으실 수 있으며, 현금영수증 발급은 여행용역 제공 후 발급해드리고 있습니다. www.hanatour.com 홈페이지 접수</div>
							</div>
							<div><strong>추가혜택</strong></div>
							<div>
								<div><strong>- 하나투어 카드</strong></div>
								<div>
									<img class="fl" src="https://image.hanatour.com/usr/manual/event/2024/EV1000000443/img/card_03.png" alt="카드1"/>
									<div class="fl">
										<div><strong>하나투어 삼성카드</strong></div>
										<div class="grey_font">하나투어 12/24개월 라이트할부</div>
										<div class="grey_font">라이트할부 이용 시 7,000~14,000원 결제대금 차감</div>
										<div class="grey_font">생활요금 정기결제 5%/10% 할인</div>
										<div class="grey_font">일상 필수 영역 5%/10% 할인</div>
										<div class="grey_font">공항 라운지 서비스(The Lounge)</div>
										<div class="grey_font">해외 1.5% 할인</div>
										<div class="grey_font">국제브랜드 서비스(해외겸용카드 전용)</div>
									</div>
									<div style="clear:both;"></div>
								</div>
								<div>
									<img class="fl" src="https://image.hanatour.com/usr/static/img/pc/pmt/img_card.png" alt="카드사진1"/>
									<div class="fl">
										<div><strong>하나투어 KB국민카드</strong></div>
										<div class="grey_font">하나투어 마일리지 : 신용 구매금액의 기본 1%에서 최대 3% 적립 (단, 무이자 할부 이용 시 미적립)</div>
										<div class="grey_font">하나투어 특별우대 : 하나투어 여행상품 구매 시, 포인트 연계 할부 서비스 제공 (최대 50만 원까지!)</div>
										<div class="grey_font">무이자 할부 혜택 : 하나투어 / 국내 면세점 이용 시, 2~3개월 무이자 할부 (5만 원 이상 사용 조건)</div>
									</div>
									<div style="clear:both;"></div>
								</div>
							</div>
							<div><strong>보험</strong></div>
							<div>
								<div><strong>- 여행자 보험</strong></div>
								<img src="https://image.hanatour.com/usr/static/img/pc/pkg/insure_info_1_410_120510.gif" alt="여행자보험 사진" />
								<div class="grey_font"><strong>보험기간: 여행기간</strong></div>
								<div class="grey_font">- 보장기간: 여행종료일~180일(여행종료 후 30일 이내 치료를 시작한 상해,질병 한정) / 보험청구 기간: 사고일 ~ 3년</div>
								<div class="grey_font">- 15세 미만자, 심신상실자, 심신박약자의 사망을 보험사고로 하는 보험 계약은 무효이며, 15세 미만과 79세 이상, 임산부는 보상불가한 부분이 있으므로 개별 보험 가입을 권장합니다.</div>
								<div class="grey_font">- 여행자보험은 실손실 보상 보험으로 보상한도 안에서 심사 지급 되며 타보험사와 중복 가입시 비례보상됩니다.</div>
								<div class="grey_font">- 국내치료비 접수시 본인부담금 공제 후 지급됩니다.(입원시 급여 20% / 비급여 30%, 통원시 급여 1~2만원과 20%중 큰금액 / 비급여 3만원과 30%중 큰 금액)</div>
								<div class="grey_font">- 통원 1회당 보장금액은 외래 및 처방조제 합산액을 한도내 보상합니다. (비급여시 년간 100회 한도)</div>
								<div class="grey_font">- 국내 비급여치료 시 상급병실 치료차액은 1일 평균 10만원 한도 내에서 지급됩니다. (비급여 병실료의 50%)</div>
								<div class="grey_font">- 교통사고 등 국민건강보험공단의 적용을 받지 못하는 경우 치료비의 40% 이내에서 보상됩니다.</div>
								<div class="grey_font">- 상해 사고로 인한 장애 판정은 사고일로부터 6개월 이후 대학병원급의 의료기관에서 후유장애를 진단 받으시길 바랍니다.</div>
								<div class="grey_font">- 진료와 무관한 제비용(제증명료,의료보조기구 구입비)이나 국내 통원 치료시 치과치료(보철/임플란트 등), 한방치료, 미용치료에서 발생한 비급여 의료비는 보상되지 않습니다.</div>
								<div class="grey_font">- 본인 부주의에 의한 휴대품 분실/파손,현금/유가증권,시력교정용 안경 등의 도난 사고 및 기존병력으로 인해 여행 기간 중 발생되는 사고에 대해서는 보상되지 않습니다.</div>
								<div class="grey_font">- 휴대품 파손 보험 신청시 수리확인서와 파손상태의 증빙사진을 제출해야 합니다. </div>
								<div class="grey_font">- 항공사의 과실로 인한 수하물 파손/분실은 즉시 공항에서 항공사에 신고하여 항공사 선(先)배상 후 여행자보험 필요시 청구하시기 바랍니다.</div>
								<div class="grey_font">- 개별여행 중 도난사고 발생시 경찰신고 후 폴리스 레포트가 있어야 보험접수가 가능합니다.</div>
								<div class="grey_font">- 위 사항은 약관 내용을 요약 발췌한 것으로 세부 내용은 반드시 약관을 참조하시기 바랍니다.</div>
							</div>
							<div>
								<div><strong>영업보증보험</strong></div>
								<div class="grey_font">하나투어는 영업보증보험 22억 1천만원에 가입되어 있습니다.</div>
								<div class="grey_font">※ 문의 - DB손해보험 고객센터 : 1899-4040 (www.idbins.com) </div>
							</div>
						</div>
						
						<div id="emergency_contact_detail">
							<div>
								<div>※첫 만남시 긴급 상황 발생한 경우 하나투어 인천 공항사무소☎ 032-743-7500 , 김해(부산) 공항사무소 ☎051-791-2821로 연락 주시기 바랍니다.</div> 
								<div>※상품관련 긴급 상황 발생시 예약하신 여행사 또는 하나투어 고객센터 ☎1577-1233 [평일:09:00~18:00]로 문의 바랍니다.</div> 
							</div>
							<div>
								<div><strong>현지 긴급연락처</strong></div>
								<div class="grey_font">일본(도쿄) 03-6629-4769</div>
							</div>
							<div>
								<div><strong>여행불편 상담</strong></div>
								<div class="grey">고객센터 1577-1233</div>
								<div class="grey">한국여행업협회 여행불편처리센터 1588-8692</div>
								<div class="grey">372소비자상담센터 (국번없이)1372</div>
							</div>
						</div>
						
					</div>
					
					<div id="aboard_safety_detail">
						<div class="grey_font">여행 금지국 현황</div>
						<div>
							<div><strong>여행금지국</strong></div>
							<div class="grey_font">
								소말리아 (2007.8.7.~2024.7.31.)
								<br/>
								이라크 (2007.8.7.~2024.7.31.)
								<br/>
								아프가니스탄 (2007.8.7.~2024.7.31.)
								<br/>
								예멘 (2011.6.28.~2024.7.31.)
								<br/>
								수단 (전 지역(2023.4.29.~2024.7.31.))
								<br/>
								아이티 (전 지역(2024.5.1.~2024.7.31.))
								<br/>
								우크라이나 (전 지역(2022.2.13.~2024.7.31.))
								<br/>
								리비아 (2014.8.4.~2024.7.31.)
								<br/>
								시리아 (2011.8.20.~2024.7.31.)
								<br/>
								아제르바이잔 일부지역: 아르메니아 접경 5km 구간(2023.4.15.~2024.7.31.)
								<br/>
								미얀마 일부지역: 샨州 북부, 샨州 동부, 까야州, 라카인주(2024.5.1.~2024.7.31.)
								<br/>
								필리핀 일부지역: 민다나오의 잠보앙가, 술루‧바실란‧타위타위 군도(2015.12.1.~2024.7.31.)
								<br/>
								러시아 일부지역: 러시아 로스토프·벨고로드·보로네시·쿠르스크·브랸스크 지역 내 우크라이나 국경에서 30km(2022.3.8.~2024.7.31.)
								<br/>
								벨라루스 일부지역: 벨라루스 브레스트·고멜 지역 내 우크라이나 국경에서 30km(2022.3.8.~2024.7.31.)
								<br/>
								아르메니아 일부지역: 아제르바이잔 접경 30km 구간(2023.4.15.~2024.7.31.)
								<br/>
								이스라엘 일부지역: 가자지구(2023.8.1.~2024.7.31.)
								<br/>
								팔레스타인 일부지역: 가자지구(2023.8.1.~2024.7.31.)
								<br/>
								라오스 일부지역: 골든트라이앵글 경제특구(2024.2.1.~2024.7.31.)
							</div>
						</div>
						<div>
							<div><strong>여행 금지국 방문 시</strong></div>
							<div>여권법 제 26조</div>
							<div class="grey_font">방문 및 체류가 금지된 국가나 지역으로 고시된 사정을 알면서도 같은 조 제1항 단서에 따른 허가(제14조 제3항에 따라 준용되는 경우를 포함한다)를 받지 아니하고 해당국각나 지역에서 여권 등을 사용하거나 해당국가나 지역을 방문하거나 체류한 사람은 1년 이하의 징역 또는 1000만원 이하의 벌금에 처한다.</div>
						</div>
						<div>
							<div><strong>여행경보단계</strong></div>
							<div class="grey_font">외교부에서 운영하는 여행경보단계는 여행유의 / 여행자제 / 철수권고 / 여행금지 4단계로 구분되며 외교부 '해외안전여행' 사이트(www.0404.go.kr)에서 상세정보를 확인할 수 있습니다. </div>
						</div>
						<div>
							<div><strong>일본</strong></div>
							<table id="safety_table">
								<tr>
									<th><span class="indigo_background-color white_font">남색경보</span>여행유의 일부</th>
									<td>적색경보 지정 지역을 제외한 전지역</td>
								</tr>
								<tr>
									<th><span class="yellow_background-color white_font">황색경보</span>여행자제</th>
									<td>-</td>
								</tr>
								<tr>
									<th><span class="red_background-color white_font">적색경보</span>철수권고(일부)</th>
									<td>후쿠시마 원전 반경 30km 이내 및 일본 정부 지정 피난지시구역</td>
								</tr>
							</table>
							<div class="grey_font">※ 해외여행 등록제 ’동행’에 가입하시면 목적지의 안전정보, 여행객의 안전정보, 해외여행 중 사고에 대해 가족에게 사고사실 전달이 가능합니다. </div>
						</div>
						<div>
							<div><strong>국가별 사건/사고</strong></div>
							<br/>
							<div class="grey_font">외교부(www.0404.go.kr)에 공지된 여행상품에 포함된 국가의 사건, 사고 입니다. </div>
							<div class="accident_scroll">
								<div class="fl">
									<div>일본</div>
								</div>
								<div class="fl">
									<div>
										<div><strong>사건,사고 현황</strong></div>
										<div class="grey_font">
											[사례비 미끼 마약류 운반 주의]
											<br/>ㅇ 국제 마약 조직들이 일본 내 사정을 잘 모르는 우리 국민들을 이용하여 일본으로 마약 반입을 시도하다 적발되는 사례가 발생하고 있습니다.
											<br/>사례 1) 무료 해외여행 등의 선심성 관광을 제의하면서 여행용 가방 등의 운반을 요청받아 적발되는 경우
											<br/>사례 2) 사례비를 지불한다고 하여 해외 시설 견학을 겸한 관광에 동행시킨 후 기념 선물이라며 건네받은 물건을 가지고 들어오다 적발되는 경우
											<br/>
											<br/>* 일본에서는 각성제단속법 및 관세법 위반에 대한 처벌 기준이 매우 엄격하기 때문에 마약 관련 사실을 알지 못한 채 적발되었다고 하더라도 중벌로 처벌받게 됩니다. 또한, 적발 시 국가 이미지에도 부정적인 영향을 주게 되므로 각별한 주의가 요망됩니다.
											<br/>
											<br/>
											<br/>[신주쿠 가부키쵸 일대 호객 행위꾼 주의]
											<br/>ㅇ 신주쿠 가부키쵸 등 도쿄 지역 유흥가 일대의 호객 행위꾼들에 의한 술값 바가지 피해 사례가 발생하고 있습니다.
											<br/>사례) 싼 가격에 술을 마실 수 있다거나, 성매매를 할 수 있다고 유인한 후, 술에 취한 틈을 이용하여 술값을 과다 청구하거나 신용카드로 몰래 결제
											<br/>
											<br/>※ 술값 과다 청구 등에 대해 이의를 제기할 경우 건장한 남자들을 내세워 협박함으로써 단념토록 하고 있는 실정임
											<br/>※ 따라서, 도쿄 가부키쵸 일대 등 유흥가 지역에서 호객 행위꾼들의 호객 행위에 속아 넘어가는 일이 없도록 주의
										</div>
									</div>
									<div>
										<div><strong>사건ㆍ사고의 유형</strong></div>
										<div>
											ㅇ 2011.3. 동일본 대지진 피해 지역(센다이) 중심으로 도난 사건이 많이 발생했으나, 현재는 치안을 회복한 상태
											<br/>ㅇ 2013.4.6. 돗토리현에 사이클링 투어에 참가했던 우리 국민이 돌풍에 넘어져 머리에 부상
											<br/>ㅇ 2013.7.29. 우리 국민 20명이 나가노현 소재 중앙 알프스 호텐다케산에서 조난당해 5명 사망
											<br/>ㅇ 7관 구(시모노세키 모지) 해상에서 선박 사고가 빈번히 발생
											<br/>ㅇ 2015.4.22. 우리 국민 21명이 쿠마모토현 소재 유휴인 단체 온천 관광시 발생한 교통사고로 부상
											<br/>ㅇ 2019.3.18. 국제마약조직에 연루된 것으로 보이는 60대 남성이 필로폰을 반입하려다고 나리타공항에서 적발
											<br/>ㅇ 2020.12.03. 우리국민 기저질환 노약자 코로나19 확진 사망(코로나19 감염예방 철저 필요)
											<br/>ㅇ 2021.2.21. 오사카에서 우리국민 유학생 교통사고(오토바이)로 사망 (외국에서 교통사고 주의 필요)
											<br/>ㅇ 홋카이도 지역은 우리 국민 관광객들의 렌터카 이용시 교통사고, 특히 1년중 4개월 가량 눈이 내리기 때문에 빙판길 사고, 폭설로 인한 고립 및 추돌 사고 등이 자주 발생하고 있어 운전에 각별한 유의가 필요합니다.
											<br/>일본 지역의 경우, 절도 사건이 70% 정도를 차지하고 있는 바, 특히 우리 국민 관광객이 일본 여행시 날치기나 소매치기 피해를 입는 경우가 있으므로 이에 대해 각별히 주의할 필요가 있습니다.
										</div>
									</div>
									<div>
										<div><strong>자연재해</strong></div>
										<div class="grey_font">
											ㅇ 2011.3.11. 미야기현 앞바다에서 지진 발생(M9, 18,500여 명에 이르는 사망자 및 행방 불명자 발생)
											<br/>ㅇ 2013.4.13. 효고현 이와지시마 부근에서 지진 발생(M6, 수십 명의 부상자 발생)
											<br/>ㅇ 2013.8.16. 카고시마 현 사쿠라지마 화산 폭발
											<br/>ㅇ 2015.6.30. 하코네산 오오와쿠다니에서 소규모 분화 발생하여 인근 지역 통행금지 및 피난 지시 발령
											<br/>※ 일본은 지진, 태풍, 화산 폭발 등 자연재해가 빈번하게 발생하고 있고, 2011년 동일본대지진 이후에도 지속적으로 지진이 발생하고 있어 우리 국민 또는 관광객은 일본 체류 또는 여행 시 이러한 자연재해에 대비할 필요가 있습니다.
											<br/>※ 또한, 도쿄 주변의 대표적인 관광 명소로 알려져 있는 하코네 지역의 오오와쿠다니에서 소규모 분화가 계속되고 있어 이에 대한 주의가 필요합니다.
											<br/>
											<br/>ㅇ 2015년 8월 15일 가고시마현 사쿠라지마 큰 분화 발생, 주변 피난준비 경보 발령
											<br/>ㅇ 2018.6.18. 오사카 북부에서 지진이 발생(M6약, 가옥 3채 파손 및 교민 1명 부상)하였습니다.
											<br/>ㅇ 2018.9.4. 태풍 21호에 따른 간사이공항 폐쇄로 많은 우리국민이 고립되는 사태가 발생하였습니다.
											<br/>ㅇ 2018.9.6. 홋카이도 이부리 동부에서 진도 7의 대지진으로 42명 사망, 부상자 762명의 피해가 있었습니다.
											<br/>ㅇ 2019.1.3. 구마모토현 구마모토시에서 지진 발생(M5.1)
											<br/>ㅇ 2019.2.21. 홋카이도 이부리지방에서 지진 발생(M5.8)
											<br/>ㅇ 2019.6.18. 야마가타현 앞바다에서 지진 발생(M6.7)
											<br/>ㅇ 2021.2.13. 후쿠시마현 앞바다에서 지진 발생(M7.3)
											
										</div>
									</div>
									<div>
										<div><strong>유의해야할 지역</strong></div>
										<div class="grey_font">
											[등반 중 조난사고 유의 지역]
											<br/>ㅇ 야마나시현, 나가노현 지역은 3,000미터에 이르는 높은 산들이 산재해 있어 조난사고에 유의해야 하는 바, 등반 중 기상이 좋지 않거나 몸에 이상이 느껴질 경우에는 산행 자제 또는 하산하는 것이 바람직합니다.
											<br/>
											<br/>[홋카이도 여행 시 유의 사항]
											<br/>ㅇ 홋카이도 지역의 산, 계곡 등 깊은 지역 여행 시 곰이 자주 출몰하고 있으므로 이에 대한 주의가 필요하고, 갑작스러운 기후 변화로 인한 사고가 빈발하고 있으니 장시간의 산행은 자제하는 것이 바람직합니다.
											<br/>
											<br/>[자연재해 빈발 지역]
											<br/>ㅇ 2011년 3월 동일본대지진 이후 도쿄를 비롯한 관동 지역을 중심으로 지진이 계속 발생하고 있습니다.
											<br/>※ 일본의 경우, 지진은 어느 특정 지역에 국한해서 발생하고 있는 것이 아니므로, 일본 지역 관광 또는 체류 시에는 언제나 지진 발생에 대비해서 유념할 필요가 있습니다.
											<br/>
											<br/>ㅇ 2015년 6월 30일 하코네산 오오와쿠다니에서 소규모 분화가 계속되고 있으므로, 향후 추가 분화 및 지진 발생 가능성이 있습니다.
											<br/>ㅇ 전반적으로 일본의 치안 상황은 비교적 안정화되어 있다고 할 수 있으나, 우리 국민 관광객을 상대로 한 날치기 등의 절도 사건이 발생하고 있고, 특히, 도쿄 신주쿠 가부키쵸 등 유흥가 지역에서 호객 행위꾼들에 의한 술값 바가지 피해 사례가 발생하고 있습니다.
											<br/>ㅇ 일본의 경우, 지진, 태풍, 화산 폭발 등 자연재해가 빈번하게 발생하고 있는 만큼 일본 지역 여행 시에는 이러한 자연재해 발생에 각별히 유의할 필요가 있습니다.
											<br/>ㅇ 개별 여행으로 일본 방문시 렌터카 이용이 증가하면서 교통사고 발생 건수도 증가하고 있음. 일본의 경우 한국과는 달리 운전석이 오른쪽에 있고 차량은 좌측 통행을 하다 보니 사고가 발생할 우려가 높습니다.
											<br/>ㅇ 큐슈지역 가고시마현 사쿠라지마(피난준비 경보), 구마모토현 아소산(입산규제 경보) 지역은 현재도 소규모 분화가 계속되고 있고, 향후 추가 분화 및 지진 발생 가능성이 있습니다.
											
										</div>
									</div>
								</div>
								<div style="clear:both;"></div>
							</div>
						</div>
						
						
						<div>
							<div><strong>현지연락처</strong></div>
							<br/>
							<div class="grey_font">외교부(www.0404.go.kr)에 공지된 여행상품에 포함된 국가의 현지연락처 입니다. </div>
							<div class="accident_scroll">
								<div class="fl">
									<div>일본</div>
								</div>
								<div class="fl">
									<div>
										<div><strong>대사관 연락처</strong></div>
										<div>
											[대사관]
											<br/>ㅇ 주소 : 106-0047 東京都港区南麻布1-2-5
											<br/>ㅇ 주소(영사부) : 106-0047 東京都港区南麻布1-7-32
											<br/>※ 대사관과 영사부 위치가 다르므로 주의 필요
											<br/>
											<br/>ㅇ 대표번호(근무시간 중) : (81) 3-3455-2601~3
											<br/>ㅇ 긴급연락처(사건사고 등 긴급상황 발생 시, 24시간) : (81) 70-2153-5454
											<br/>
											<br/>[한국 문화원]
											<br/>ㅇ 주소 160-0004 東京都 新宿 四谷 4-4-10
											<br/>ㅇ 전화 및 FAX 번호 전화번호 : (81-3)3357-5970
											<br/>ㅇ 팩스 : (81-3)3357-6074
											<br/>ㅇ E-Mail
											<br/>- 영사 : consular_jp@mofa.go.kr
											<br/>- 경제 : economic_jp@mofa.go.kr
											<br/>- 교육 : education_jp@mofa.go.kr
											<br/>- 홍보 : information_jp@mofa.go.kr
											<br/>- 운영지원 : general_jp@mofa.go.kr
											<br/>- 정무 : political_jp@mofa.go.kr
											<br/>- 재외국민 법률상담 : legal_jp@mofa.go.kr
											<br/>
											<br/>
											<br/>□ 대사관, 대사관 영사과, 문화원 찾아오시는 길
											<br/>[영사부 찾아오시는 길]
											<br/>ㅇ 지하철 이용시 : 麻布十番역 2번 출구로 나온 후, 五反田방면으로 도보 3분 거리에 위치한 한국중앙회관에 위치
											<br/>ㅇ 버스 이용시 : 反96번 또는 都06번 二の橋정류장에서 하차 후 길 건너편(五反田방면)의 한국중앙회관에 위치
											<br/>
											<br/>[대사관 찾아오시는 길]
											<br/>ㅇ 지하철 이용시 : 麻布十番역 1번 출구로 나온 후, 仙台坂下(広尾방면) 방향으로 도보 5분 거리 위치
											<br/>ㅇ 버스 이용시
											<br/>① (橋86번) 仙台坂下 정류장에서 하차 후 広尾방면으로 도보 2분 거리에 위치
											<br/>② (反96번 또는 都06번) 二の橋정류장에서 하차 후 仙台坂下(広尾방면)방향으로 도보 2분 거리에 위치
											<br/>
											<br/>
											<br/>[한국문화원]
											<br/>ㅇ 주소 : 160-0004 東京都新宿四谷4ー4ー10
											<br/>ㅇ 대표번호 : (81)3-3357-5970
											<br/>ㅇ 팩스 : (81)3-3357-6074
											<br/>ㅇ 이메일 : postmaster@koreanculture.jp
											<br/>ㅇ 문화원 찾아오시는 길
											<br/>- 지하철 이용시 : 四谷3丁目역 1,2번 출구로 나온 후, 新宿방면으로 도보 3분거리에 위치
											<br/>- 버스 이용시 : 品97번 또는 早81번 四谷四丁目 정류장에서 하차
										</div>
									</div>
									<div>
										<div><strong>총영사관 연락처</strong></div>
										<div>
											[주오사카 총영사관]
											<br/>ㅇ 주소 : 541-0056 日本国 大阪市中央区久太郎町2丁目5番13号 五味ビル
											<br/>ㅇ 대표번호(근무시간 중) : (81) 6-4256-2345
											<br/>ㅇ 긴급연락처(사건사고 등 긴급상황 발생 시, 24시간) : (81) 90-3050-0746
											<br/>ㅇ E-mail : osaka@mofa.go.kr
											<br/>
											<br/>[주 후쿠오카 총영사관]
											<br/>ㅇ 주소 : 810-0065 福岡市 中央區 地行浜 1-1-3
											<br/>ㅇ 대표번호(근무시간 중) : (81) 92-771-0461
											<br/>ㅇ 긴급연락처(사건사고 등 긴급상황 발생 시, 24시간) : (81) 80-8588-2806
											<br/>ㅇ e-mail : fukuoka@mofa.go.kr
											<br/>
											<br/>[주요코하마 총영사관]
											<br/>ㅇ 주소 : 231-0862 日本國 神奈川縣 橫浜市 中區 山手町 118番地
											<br/>ㅇ 대표번호(근무시간 중) : (81) 45-621-4531
											<br/>ㅇ 긴급연락처(사건사고 등 긴급상황 발생 시, 24시간) : (81) 80-6731-3285
											<br/>ㅇ E-Mail : yokohama@mofa.go.kr
											<br/>
											<br/>[주나고야 총영사관]
											<br/>ㅇ 주소 : 450-0003 日本国愛知県名古屋市中村区名駅南1-19-12
											<br/>ㅇ 대표번호(근무시간 중) : (81) 52-586-9221
											<br/>ㅇ 긴급연락처(사건사고 등 긴급상황 발생 시, 24시간) : (81) 80-4221-9500
											<br/>ㅇ E-Mail : nagoya@mofa.go.kr
											<br/>
											<br/>[주삿포로 총영사관]
											<br/>ㅇ 주소 : 060-0002 日本北海道札幌市中央北2西12丁目 1-4
											<br/>ㅇ 대표번호(근무시간 중) : (81) 11-218-0288
											<br/>ㅇ 긴급연락처(사건사고 등 긴급상황 발생 시, 24시간) : (81) 80-1971-0288
											<br/>ㅇ E-Mail : sapporo@mofa.go.kr
											<br/>
											<br/>[주센다이 총영사관]
											<br/>ㅇ 주소 : 980-0011 日本国宮城県仙台市青葉区上杉１丁目3-4
											<br/>ㅇ 대표번호(근무시간 중) : (81) 22-221-2751
											<br/>ㅇ 긴급연락처(사건사고 등 긴급상황 발생 시, 24시간) : (81) 90-9538-0741
											<br/>ㅇ E-mail : sendai@mofa.go.kr
											<br/>
											<br/>[주니가타 총영사관]
											<br/>ㅇ 주소 : 950-0078 新潟市中央區万代島5-1 万代島ビル8階
											<br/>ㅇ 대표번호(근무시간 중) : (81) 25-255-5555
											<br/>ㅇ 긴급연락처(사건사고 등 긴급상황 발생 시, 24시간) : (81) 90-8873-8853
											<br/>ㅇ E-Mail : niigata@mofa.go.kr
											<br/>
											<br/>[주히로시마 총영사관]
											<br/>ㅇ 주소 : 廣島市南區翠5丁目9-17
											<br/>ㅇ 대표번호(근무시간 중) : (81) 82-505-2100
											<br/>ㅇ 긴급연락처(사건사고 등 긴급상황 발생 시, 24시간) : (81) 90-8712-8028
											<br/>ㅇ E-Mail : hiroshima@mofa.go.kr
											<br/>
											<br/>[주고베 총영사관]
											<br/>ㅇ 주소 : 650 - 0004 神戶市 中央區 中山手通 2 - 21 - 5
											<br/>ㅇ 대표번호(근무시간 중) : (81) 78 -221-4853
											<br/>ㅇ 긴급연락처(사건사고 등 긴급상황 발생 시, 24시간) : (81) 90-5099-0414
											<br/>ㅇ E-Mail : kobe@mofa.go.kr
										</div>
									</div>
									<div>
										<div><strong>주재국 신고</strong></div>
										<div>
											ㅇ 경찰 : 110
											<br/>ㅇ 화재 : 119
											<br/>ㅇ 해상 사건사고 : 118
											<br/>ㅇ 전화번호 안내 : 104
										</div>
									</div>
									<div>
										<div><strong>의료기관 연락처</strong></div>
										<div>
											ㅇ 도쿄도보건의료정보센터 : 03-5285-8181
											<br/>(한국어, 영서, 중국어, 타이어, 스페인어로 근처의 진료가능한 의료기관 안내)
											<br/>시간 : 토, 일, 공휴일을 포함한 9:00~20:00까지 안내
										</div>
									</div>
								</div>
								<div style="clear:both;"></div>
							</div>
						</div>

					</div>
					
					<div id="travel_review_detail">
					    <div>
					        <div><strong>구매고객 후기</strong></div>
					        <div>
					            <div>
					                <div class="fl rating-score"><strong>4.3</strong><span class="grey_font">/5</span></div>
					                <div class="fl review_empty_star"><span class="review_big_purple_star "></span></div>
					                <div class="fl rating-count">214명의 여행후기</div>
					                <div style="clear:both;"></div>
					            </div>
					            <div>
					            	<div class="fl review_tag">
					            		<div><span class="purple_font">"50대"</span> 고객이 많이 구매한 상품입니다</div>
					            		<div>
					            			<div class="fl">
						            			<span class=" rating_gradation"></span>
						            			<div>
							            			<span class="photo_tag"></span>
							            			일정이 알차요
						            			</div>
					            			</div>
					            			<div class="fr"><span class="purple_font"><strong>48</strong></span>명</div>
					            			<div style="clear:both;"></div>
					            		</div>
					            		
					            		<div>
					            			<div class="fl">
						            			<span class=" rating_gradation"></span>
						            			<div>
							            			<span class="price_tag"></span>
							            			가격이 합리적이에요
						            			</div>
					            			</div>
					            			<div class="fr"><span class="purple_font"><strong>42</strong></span>명</div>
					            			<div style="clear:both;"></div>
					            		</div>
					            		
					            		<div>
					            			<div class="fl">
						            			<span class=" rating_gradation"></span>
						            			<div>
							            			<span class="food_delicious_tag"></span>
							            			현지 음식이 맛있어요
						            			</div>
					            			</div>
					            			<div class="fr"><span class="purple_font"><strong>39 </strong></span>명</div>
					            			<div style="clear:both;"></div>
					            		</div>
					            		
					            		<div>
					            			<div class="fl">
						            			<span class=" rating_gradation"></span>
						            			<div>
							            			<span class="down_town_hotel_tag"></span>
							            			호텔이 시내에 있어요
						            			</div>
					            			</div>
					            			<div class="fr"><span class="purple_font"><strong>27</strong></span>명</div>
					            			<div style="clear:both;"></div>
					            		</div>
					            		
					            		<div>
					            			<div class="fl">
						            			<span class=" rating_gradation"></span>
						            			<div>
							            			<span class="schedule_free"></span>
							            			일정이 여유로워요
						            			</div>
					            			</div>
					            			<div class="fr"><span class="purple_font"><strong>20</strong></span>명</div>
					            			<div style="clear:both;"></div>
					            		</div>
					            		
					            		<div>
					            			<div class="fl">
						            			<span class=" rating_gradation"></span>
						            			<div>
							            			<span class="relax_hotel"></span>
							            			호텔에서 쉬기 좋아요
						            			</div>
					            			</div>
					            			<div class="fr"><span class="purple_font"><strong>13</strong></span>명</div>
					            			<div style="clear:both;"></div>
					            		</div>
					            		
					            		<div>
					            			<div class="fl">
						            			<span class=" rating_gradation"></span>
						            			<div>
							            			<span class="various_food"></span>
							            			현지 음식이 다양해요
						            			</div>
					            			</div>
					            			<div class="fr"><span class="purple_font"><strong>12 </strong></span>명</div>
					            			<div style="clear:both;"></div>
					            		</div>
					            		
					            		<div>
					            			<div class="fl">
						            			<span class=" rating_gradation"></span>
						            			<div>
							            			<span class="various_joy"></span>
							            			즐길 거리가 다양해요
						            			</div>
					            			</div>
					            			<div class="fr"><span class="purple_font"><strong>8 </strong></span>명</div>
					            			<div style="clear:both;"></div>
					            		</div>
					            		
					            		<div>
					            			<div class="fl">
						            			<span class=" rating_gradation"></span>
						            			<div>
							            			<span class="guide_fun"></span>
							            			가이드가 재밌어요
						            			</div>
					            			</div>
					            			<div class="fr"><span class="purple_font"><strong>4 </strong></span>명</div>
					            			<div style="clear:both;"></div>
					            		</div>
					            		
					            		<div>
					            			<div class="fl">
						            			<span class=" rating_gradation"></span>
						            			<div>
							            			<span class="restaurant_view_good"></span>
							            			식당 뷰가 좋아요
						            			</div>
					            			</div>
					            			<div class="fr"><span class="purple_font"><strong>1 </strong></span>명</div>
					            			<div style="clear:both;"></div>
					            		</div>
					            		
					            	</div>
					            	<div class="fl review_tag">
					            		<div><span class="purple_font">"가족여행"</span>으로 좋아요</div>
					            		
					            		<div>
					            			<div class="fl">
						            			<span class=" rating_gradation"></span>
						            			<div>
							            			<span class="clean_room"></span>
							            			객실이 깨끗해요
						            			</div>
					            			</div>
					            			<div class="fr"><span class="purple_font"><strong>45</strong></span>명</div>
					            			<div style="clear:both;"></div>
					            		</div>
					            		
					            		<div>
					            			<div class="fl">
						            			<span class=" rating_gradation"></span>
						            			<div>
							            			<span class="pro_guide"></span>
							            			가이드가 전문적이에요
						            			</div>
					            			</div>
					            			<div class="fr"><span class="purple_font"><strong>41</strong></span>명</div>
					            			<div style="clear:both;"></div>
					            		</div>
					            		
					            		<div>
					            			<div class="fl">
						            			<span class=" rating_gradation"></span>
						            			<div>
							            			<span class="careful_guide"></span>
							            			가이드가 배려 깊고 세심해요
						            			</div>
					            			</div>
					            			<div class="fr"><span class="purple_font"><strong>35</strong></span>명</div>
					            			<div style="clear:both;"></div>
					            		</div>
					            		
					            		<div>
					            			<div class="fl">
						            			<span class=" rating_gradation"></span>
						            			<div>
							            			<span class="cheerful_guide"></span>
							            			가이드가 열정적이에요
						            			</div>
					            			</div>
					            			<div class="fr"><span class="purple_font"><strong>20</strong></span>명</div>
					            			<div style="clear:both;"></div>
					            		</div>
					            		
					            		<div>
					            			<div class="fl">
						            			<span class=" rating_gradation"></span>
						            			<div>
							            			<span class="worth-price"></span>
							            			가격만큼 가치 있어요
						            			</div>
					            			</div>
					            			<div class="fr"><span class="purple_font"><strong>18</strong></span>명</div>
					            			<div style="clear:both;"></div>
					            		</div>
					            		
					            		<div>
					            			<div class="fl">
						            			<span class=" rating_gradation"></span>
						            			<div>
							            			<span class="clean_restaurant"></span>
							            			식당이 청결해요
						            			</div>
					            			</div>
					            			<div class="fr"><span class="purple_font"><strong>13</strong></span>명</div>
					            			<div style="clear:both;"></div>
					            		</div>
					            		
					            		<div>
					            			<div class="fl">
						            			<span class=" rating_gradation"></span>
						            			<div>
							            			<span class="near_hotel"></span>
							            			호텔이 관광지와 가까워요
						            			</div>
					            			</div>
					            			<div class="fr"><span class="purple_font"><strong>11</strong></span>명</div>
					            			<div style="clear:both;"></div>
					            		</div>
					            		
					            		<div>
					            			<div class="fl">
						            			<span class=" rating_gradation"></span>
						            			<div>
							            			<span class="hotel_service_good"></span>
							            			호텔 부대시설이 좋아요
						            			</div>
					            			</div>
					            			<div class="fr"><span class="purple_font"><strong>2 </strong></span>명</div>
					            			<div style="clear:both;"></div>
					            		</div>
					            		
					            		<div>
					            			<div class="fl">
						            			<span class=" rating_gradation"></span>
						            			<div>
							            			<span class="hotel_view"></span>
							            			객실 뷰가 좋아요
						            			</div>
					            			</div>
					            			<div class="fr"><span class="purple_font"><strong>1 </strong></span>명</div>
					            			<div style="clear:both;"></div>
					            		</div>
					            	</div>
					            	<div style="clear:both;"></div>
					            	
					            </div>
					            <div>더보기 <span class="grey_down_img"></span></div>
					            
					        </div>
					    </div>
					    <div>
						    <div><strong>여행후기</strong></div>
						    <div>
						        <div class="fl">총 <span class="purple_font">214</span>건</div>
						        <div class="fr">
						            <div class="fl purple_font">추천순</div>
						            <div class="fl">최신순</div>
						            <div class="fl">도움순</div>
						            <div class="fl">평점순</div>
						            <div style="clear:both;"></div>
						        </div>
						        <div style="clear:both;"></div>
						    </div>
						    <div>
						    	<form>
							    	<select class="fl" name="상품명">
							    		<option disabled hidden selected>상품명</option>
							    		<option value="전체">전체</option>
							    		<option>[출발확정/모미지여행] 도쿄/야마나시 3일 #후지산뷰 #인생샷 포인트 #크루즈탑승 #도쿄시내숙박</option>
							    		<option>[출발확정/스마트 초이스] 도쿄 3일 #1일자유 #자유석식 #긴자숙박 #시부야스카이</option>
							    		<option>[출발확정/스마트 초이스] 도쿄 3일 #1일자유 #가성비갑 #4성급호텔숙박</option>
							    	</select>
							    	<select class="fl" name="동반자 유형">
							    		<option disabled hidden selected>동반자 유형</option>
							    		<option>전체</option>
							    		<option>커플여행</option>
							    		<option>가족여행</option>
							    		<option>아동동반 여행</option>
							    		<option>친구모임</option>
							    		<option>나홀로 여행</option>
							    		<option>기타</option>
							    	</select>
							    	<div class="fr">
								    	<div class="fl"><input type="checkbox" name="picture_check" value="picture_check"/> 사진&동영상 후기만 보기</div>
								    	<div class="fl"><input type="reset" value="선택해제"/><span class="grey_round_circle"></span></div>
								    	<div style="clear:both;"></div>
						    		</div>
						    		<div style="clear:both;"></div>
						    	</form>
						    </div>
						    <div class="review_box">
						    	<div>
						    		<div class="fl purple_font"><span class="one_purple_star"></span>5</div>
						    		<div class="fl person_img"></div>
						    		<div class="fl">mar*****</div>
						    		<div class="fl review_grey_dot"></div>
						    		<div class="fl">가족여행으로 좋아요</div>
						    		<div class="fl review_grey_dot"></div>
						    		<div class="fl">40대</div>
						    		<div class="fl review_grey_dot"></div>
						    		<div class="fl">2024.06.16</div>
						    		<div style="clear:both;"></div>
						    	</div>
						    	<div>
						    		<div class="fl grey_font"><strong>상품명</strong></div>
						    		<div class="fl">[출발확정] 도쿄 3일 #사와라마을 뱃놀이 #도쿄완전정복 #1일자유</div>
						    		<div style="clear:both;"></div>
						    	</div>
						    	<div>저가항공 물 기내서비스 일체 없음 현지호텔 직원들 친절하고 뷰도 좋고 시내와의 접근성도 좋음 조식도 평타이상 현지 투어식당 음식이 너무 형편없고 맛없어요 개선이 필요해요 일정은 정말 별로였어요 지겨웠어요 타이트하고 알차긴 한데 재미없어요 가이드님 최웅님 만나세요 차분하게 설명 잘해주시고 친절하고 세심해요! 가이드님과 호텔 현지 투어버스컨디션으로 별5개 드립니다</div>
						    	<div>
						    		<div class="fl bottom_tag"><span class="down_town_hotel_tag"></span>호텔이 시내에 있어요</div>
						    		<div class="fl bottom_tag"><span class="careful_guide"></span>가이드가 배려 깊고 세심해요</div>
						    		<div class="fl bottom_tag"><span class="clean_room"></span>객실이 깨끗해요</div>
						    		<div class="fl bottom_tag"><span class="hotel_view"></span>객실 뷰가 좋아요</div>
						    		<div style="clear:both;"></div>
						    	</div>
						    	<div>
						    		<img class="fl" src="https://image.hanatour.com/usr/review/resize/480_0/package/2024/06/16/5084c691-699c-4427-8a94-7a0937dc0cdb.jpeg" alt="" />
						    		<img class="fl" src="https://image.hanatour.com/usr/review/resize/480_0/package/2024/06/16/5f520d4c-6fbe-4436-af85-af99ce5f8885.jpeg" alt="" />
						    		<img class="fl" src="https://image.hanatour.com/usr/review/resize/480_0/package/2024/06/16/781e53f8-28a4-43f2-8cb8-2e2c5849ade1.jpeg" alt="" />
						    		<img class="fl" src="https://image.hanatour.com/usr/review/resize/480_0/package/2024/06/16/11bdbaf5-fad6-427e-945a-713d81873b9a.jpeg" alt="" />
						    		<div style="clear:both;"></div>
						    	</div>
						    	<div><button type="button">도움이 돼요</button></div>
						    </div>
						    
						    <div class="review_box">
						    	<div>
						    		<div class="fl purple_font"><span class="one_purple_star"></span>5</div>
						    		<div class="fl person_img"></div>
						    		<div class="fl">mar*****</div>
						    		<div class="fl review_grey_dot"></div>
						    		<div class="fl">가족여행으로 좋아요</div>
						    		<div class="fl review_grey_dot"></div>
						    		<div class="fl">40대</div>
						    		<div class="fl review_grey_dot"></div>
						    		<div class="fl">2024.06.16</div>
						    		<div style="clear:both;"></div>
						    	</div>
						    	<div>
						    		<div class="fl grey_font"><strong>상품명</strong></div>
						    		<div class="fl">[출발확정] 도쿄 3일 #사와라마을 뱃놀이 #도쿄완전정복 #1일자유</div>
						    		<div style="clear:both;"></div>
						    	</div>
						    	<div>저가항공 물 기내서비스 일체 없음 현지호텔 직원들 친절하고 뷰도 좋고 시내와의 접근성도 좋음 조식도 평타이상 현지 투어식당 음식이 너무 형편없고 맛없어요 개선이 필요해요 일정은 정말 별로였어요 지겨웠어요 타이트하고 알차긴 한데 재미없어요 가이드님 최웅님 만나세요 차분하게 설명 잘해주시고 친절하고 세심해요! 가이드님과 호텔 현지 투어버스컨디션으로 별5개 드립니다</div>
						    	<div>
						    		<div class="fl bottom_tag"><span class="down_town_hotel_tag"></span>호텔이 시내에 있어요</div>
						    		<div class="fl bottom_tag"><span class="careful_guide"></span>가이드가 배려 깊고 세심해요</div>
						    		<div class="fl bottom_tag"><span class="clean_room"></span>객실이 깨끗해요</div>
						    		<div class="fl bottom_tag"><span class="hotel_view"></span>객실 뷰가 좋아요</div>
						    		<div style="clear:both;"></div>
						    	</div>
						    	<div>
						    		<img class="fl" src="https://image.hanatour.com/usr/review/resize/480_0/package/2024/06/16/5084c691-699c-4427-8a94-7a0937dc0cdb.jpeg" alt="" />
						    		<img class="fl" src="https://image.hanatour.com/usr/review/resize/480_0/package/2024/06/16/5f520d4c-6fbe-4436-af85-af99ce5f8885.jpeg" alt="" />
						    		<img class="fl" src="https://image.hanatour.com/usr/review/resize/480_0/package/2024/06/16/781e53f8-28a4-43f2-8cb8-2e2c5849ade1.jpeg" alt="" />
						    		<img class="fl" src="https://image.hanatour.com/usr/review/resize/480_0/package/2024/06/16/11bdbaf5-fad6-427e-945a-713d81873b9a.jpeg" alt="" />
						    		<div style="clear:both;"></div>
						    	</div>
						    	<div><button type="button">도움이 돼요</button></div>
						    </div>
						    
						    
					    </div>
					</div>
				</div>
				
				
			<div style="clear:both;"></div>
		</div>
		
		
		<div id="main_right" class="fr">
			<form action="Tour-oversea_reservation.html" id="amount_select">
				<div>
					<div>인원선택</div>
				</div>
				<div>
					<div class="select_person">
						<div class="fl">
							<div class="grey_font">성인</div>
							<div><span id="adult_money" class="comma"><%=packagePrice.getAdult() %></span>원</div>
						</div>
						<div class="fr">
							<button type="button" id="adult_minus">-</button>
							<input type="text" value="1" id="adult_price">
							<button type="button" id="adult_plus">+</button>
						</div>
						<div style="clear:both;"></div>
					</div>
					<div class="select_person">
						<div class="fl">
							<div class="grey_font">아동</div>
							<div><span id="child_money" class="comma"><%=packagePrice.getChild() %></span>원</div>
						</div> 
						<div class="fr">
							<button type="button" id="child_minus">-</button>
							<input type="text" value="0" id="child_price">
							<button type="button" id="child_plus">+</button>
						</div>
						<div style="clear:both;"></div>
					</div>
					<div class="select_person">
						<div class="fl">
							<div class="grey_font">유아</div>
							<div><span id="kid_money" class="comma"><%=packagePrice.getInfant() %></span>원</div>
						</div>
						<div class="fr">
							<button type="button" id="kid_minus">-</button>
							<input type="text" value="0" id="kid_price">
							<button type="button" id="kid_plus">+</button>
						</div>
						<div style="clear:both;"></div>
					</div>
				</div>
				<div id="total_money">
					<div class="fl">총 금액</div>
					<div class="fr">
						<div>
							<span id="total" class="comma"><%=packagePrice.getAdult() %></span>
							<span>원</span>
						</div>
						<div class="grey_font">유류할증료&제세공과금 포함</div>
						<div class="grey_font">적립 불가 상품입니다.</div>
					</div>
					<div style="clear:both;"></div>
					<div>상품각격 안내 <span class="grey_down_img"></span></div>
				</div>
				<div id="reservation_page">
					<button type="submit" class="fl">예약하기</button>
					<button type="button"><span class="heart_img"></span></button>
					<div style="clear:both;"></div>
				</div>
			</form>
		</div>
    	<div style="clear:both;"></div>
    </div>
    <!-- 내용 종료 -->
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    <!-- footer 시작 -->
    <footer>

        <div class="footer1">
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
    <!-- footer 종료 -->
    
    


</body>
<script src="../../script/tour_package.js"></script>
<script src="../../script/header.js"></script>
<script src="../../script/footer.js"></script>
</html>