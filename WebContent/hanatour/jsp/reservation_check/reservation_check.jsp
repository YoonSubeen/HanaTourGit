<%@page import="dto.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ReservationCheckDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String id = (String)session.getAttribute("loginId");
	
	ReservationCheckDao rcDao = new ReservationCheckDao();
	ArrayList <TravelReservationCheckDto> trcDto = rcDao.travelReservationCheck(id);
	ArrayList<TravelCancelCheckDto> tccDto = rcDao.travelCancelCheck(id);
	ArrayList <HotelReservationCheckDto> hrcDto = rcDao.hotelReservationCheck(id);
	ArrayList<HotelCancelCheckDto> hccDto = rcDao.hotelCancelCheck(id);
	ArrayList<OverseaFlightReservationCheckDto> ofrcDto = rcDao.overseaFlightReservationCheck(id);
	ArrayList<OverseaFlightCancelCheckDto> ofccDto = rcDao.overseaFlightCancelCheck(id);
	ArrayList<DomesticFlightReservationCheckDto> dfrcDto = rcDao.domesticFlightReservationCheck(id);
	ArrayList<DomesticFlightCancelCheckDto> dfccDto = rcDao.domesticFlightCancelCheck(id);
	ArrayList<ShowTourReservationDto> showTourReservation = rcDao.showTourReservation(id);
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="../../css/header.css">
	<link rel="stylesheet" href="../../css/footer.css">
	<link rel="stylesheet" href="../../css/reservation_check.css">
	
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

    <div class="container center">
		<div class="container_inner">
			<div class="side_bar">
				<div class="side_bar_inner fl">
					<div class="side_title">마이페이지</div>
					<div class="side_bottom_box">
						<div class="side_box">
							<a href="#">예약내역</a>
						</div>
						<div class="side_box">
							<a href="#">찜</a>
						</div>
						<div class="side_box">
							<a href="#">1:1문의</a>
						</div>
						<div class="side_box">
							<a href="#">자주 찾는 질문</a>
						</div>
						<div class="side_box">
							<a href="#">MY 여행후기</a>
						</div>
						<div class="side_box">
							<a href="#">개인정보</a>
						</div>
					</div>
					<div class="reserv_list">
						<a href="#none">
							<img src="https://image.hanatour.com/usr/static/img/pc/mpg/btn_ticket_history.jpg">
						</a>
					</div>
					<div class="side_banner">
						<img src="https://image.hanatour.com/usr/manual/md/2020/11/safety/mypage.jpg">
					</div>
				</div>
				<div style="clear:both;"></div>
			</div>
			<div class="main_box fl">
				<div class="main_title">예약내역</div>
			 
				<div class="tab">
				  	<button id="package">패키지</button>
				 	<button id="hotel">호텔</button>
				 	<button id="oversea_flight">해외항공</button>
				 	<button id="domestic_flight">국내항공</button>
				 	<button id="flight_hotel">항공+호텔</button>
				 	<button id="tour">투어/입장권</button>
				</div>
				
				<div id="package_detail" class="detail">
				  <div>
				  	<div class="fl reservation_tab">예약내역</div>
				  	<div class="fl cancel_tab">취소내역</div>
				  	<div class="fl last_tab">지난 내역</div>
				  	<div style="clear:both;"></div>
				  </div>
				  
				  <div class="reservation_tab_detail tab_detail">
					  <div class="fr">
					  	<div class="fl">예약기간 선택하여 조회</div>
					  	<button type="button" class="grey_font fl">2024.07.05 <span class="calender_img"></span></button>
					  	<div class="fl">~</div>
					  	<button type="button" class="grey_font fl">2024.07.05 <span class="calender_img"></span></button>
					  	<button type="button" class="fl purple_font">조회</button>
					  	<div style="clear:both;"></div>
					 </div>
					  
					  <div>
					  	<div class="fl">총 <span class="purple_font"> 0 </span>건</div>
					  	<div class="fr">
					  		<div class="purple_font fl">예약일 최신순</div>
					  		<div class="fl">출발일 </div>
					  		<div class="fl">최신순</div>
					  		<div style="clear:both;"></div>
					  	</div>
					  	<div style="clear:both;"></div>
					  </div>
					  
					  <div>
						<table>
							<tr>
								<th>예약일/예약코드</th>
								<th>상품명</th>
								<th>결제 금액</th>
								<th>인원</th>
								<th>출발일/귀국일</th>
								<th>여행/예약상태</th>
							</tr>
							<%
								for(TravelReservationCheckDto dto : trcDto) { 
							%>
							<tr>
								<td><%=dto.getReservationCode() %></td>
								<td><%=dto.getPackageName() %></td>
								<td><%=dto.getPrice()%>원</td>
								<td><%=dto.getMember() %>명</td>
								<td><%=dto.getEarliestDate() %> ~ <%=dto.getLatestDate() %></td>
								<td>예약 완료</td>
							</tr>
							<%
								}
							%>
						</table>
						</div>
					  <div style="clear:both;"></div>
				  </div>
				  
				  <div class="cancel_tab_detail  tab_detail">
					  <div class="fr">
					  	<div class="fl">예약기간 선택하여 조회</div>
					  	<button type="button" class="grey_font fl">2024.07.05 <span class="calender_img"></span></button>
					  	<div class="fl">~</div>
					  	<button type="button" class="grey_font fl">2024.07.05 <span class="calender_img"></span></button>
					  	<button type="button" class="fl purple_font">조회</button>
					  	<div style="clear:both;"></div>
					 </div>
					  
					  <div>
					  	<div class="fl">총 <span class="purple_font"> 0 </span>건</div>
					  	<div class="fr">
					  		<div class="purple_font fl">예약일 최신순</div>
					  		<div class="fl">출발일 </div>
					  		<div class="fl">최신순</div>
					  		<div style="clear:both;"></div>
					  	</div>
					  	<div style="clear:both;"></div>
					  </div>
					  
					  <div>
						<table>
							<tr>
								<th>예약일/예약코드</th>
								<th>상품명</th>
								<th>결제 금액</th>
								<th>인원</th>
								<th>출발일/귀국일</th>
								<th>취소/환불 신청일</th>
								<th>취소상태</th>
							</tr>
							<%
								for(TravelCancelCheckDto dto : tccDto) {
							%>
							<tr>
								<td><%=dto.getReservationCode() %></td>
								<td><%=dto.getPackageName() %></td>
								<td><%=dto.getPrice() %>원</td>
								<td><%=dto.getMember() %>명</td>
								<td><%=dto.getEarliestDate() %> ~ <%=dto.getLatestDate() %></td>
								<td><%=dto.getCancelDate() %></td>
								<td>취소 완료</td>
							</tr>
							<%
								}
							%>
						</table>
						</div>
					  <div style="clear:both;"></div>
				  </div>
				  
				  <div class="last_tab_detail tab_detail">
					  <div class="fr">
					  	<div class="fl">예약기간 선택하여 조회</div>
					  	<button type="button" class="grey_font fl">2024.07.05 <span class="calender_img"></span></button>
					  	<div class="fl">~</div>
					  	<button type="button" class="grey_font fl">2024.07.05 <span class="calender_img"></span></button>
					  	<button type="button" class="fl purple_font">조회</button>
					  	<div style="clear:both;"></div>
					 </div>
					  
					  <div>
					  	<div class="fl">총 <span class="purple_font"> 0 </span>건</div>
					  	<div class="fr">
					  		<div class="purple_font fl">예약일 최신순</div>
					  		<div class="fl">출발일 </div>
					  		<div class="fl">최신순</div>
					  		<div style="clear:both;"></div>
					  	</div>
					  	<div style="clear:both;"></div>
					  </div>
					  
					  <div>
						<table>
							<tr>
								<th>예약일/예약코드</th>
								<th>상품명</th>
								<th>결제 금액</th>
								<th>인원</th>
								<th>출발일/귀국일</th>
								<th>예약/예약상태</th>
							</tr>
							<%
								for(TravelReservationCheckDto dto : trcDto) {
							%>
							<tr>
								<td><%=dto.getReservationCode() %></td>
								<td><%=dto.getPackageName() %></td>
								<td><%=dto.getPrice()%>원</td>
								<td><%=dto.getMember() %>명</td>
								<td><%=dto.getEarliestDate() %> ~ <%=dto.getLatestDate() %></td>
								<td>예약 완료</td>
							</tr>
							<%
								}
							%>
						</table>
						</div>
					  <div style="clear:both;"></div>
				  </div>
				  
				</div>
				
				<div id="hotel_detail" class="detail">
				  <div>
				  	<div class="fl reservation_tab">예약내역</div>
				  	<div class="fl cancel_tab">취소내역</div>
				  	<div class="fl last_tab">지난 내역</div>
				  	<div style="clear:both;"></div>
				  </div>
				  
				  <div class="reservation_tab_detail tab_detail">
					  <div class="fr">
					  	<div class="fl">예약기간 선택하여 조회</div>
					  	<button type="button" class="grey_font fl">2024.07.05 <span class="calender_img"></span></button>
					  	<div class="fl">~</div>
					  	<button type="button" class="grey_font fl">2024.07.05 <span class="calender_img"></span></button>
					  	<button type="button" class="fl purple_font">조회</button>
					  	<div style="clear:both;"></div>
					 </div>
					  
					  <div>
					  	<div class="fl">총 <span class="purple_font"> 0 </span>건</div>
					  	<div class="fr">
					  		<div class="purple_font fl">예약일 최신순</div>
					  		<div class="fl">출발일 </div>
					  		<div class="fl">최신순</div>
					  		<div style="clear:both;"></div>
					  	</div>
					  	<div style="clear:both;"></div>
					  </div>
					  
					  <div>
						<table>
							<tr>
								<th>예약일/예약코드</th>
								<th>상품명</th>
								<th>결제 금액</th>
								<th>인원</th>
								<th>체크인/체크아웃</th>
								<th>예약상태</th>
							</tr>
							<%
								for(HotelReservationCheckDto dto : hrcDto) {
							%>
							<tr>
								<td><%=dto.getReservation_code() %></td>
								<td><%=dto.getInn_kor() %></td>
								<td><%=dto.getPrice() %>원</td>
								<td><%=dto.getPerson() %>명</td>
								<td><%=dto.getCheckin() %> ~ <%=dto.getCheckout() %></td>
								<td>예약 완료</td>
							</tr>
							<%
								}
							%>
						</table>
						</div>
					  <div style="clear:both;"></div>
				  </div>
				  
				  <div class="cancel_tab_detail  tab_detail">
					  <div class="fr">
					  	<div class="fl">예약기간 선택하여 조회</div>
					  	<button type="button" class="grey_font fl">2024.07.05 <span class="calender_img"></span></button>
					  	<div class="fl">~</div>
					  	<button type="button" class="grey_font fl">2024.07.05 <span class="calender_img"></span></button>
					  	<button type="button" class="fl purple_font">조회</button>
					  	<div style="clear:both;"></div>
					 </div>
					  
					  <div>
					  	<div class="fl">총 <span class="purple_font"> 0 </span>건</div>
					  	<div class="fr">
					  		<div class="purple_font fl">예약일 최신순</div>
					  		<div class="fl">출발일 </div>
					  		<div class="fl">최신순</div>
					  		<div style="clear:both;"></div>
					  	</div>
					  	<div style="clear:both;"></div>
					  </div>
					  
					  <div>
						<table>
							<tr>
								<th>예약일/예약코드</th>
								<th>상품명</th>
								<th>인원</th>
								<th>체크인/체크아웃</th>
								<th>취소일</th>
								<th>취소상태</th>
							</tr>
							<%
								for(HotelCancelCheckDto dto :  hccDto) {
							%>
							<tr>
								<td><%=dto.getReservationCode() %></td>
								<td><%=dto.getInnKor() %></td>
								<td><%=dto.getPerson() %>명</td>
								<td><%=dto.getCheckIn() %> ~ <%=dto.getCheckOut() %></td>
								<td><%=dto.getCancelDate() %></td>
								<td>취소 완료</td>
							</tr>
							<% 
								}
							%>
						</table>
						</div>
					  <div style="clear:both;"></div>
				  </div>
				  
				  <div class="last_tab_detail tab_detail">
					  <div class="fr">
					  	<div class="fl">예약기간 선택하여 조회</div>
					  	<button type="button" class="grey_font fl">2024.07.05 <span class="calender_img"></span></button>
					  	<div class="fl">~</div>
					  	<button type="button" class="grey_font fl">2024.07.05 <span class="calender_img"></span></button>
					  	<button type="button" class="fl purple_font">조회</button>
					  	<div style="clear:both;"></div>
					 </div>
					  
					  <div>
					  	<div class="fl">총 <span class="purple_font"> 0 </span>건</div>
					  	<div class="fr">
					  		<div class="purple_font fl">예약일 최신순</div>
					  		<div class="fl">출발일 </div>
					  		<div class="fl">최신순</div>
					  		<div style="clear:both;"></div>
					  	</div>
					  	<div style="clear:both;"></div>
					  </div>
					  
					  <div>
						<table>
							<tr>
								<th>예약일/예약코드</th>
								<th>상품명</th>
								<th>결제 금액</th>
								<th>인원</th>
								<th>체크인/체크아웃</th>
								<th>예약상태</th>
							</tr>
							<%
								for(HotelReservationCheckDto dto : hrcDto) {
							%>
							<tr>
								<td><%=dto.getReservation_code() %></td>
								<td><%=dto.getInn_kor() %></td>
								<td><%=dto.getPrice() %>원</td>
								<td><%=dto.getPerson() %>명</td>
								<td><%=dto.getCheckin() %> ~ <%=dto.getCheckout() %></td>
								<td>예약 완료</td>
							</tr>
							<%
								}
							%>
						</table>
						</div>
					  <div style="clear:both;"></div>
				  </div>
				</div>
				
				<div id="oversea_flight_detail" class="detail">
				  <div>
				  	<div class="fl reservation_tab">예약내역</div>
				  	<div class="fl cancel_tab">취소내역</div>
				  	<div class="fl last_tab">지난 내역</div>
				  	<div style="clear:both;"></div>
				  </div>
				  
				  <div class="reservation_tab_detail tab_detail">
					  <div class="fr">
					  	<div class="fl">예약기간 선택하여 조회</div>
					  	<button type="button" class="grey_font fl">2024.07.05 <span class="calender_img"></span></button>
					  	<div class="fl">~</div>
					  	<button type="button" class="grey_font fl">2024.07.05 <span class="calender_img"></span></button>
					  	<button type="button" class="fl purple_font">조회</button>
					  	<div style="clear:both;"></div>
					 </div>
					  
					  <div>
					  	<div class="fl">총 <span class="purple_font"> 0 </span>건</div>
					  	<div class="fr">
					  		<div class="purple_font fl">예약일 최신순</div>
					  		<div class="fl">출발일 </div>
					  		<div class="fl">최신순</div>
					  		<div style="clear:both;"></div>
					  	</div>
					  	<div style="clear:both;"></div>
					  </div>
					  
					  <div>
						<table>
							<tr>
								<th>예약일/예약코드</th>
								<th>상품명</th>
								<th>결제 금액</th>
								<th>인원</th>
								<th>출발일</th>
								<th>예약/발권상태</th>
							</tr>
							<% 
								for(OverseaFlightReservationCheckDto dto : ofrcDto) { 
							%>
							<tr>
								<td><%=dto.getReservationCode() %></td>
								<td><%=dto.getName() %></td>
								<td><%=dto.getPrice() %>원</td>
								<td><%=dto.getPerson() %>명</td>
								<td><%=dto.getDeparture() %></td>
								<td>발권 완료</td>
							</tr>
							<%
								}
							%>
						</table>
						</div>
					  <div style="clear:both;"></div>
				  </div>
				  
				  <div class="cancel_tab_detail  tab_detail">
					  <div class="fr">
					  	<div class="fl">예약기간 선택하여 조회</div>
					  	<button type="button" class="grey_font fl">2024.07.05 <span class="calender_img"></span></button>
					  	<div class="fl">~</div>
					  	<button type="button" class="grey_font fl">2024.07.05 <span class="calender_img"></span></button>
					  	<button type="button" class="fl purple_font">조회</button>
					  	<div style="clear:both;"></div>
					 </div>
					  
					  <div>
					  	<div class="fl">총 <span class="purple_font"> 0 </span>건</div>
					  	<div class="fr">
					  		<div class="purple_font fl">예약일 최신순</div>
					  		<div class="fl">출발일 </div>
					  		<div class="fl">최신순</div>
					  		<div style="clear:both;"></div>
					  	</div>
					  	<div style="clear:both;"></div>
					  </div>
					  
					  <div>
						<table>
							<tr>
								<th>예약일/예약코드</th>
								<th>상품명</th>
								<th>결제금액</th>
								<th>인원</th>
								<th>출발일</th>
								<th>취소일</th>
								<th>취소상태</th>
							</tr>
							<%
								for(OverseaFlightCancelCheckDto dto: ofccDto) {
							%>
							<tr>
								<td><%=dto.getReservationCode() %></td>
								<td><%=dto.getName() %></td>
								<td><%=dto.getPrice() %>원</td>
								<td><%=dto.getPerson() %>명</td>
								<td><%=dto.getDeparture() %></td>
								<td><%=dto.getCancelDate() %></td>
								<td>취소 완료</td>
							</tr>
							<%
								}
							%>
						</table>
						</div>
					  <div style="clear:both;"></div>
				  </div>
				  
				  <div class="last_tab_detail tab_detail">
					  <div class="fr">
					  	<div class="fl">예약기간 선택하여 조회</div>
					  	<button type="button" class="grey_font fl">2024.07.05 <span class="calender_img"></span></button>
					  	<div class="fl">~</div>
					  	<button type="button" class="grey_font fl">2024.07.05 <span class="calender_img"></span></button>
					  	<button type="button" class="fl purple_font">조회</button>
					  	<div style="clear:both;"></div>
					 </div>
					  
					  <div>
					  	<div class="fl">총 <span class="purple_font"> 0 </span>건</div>
					  	<div class="fr">
					  		<div class="purple_font fl">예약일 최신순</div>
					  		<div class="fl">출발일 </div>
					  		<div class="fl">최신순</div>
					  		<div style="clear:both;"></div>
					  	</div>
					  	<div style="clear:both;"></div>
					  </div>
					  
					  <div>
						<table>
							<tr>
								<th>예약일/예약코드</th>
								<th>상품명</th>
								<th>결제 금액</th>
								<th>인원</th>
								<th>출발일</th>
								<th>좌석/발권상태</th>
							</tr>
							<% 
								for(OverseaFlightReservationCheckDto dto : ofrcDto) { 
							%>
							<tr>
								<td><%=dto.getReservationCode() %></td>
								<td><%=dto.getName() %></td>
								<td><%=dto.getPrice() %>원</td>
								<td><%=dto.getPerson() %>명</td>
								<td><%=dto.getDeparture() %></td>
								<td>예약 완료</td>
							</tr>
							<%
								}
							%>
						</table>
						</div>
					  <div style="clear:both;"></div>
					</div>  
				</div>
				
				<div id="domestic_flight_detail" class="detail">
				  <div>
				  	<div class="fl reservation_tab">예약내역</div>
				  	<div class="fl cancel_tab">취소내역</div>
				  	<div class="fl last_tab">지난 내역</div>
				  	<div style="clear:both;"></div>
				  </div>
				  
				  <div class="reservation_tab_detail tab_detail">
					  <div class="fr">
					  	<div class="fl">예약기간 선택하여 조회</div>
					  	<button type="button" class="grey_font fl">2024.07.05 <span class="calender_img"></span></button>
					  	<div class="fl">~</div>
					  	<button type="button" class="grey_font fl">2024.07.05 <span class="calender_img"></span></button>
					  	<button type="button" class="fl purple_font">조회</button>
					  	<div style="clear:both;"></div>
					 </div>
					  
					  <div>
					  	<div class="fl">총 <span class="purple_font"> 0 </span>건</div>
					  	<div class="fr">
					  		<div class="purple_font fl">예약일 최신순</div>
					  		<div class="fl">출발일 </div>
					  		<div class="fl">최신순</div>
					  		<div style="clear:both;"></div>
					  	</div>
					  	<div style="clear:both;"></div>
					  </div>
					  
					  <div>
						<table>
							<tr>
								<th>예약일/예약코드</th>
								<th>상품명</th>
								<th>결제 금액</th>
								<th>인원</th>
								<th>출발일</th>
							</tr>
							<%
								for(DomesticFlightReservationCheckDto dto : dfrcDto) {
							%>
							<tr>
								<td><%=dto.getReservationCode() %></td>
								<td><%=dto.getName() %></td>
								<td><%=dto.getPrice() %>원</td>
								<td><%=dto.getPerson() %>명</td>
								<td><%=dto.getDeparture() %></td>
							</tr>
							<%
								}
							%>
						</table>
						</div>
					  <div style="clear:both;"></div>
				  </div>
				  
				  <div class="cancel_tab_detail  tab_detail">
					  <div class="fr">
					  	<div class="fl">예약기간 선택하여 조회</div>
					  	<button type="button" class="grey_font fl">2024.07.05 <span class="calender_img"></span></button>
					  	<div class="fl">~</div>
					  	<button type="button" class="grey_font fl">2024.07.05 <span class="calender_img"></span></button>
					  	<button type="button" class="fl purple_font">조회</button>
					  	<div style="clear:both;"></div>
					 </div>
					  
					  <div>
					  	<div class="fl">총 <span class="purple_font"> 0 </span>건</div>
					  	<div class="fr">
					  		<div class="purple_font fl">예약일 최신순</div>
					  		<div class="fl">출발일 </div>
					  		<div class="fl">최신순</div>
					  		<div style="clear:both;"></div>
					  	</div>
					  	<div style="clear:both;"></div>
					  </div>
					  
					  <div>
						<table>
							<tr>
								<th>예약일/예약코드</th>
								<th>상품명</th>
								<th>결제금액</th>
								<th>인원</th>
								<th>출발일</th>
								<th>취소일</th>
							</tr>
							<%
								for(DomesticFlightCancelCheckDto dto : dfccDto) {
							%>
							<tr>
								<td><%=dto.getReservationCode() %></td>
								<td><%=dto.getName() %></td>
								<td><%=dto.getPrice() %>원</td>
								<td><%=dto.getPerson() %>명</td>
								<td><%=dto.getDeparture() %></td>
								<td><%=dto.getCancelDate() %></td>
							</tr>
							<%
								} 
							%>
						</table>
						</div>
					  <div style="clear:both;"></div>
				  </div>
				  
				  <div class="last_tab_detail tab_detail">
					  <div class="fr">
					  	<div class="fl">예약기간 선택하여 조회</div>
					  	<button type="button" class="grey_font fl">2024.07.05 <span class="calender_img"></span></button>
					  	<div class="fl">~</div>
					  	<button type="button" class="grey_font fl">2024.07.05 <span class="calender_img"></span></button>
					  	<button type="button" class="fl purple_font">조회</button>
					  	<div style="clear:both;"></div>
					 </div>
					  
					  <div>
					  	<div class="fl">총 <span class="purple_font"> 0 </span>건</div>
					  	<div class="fr">
					  		<div class="purple_font fl">예약일 최신순</div>
					  		<div class="fl">출발일 </div>
					  		<div class="fl">최신순</div>
					  		<div style="clear:both;"></div>
					  	</div>
					  	<div style="clear:both;"></div>
					  </div>
					  
					  <div>
						<table>
							<tr>
								<th>예약일/예약코드</th>
								<th>상품명</th>
								<th>결제 금액</th>
								<th>인원</th>
								<th>출발일</th>
							</tr>
							<%
								for(DomesticFlightReservationCheckDto dto : dfrcDto) {
							%>
							<tr>
								<td><%=dto.getReservationCode() %></td>
								<td><%=dto.getName() %></td>
								<td><%=dto.getPrice() %>원</td>
								<td><%=dto.getPerson() %>명</td>
								<td><%=dto.getDeparture() %></td>
							</tr>
							<%
								}
							%>
						</table>
						</div>
					  <div style="clear:both;"></div>
					</div>
				</div>
				
				<div id="flight_hotel_detail" class="detail">
				  <div>
				  	<div class="fl reservation_tab">예약내역</div>
				  	<div class="fl cancel_tab">취소내역</div>
				  	<div class="fl last_tab">지난 내역</div>
				  	<div style="clear:both;"></div>
				  </div>
				  
				  <div class="reservation_tab_detail tab_detail">
					  <div class="fr">
					  	<div class="fl">예약기간 선택하여 조회</div>
					  	<button type="button" class="grey_font fl">2024.07.05 <span class="calender_img"></span></button>
					  	<div class="fl">~</div>
					  	<button type="button" class="grey_font fl">2024.07.05 <span class="calender_img"></span></button>
					  	<button type="button" class="fl purple_font">조회</button>
					  	<div style="clear:both;"></div>
					 </div>
					  
					  <div>
					  	<div class="fl">총 <span class="purple_font"> 0 </span>건</div>
					  	<div class="fr">
					  		<div class="purple_font fl">예약일 최신순</div>
					  		<div class="fl">출발일 </div>
					  		<div class="fl">최신순</div>
					  		<div style="clear:both;"></div>
					  	</div>
					  	<div style="clear:both;"></div>
					  </div>
					  
					  <div>
						<table>
							<tr>
								<th>예약일/예약코드</th>
								<th>상품명</th>
								<th>결제 금액</th>
								<th>인원</th>
								<th>출발일/귀국일</th>
								<th>예약/발권상태</th>
							</tr>
						</table>
						</div>
					  <div style="clear:both;"></div>
				  </div>
				  
				  <div class="cancel_tab_detail  tab_detail">
					  <div class="fr">
					  	<div class="fl">예약기간 선택하여 조회</div>
					  	<button type="button" class="grey_font fl">2024.07.05 <span class="calender_img"></span></button>
					  	<div class="fl">~</div>
					  	<button type="button" class="grey_font fl">2024.07.05 <span class="calender_img"></span></button>
					  	<button type="button" class="fl purple_font">조회</button>
					  	<div style="clear:both;"></div>
					 </div>
					  
					  <div>
					  	<div class="fl">총 <span class="purple_font"> 0 </span>건</div>
					  	<div class="fr">
					  		<div class="purple_font fl">예약일 최신순</div>
					  		<div class="fl">출발일 </div>
					  		<div class="fl">최신순</div>
					  		<div style="clear:both;"></div>
					  	</div>
					  	<div style="clear:both;"></div>
					  </div>
					  
					  <div>
						<table>
							<tr>
								<th>예약일/예약코드</th>
								<th>상품명</th>
								<th>결제 금액</th>
								<th>인원</th>
								<th>출발일/귀국일</th>
								<th>취소일</th>
								<th>취소상태</th>
							</tr>
						</table>
						</div>
					  <div style="clear:both;"></div>
				  </div>
				  
				  <div class="last_tab_detail tab_detail">
					  <div class="fr">
					  	<div class="fl">예약기간 선택하여 조회</div>
					  	<button type="button" class="grey_font fl">2024.07.05 <span class="calender_img"></span></button>
					  	<div class="fl">~</div>
					  	<button type="button" class="grey_font fl">2024.07.05 <span class="calender_img"></span></button>
					  	<button type="button" class="fl purple_font">조회</button>
					  	<div style="clear:both;"></div>
					 </div>
					  
					  <div>
					  	<div class="fl">총 <span class="purple_font"> 0 </span>건</div>
					  	<div class="fr">
					  		<div class="purple_font fl">예약일 최신순</div>
					  		<div class="fl">출발일 </div>
					  		<div class="fl">최신순</div>
					  		<div style="clear:both;"></div>
					  	</div>
					  	<div style="clear:both;"></div>
					  </div>
					  
					  <div>
						<table>
							<tr>
								<th>예약일/예약코드</th>
								<th>상품명</th>
								<th>결제 금액</th>
								<th>인원</th>
								<th>출발일/귀국일</th>
								<th>예약/발권상태</th>
							</tr>
						</table>
						</div>
					  <div style="clear:both;"></div>
					</div>
				</div>
				
								  <!-- 여기 -->
				<div id="tour_detail" class="detail">
					
				  <div></div>
				  
				  <div class="reservation_tab_detail tab_detail">
					  <div class="fr">
					  	<div class="fl">예약기간 선택하여 조회</div>
					  	<button type="button" class="grey_font fl">2024.07.05 <span class="calender_img"></span></button>
					  	<div class="fl">~</div>
					  	<button type="button" class="grey_font fl">2024.07.05 <span class="calender_img"></span></button>
					  	<button type="button" class="fl purple_font">조회</button>
					  	<div style="clear:both;"></div>
					 </div>
					  
					  <div>
					  	<div class="fl">총 <span class="purple_font"> 0 </span>건</div>
					  	<div class="fr">
					  		<div class="purple_font fl">예약일 최신순</div>
					  		<div class="fl">출발일 </div>
					  		<div class="fl">최신순</div>
					  		<div style="clear:both;"></div>
					  	</div>
					  	<div style="clear:both;"></div>
					  </div>
					  
					  <div>
						<table>
							<tr>
								<th>주문일</th>
								<th>상품정보</th>
								<th>주문상태</th>
							</tr>
							<tr>
								<%
									for(ShowTourReservationDto dto : showTourReservation) {
								%>
								<td><%=dto.getPaymentDate() %></td>
								<td><%=dto.getGoodsName() %></td>
								<td>주문 완료</td>
								<%
									}
								%>
							</tr>
						</table>
						</div>
					  <div style="clear:both;"></div>
				  </div>
				</div>
			</div>
		</div>
	</div>
 
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
</body>
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<script src="../../script/header.js"></script>
<script src="../../script/footer.js"></script>
<script src="../../script/reservation_check.js"></script>
</html>