<%@page import="dao.TravelReservationDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dto.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	TravelReservationDao trDao = new TravelReservationDao();
	ArrayList<TravelReservationProductInfoDto> trpiDto = trDao.reservationProductInfo(1);
	ArrayList<GetUserInfoDto> guiDto = trDao.getUserInfo("subin1222");
	
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="../../css/tour_oversea_reservation.css">
	<link rel="stylesheet" href="../../css/header.css">
	<link rel="stylesheet" href="../../css/footer.css">
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
    <form action="payment.jsp">
	    <div id="reservation_background-color">
			<div id="reservation_page" class=" center">
				<div id="reservation" >
					<div>예약하기</div>
					<%
						TravelReservationProductInfoDto dto = trpiDto.get(0);
					%>
					<div>
						<div class="fl"><%=dto.getPackageName() %></div>
						<img class="fr" src="<%=dto.getImgUrl() %>" alt="여행사진"/>
						<div style="clear:both;"></div>
						<div>
							<div class="fl">인원</div>
							<div class="fl">성인1</div>
							<div style="clear:both;"></div>
						</div>
					</div>
					
					<div>
						<div>
							<div class="fl">
								<div class="departure_arrival">출발일</div>
								<div class="reservation_date"><%=dto.getDepartureDate() %></div>
							</div>
							<div class="fl"><div><%=dto.getPeriod() %>박<%=dto.getPeriod() + 1 %>일</div></div>
							<div class="fl">
								<div class="departure_arrival">도착일</div>
								<div class="reservation_date"><%=dto.getArrivalDate() %></div>
							</div>
							<div style="clear:both;"></div>
						</div>
						<div>
							<div>
								<div>
									<div class="fl color_grey">항공 정보</div>
									<div class="fr">이스타항공</div>
									<img class="fr" src ="https://image.hanatour.com/usr/static/img/airline/ZE.png" alt="항공사 이미지"/><br/>
								</div>
								<div class="fr">
									<div class="fr">도쿄(NRT)</div>
									<img class="fr" src="https://image.hanatour.com/usr/static/img2/mobile/com/ico_round_48x48.png" alt="바꿈" />
									<div class="fr">서울(ICN)</div>
								</div>
							</div>
							<div>
								<div class="fl color_grey">항공 출발</div>
								<div class="fr">항공편 ZE0601</div>
								<div class="fr">24.07.06(토) 08:00</div>
							</div>
							<div>
								<div class="fl color_grey">항공 도착</div>
								<div class="fr">항공편 ZE0602</div>
								<div class="fr">24.07.09(화) 14:35</div>
							</div>
						</div>
						<div>
							<details>
								<summary>
								<div class="center">항공정보닫기</div></summary>
							</details>
						</div>
					</div>
				</div>
				<div></div>
				<div id="inn">
					<details>
						<summary>
							<div class="fl">이용호텔 및 선택관광</div>
							<img class="fr center" src="https://image.hanatour.com/usr/static/img2/mobile/com/ico_arrOpen_64x64.png" alt="위쪽 화살표"/><br/>
						</summary>
						<div>
							<div class=" inn_fold">
								<div>
									<div class="fl">
										<div class="color_grey">이용호텔</div>
										<div><strong>호텔예정</strong></div>
									</div>
									<div class="fr"><strong>상세</strong></div>
								</div>
							</div>
							<div class=" inn_fold">
								<div>
									<div>
										<div class="color_grey">선택관광</div>
										<div><strong>선택 가능한 선택관광이 없습니다</strong></div>
									</div>
								</div>
							</div>
						</div>
					</details>
				</div>
				<div></div>
				<div id="reservation_info">
					<details>
						<%
							GetUserInfoDto userInfodto = guiDto.get(0);
						%>
							<summary>
								<div>
									<div class="fl title">예약자정보</div>
									<div class="fl essential">필수</div>
									<img class="fr down_img" src="https://image.hanatour.com/usr/static/img2/mobile/com/ico_arrOpen_64x64.png" alt="위쪽 화살표"/>
									<div class="fr"><strong><%=userInfodto.getName() %></strong></div>
									<div style="clear:both;"></div>
								</div>
							</summary>
							<div id="reservation_info_fold">
								 <div>
								 	<div>
								 		<div class="fl color_grey">이름/성별</div>
								 		<div class="fr"><strong><%=userInfodto.getName() %>/
									 		<% 
									 			if(userInfodto.getGender().equals("F")) {
									 		%>
									 			여성
									 		<%
									 			} else {
									 		%>
									 			남성 
									 		<%
									 			}	
									 		%>
								 		</strong></div>
								 		<div style="clear:both;"></div>
								 	</div>
								 	<div>
								 		<div class="fl color_grey">생년월일</div>
								 		<div class="fr"><strong><%=userInfodto.getBirth() %></strong></div>
								 		<div style="clear:both;"></div>
								 	</div>
								 	<div>
								 		<div class="fl color_grey">휴대폰번호</div>
								 		<div class="fr"><strong><%=userInfodto.getPhone() %></strong></div>
								 		<div style="clear:both;"></div>
								 	</div>
								 </div>
							</div>
					</details>
				</div>
				<div id="traveler_info">
					<details open>
						<summary>
							<div>
								<div class="fl title">여행자 정보</div>
								<div class="fl essential">필수</div>
							</div>
							<div>
								<img class="fr down_img" src="https://image.hanatour.com/usr/static/img2/mobile/com/ico_arrOpen_64x64.png" alt="위쪽 화살표" />
								<div style="clear:both;">
							</div>
						</summary>
						<div>
							<div id="insert">
								<div class="inner fl">
									<span>지금 입력</span>
									<input type="button" class="fl" type="botton" id="buttonA" onclick="showContent('A')">
								</div>
								<div class="inner fl">
									<span>나중에 입력</span>
									<input type="button" class="fl" type="botton" id="buttonB" onclick="showContent('B')">
								</div>
							</div>
						</div>
					
					<div id="contentA">
						<div id="notice">
							<div >
								<img class="fl" src="	https://image.hanatour.com/usr/static/img2/mobile/com/ico_alert02_48x48.png" alt="유의사항 이미지"/>
								<div class="fl">유의사항</div>
							</div>
							<br/>
							<ul>
								<li>-  여행자정보는 여권정보를 제외한 간편 예약으로, 해외여행의 경우 ‘마이페이지 > 예약내역’에서 여권정보를 추가로 입력하셔야 합니다.</li>
								<li>-  해외여행의 경우 여권정보 미 입력 시 예약 불가합니다.</li>
								<li>-  만 14세 미만 여행자의 경우 약관교부 및 개인정보 이용 동의 확인을 위한 법정대리인(부모)의 연락처(핸드폰번호, 이메일 주소)로 입력해주세요.</li>
							</ul>
						</div>
						<div id="person">
							<div>
								<div class="fl">
									<div class="fl"><strong>성인</strong></div>
									<div class="fl purple">1</div>
								</div>
								<div class="fr">
									<input type="radio" name="radio1"/> 예약자와 동일
								</div>
								<div style="clear:both;"></div>
							</div>
							<div id="kor_name">
								<input type="text" placeholder="한글 성명" name="한글성명"/>
								
								
								<div class="form_input_button fr">
									<input type="radio" id="traveler-0-sex-FEMALE" name="traveler-0-sex" value="f" class="inpt_radio" checked >
									<label for="traveler-0-sex-MALE" class="label_radio label_text">여</label>
								</div>	
								<div class="form_input_button fr">
										<input type="radio" id="traveler-0-sex-MALE" name="traveler-0-sex" value="m" class="inpt_radio">
										<label for="traveler-0-sex-FEMALE" class="label_radio label_text">남</label>
								</div>
							
							
							</div>
							<div>
								<input class="text_box" type="text" placeholder="법정 생년월일" name="birth">
							</div>
							<div>
								<input class="text_box" type="text" placeholder="휴대폰 번호" name="phonenumber">
							</div>	
						</div>
					</div>
					<div id="contentB">
						<div id="notice">
							<div >
								<img class="fl" src="	https://image.hanatour.com/usr/static/img2/mobile/com/ico_alert02_48x48.png" alt="유의사항 이미지"/>
								<div class="fl">유의사항</div>
							</div>
							<br/>
							<ul>
								<li>-  출발 2일 전 여행이 확정되면 여행 계약서가 교부됩니다.</li>
								<li>-  여행 준비를 위해 모든 여행자의 정보는 예약 후 3일 내에 입력되어야 합니다.</li>
								<li>-  ‘마이페이지 > 예약내역’에서 정보를 입력 및 수정하실 수 있습니다.</li>
							</ul>
						</div>
					</div>
					</details>	
				</div>
				<div id="agree">
						<details open>
							<summary>
								<div>
									<div class="fl title">약관 및 개인정보 동의</div>
									<div class="fl essential">필수</div>
									<div style="clear:both;"></div>
								</div>
								<div>
									<img class="fr down_img" src="https://image.hanatour.com/usr/static/img2/mobile/com/ico_arrOpen_64x64.png" alt="위쪽 화살표" />
									<div style="clear:both;">
								</div>
							</summary>
							<div>
								<input type="checkbox" name="agree1" value="all" onclick="selectAll(this)">	<strong>전체 동의</strong>
							</div>
							<div>
								<input type="checkbox" name="agree1" value="agree1" > (필수)<a href="">국외여행 표준약관</a> 동의
								<br/>
								<input type="checkbox" name="agree1" value="agree2" > (필수)<a href="">개인정보 수집 및 이용</a> 동의
								<br/>
								<input type="checkbox" name="agree1" value="agree3" > (필수)<a href="">고유식별정보 수집 및 처리</a> 동의
								<br/>
								<input type="checkbox" name="agree1" value="agree4" > (필수)<a href="">개인정보 제3자 제공</a> 동의
								<br/>
								<input type="checkbox" name="agree1" value="agree5" > (필수)<a href="">민감정보 수집 및 이용</a> 동의
								<br/>
								<input type="checkbox" name="agree1" value="agree6" > (선택)<a href="">위치정보 이용약관</a> 동의
							</div>
						</details>
					</div>
					
					<div id="detail_payment">
						<details>
							<summary>
								<div>
									<div class="fl title">결제상세 내역</div>
								</div>
								<div>
									<img class="fr down_img" src="https://image.hanatour.com/usr/static/img2/mobile/com/ico_arrOpen_64x64.png" alt="위쪽 화살표" />
									<div style="clear:both;">
								</div>
								<div style="clear:both;"></div>
							</summary>
							<div>
								<div>
									<div class="fl">총 상품금액</div>
									<div class="fr"><strong>619,900원<strong></div>
									<div style="clear:both;"></div>
								</div>
								<div>
									<div class="color_grey fl"> → 상품금액 </div>
									<div class="color_grey fr">619,900원</div>
									<div style="claer:both;"></div>
								</div>
							</div>
							<div>
								<div id="final_price">
									<div class="fl">최종 결제 금액</div>
									<div class="purple fr">원</div>
									<div class="purple fr">619,900</div>
								</div>
								<div id="final_price_info2">
									<div class="color_grey fr">하나투어 마일리지 <span>적립 불가</span> 상품입니다</div>
								</div>
								<br/>
								<div id="final_price_info1">
									<div class="color_grey fr">유류할증료 & 제세공과금 포함</div>
								</div>
							</div>
							<div id="pay_button">
								<div>
									<button type="submit" class="fl button_base_big">
										<div>계약금 결제</div>
										<div>100,000원</div>
									</button>
								</div>
								<div>	
									<button type="submit" class="fl button_base_big">
										<div>전액 결제</div>
										<div>619,900원</div>
									</button>
								</div>	
								<div style="clear:both;"></div>	
							</div>
						</details>	
					</div>
				
				
				
				
			</div>
		</div>
	</form>
































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
<script src="../../script/tour_oversea_reservation.js"></script>
<script src="../../script/header.js"></script>
<script src="../../script/footer.js"></script>
</html>