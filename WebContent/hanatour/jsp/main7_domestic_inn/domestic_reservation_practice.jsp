<%@page import="dao.DomesticReservationDao"%>
<%@page import="dto.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.DomesticHotelDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	DomesticReservationDao reservDao = new DomesticReservationDao();
	ArrayList<DomesticReservPersonDto> reservPerson = reservDao.getReservPersonInfo(1);
/* 	ArrayList<DomesticSearchDto> searchDomesticHotel = reservDao.searchHotel(); */
 %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>국내숙소 예약</title>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/hanatour/css/header.css">
 	<link rel="stylesheet" href="<%=request.getContextPath() %>/hanatour/css/domestic_reservation.css"> 
	<link rel="stylesheet" href="<%=request.getContextPath() %>/hanatour/css/footer.css">
</head>
<body>

<header>
        <!-- header1_active -->
		<!-- header1_hidden -->
        <div class="
            header1_logout
            <%= (String)session.getAttribute("header1Logout") %>
        ">
            <div class="logout">
                <div class="">
                    <a href="<%=request.getContextPath() %>/hanatour/jsp/main1_home/main1_login.jsp">로그인</a>
                </div>
                <div class="">
                    <a href="<%=request.getContextPath() %>/hanatour/jsp/main1_home/main1_join1.jsp">회원가입</a>
                </div>
                <div class="">
                    <a href="">고객센터</a>
                </div>
            </div>
        </div>

        <div class="
            header1_login
            <%= (String)session.getAttribute("header1Login") %>
        ">
            <div class="login">
                <div class="">
                    <a href="<%=request.getContextPath() %>/LogOutServlet">로그아웃</a>
                </div>
                <div class="">
                    <a href="">고객센터</a>
                </div>
            </div>
        </div>


        <!-- header2 -->
        <div class="header2">
            <!-- header2 왼쪽 -->
            <div class="fl">
                <div class="logo fl">
                	<a href="<%=request.getContextPath() %>/hanatour/jsp/main1_home/main1_1.jsp">
                    	<img src="<%=request.getContextPath() %>/hanatour/img/header/ico-hanatour-logo2.png" alt="logo">
                	</a>
                </div>
                <div class="search_bar fl">
                    <form action="#">
                        <input 
                            type="text" 
                            name ="search_keyword" 
                            placeholder="검색어를 입력해 주세요"
                        >
                        <button class="search_btn">
                            <img src="<%=request.getContextPath() %>/hanatour/img/header/ico-search.png" alt="돋보기">
                        </button>
                    </form>
                </div>
                <div class="trending_search fl">
                    <img src="<%=request.getContextPath() %>/hanatour/img/header/osaka.png" alt="osaka">
                    <div class="trending_hover">
                        <div>
                            <img src="<%=request.getContextPath() %>/hanatour/img/header/trending_search.png" alt="인기검색어">
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
                        <img src="<%=request.getContextPath() %>/hanatour/img/header/ico-haeder-choice.png" alt="">
                       
                    </a>
                </div>
                <div class="mypage_item2 fr">
                    <a href="#">
                        <img src="<%=request.getContextPath() %>/hanatour/img/header/ico-reservationhistory.png" alt="">
                    </a>
                </div>


                <div class="mypage_item3 fr">
                    <a href="">
                        <img src="<%=request.getContextPath() %>/hanatour/img/header/ico-mymenu.png" alt="">
                    </a>

                    <!-- mypage_item3_hover_active -->
                    <div class="mypage_item3_hover1 ">

                        <div class="mypage_item3_hover1_header">
                            마이메뉴는<br/><span>회원 전용</span> 메뉴입니다.
                        </div>
                        <div class="mypage_item3_hover1_body">
                            <a href="<%=request.getContextPath() %>/hanatour/jsp/main1_home/main1_login.jsp">
                                <div class="mypage_item3_hover1_body_btn1">
                                    로그인
                                </div>
                            </a>
                            <a href="<%=request.getContextPath() %>//hanatour/jsp/main1_home/main1_join1.jsp">
                                <div class="mypage_item3_hover1_body_btn2">
                                    회원가입
                                </div>
                            </a>
                        </div>
                    </div>

                    <!-- mypage_item3_hover_active -->
                    <div class="mypage_item3_hover2">

                        <div class="mypage_item3_hover2_header">
                            <span><%= session.getAttribute("loginName") %></span> 님, 반갑습니다.
                        </div>
                        <div class="mypage_item3_hover2_body">
                            <div>
                                <a href="">예약내역</a>
                            </div>
                            <div>
                                <a href="">찜</a>
                            </div>
                            <div>
                                <a href="">1:1문의하기</a>
                            </div>
                            <div>
                                <a href="<%=request.getContextPath() %>/hanatour/jsp/main1_home/main1_mypage_personal_info.jsp">개인정보수정</a>
                            </div>
                        </div>
                    </div>



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
                        <img src="<%=request.getContextPath() %>/hanatour/img/header/ico-hamburgermenu.png" alt="">
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
                                <img src="<%=request.getContextPath() %>/hanatour/img/header/ico-alllmenu_close.png" alt="">
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



<!-- 숙박지명/객실명/투숙기간/객실수/옵션정보/상품가격 [옵션정보는 더 늘어날 수 있음] -->
<div id="top" class="center">
	<strong class="top_strong">예약하기</strong>
	<div class="top_wrap">
		<div class="top_wrap_first">예약정보확인</div>
		<div class="top_wrap_second">옵션정보/약관결제</div>
		<div class="top_wrap_third">결제완료</div>
	</div>
</div>
<div id="main" class="center">
<form>
	<div id="main_left" class="fl">
		<div class="main_title" style="margin-top: 6px;">상품 정보</div>
		<div class="info_box">
			<ul>
				<li>숙박지명</li>
				<li>서울신라호텔</li>
			</ul>
			<ul>
				<li>객실명</li>
				<li>[LTA[ROOM ONLY] [ROOM ONLY] 비즈니스 디럭스 더블</li>
			</ul>
			<ul>
				<li>투숙기간</li>
				<li class="navy">2024년 06월 21일 (금) ~ 2024년 06월 22일 (토) ( 1박 )</li>
			</ul>
			<ul>
				<li>객실수</li>
				<li>
					<span class="navy">총 1객실</span> ( 더블 : 1객실. )
				</li>
			</ul>
			<ul>
				<li>옵션정보</li>
				<li>[ 더블 ] 성인조식 1인 : 60,000원<br/>┗ ( 수량 : 1개 * 1 박 => 총 1개. 개별금액 : 60,000원 )</li>
			</ul>
			<ul>
				<li>상품가격</li>
				<li>
					<span class="navy">780,500</span>원 ( 객실요금 : 720,500   옵션가 : 60,000 )
				</li>
			</ul>
		</div>
		<div class="main_title">예약자 정보</div>
		<div class="reservation_person_info">
		<% for (DomesticReservPersonDto reservDto : reservPerson ) {%>
			<ul>
				<li><span class="essential">*</span>한글성명</li>
				<li>
					<input type="text" name="user_name" value="<%=reservDto.getName() %>" class="name_kor_box">
					&nbsp;&nbsp;
					<select style="width: 50px; height: 35px; border: 1px solid #cdcdcd; color:#666;">
						<option value="male">남</option>
						<option value="female">여</option>
					</select>
				</li>
				<li><span class="essential">*</span>법정생년월일</li>
				<li>
					<input type="text" name="birth" value="<%=reservDto.getBirth().split(" ")[0].replace("-", "") %>" class="input_birth" value="19980207">
				</li>
			</ul>
			<ul>
				<li><span class="essential">*</span>휴대폰</li>
				<li>
					<input type="text" name="portable_phone" class="input_portable_phone" value="<%=reservDto.getPhone() %>">
					
				</li>
				<li>전화번호</li>
				<li>
					<input type="text" name="phone_num" class="input_phone" placeholder="예) 0222222525" style="background: none !important;">
				</li>
			</ul>
			<ul>
				<li><span class="essential">*</span>이메일</li>
				<li>
					<input type="text" name="email_address" class="input_email" value="<%=reservDto.getEmail() %>">
				</li>
				<li>총 인원수</li>
				<li style="font-size: 14px;">
					성인
					<select name="adult" class="entire_num" style="color: #7f7f7f;">
						<option value="one">1</option>
						<option value="two">2</option>
						<option value="three">3</option>
						<option value="four">4</option>
						<option value="five">5</option>
						<option value="six">6</option>
						<option value="seven">7</option>
						<option value="eight">8</option>
						<option value="nine">9</option>
					</select>
					아동
					<select name="kid" class="entire_num" style="color: #7f7f7f;">
						<option>0</option>
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
						<option>6</option>
						<option>7</option>
						<option>8</option>
						<option>9</option>
					</select>
					유아
					<select name="infant" class="entire_num" style="color: #7f7f7f;">
						<option>0</option>
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
						<option>6</option>
						<option>7</option>
						<option>8</option>
						<option>9</option>
					</select>
				</li>
			</ul>
			<%
				}
			%>

			<ul>
				<li>하나투어클럽<br/>회원번호</li>
			</ul>

		</div>
		<div class="info_text">
			<ul>
				<li style="color: #5e2bb8;">- 기준인원을 초과하여 투숙할 경우, 현장에서 추가비용이 청구 및 결제될 수 있습니다.</li>
				<li>- 예약과 관련한 안내는 기재한 휴대폰번호로 안내드리며 최초 입력한 휴대폰번호로만 안내되오니 정확하게 입력바랍니다. (접수 후 마이페이지 내 수정불가)</li>
				<li>- 예약자 정보를 잘못 기재하여 발생된 불이익에 대해 당사는 일체 책임지지 않습니다.</li>
			</ul>
		</div>
		<!-- 대표 투숙자 정보 -->
		<div class="main_title">대표 투숙자 정보
			<label for="samecheck" class="same_data">
				<input type="checkbox" id="samecheck" class="check_box">
				<span class="same_data_text">예약자와 동일</span>
			</label>
		</div>
		<div class="representative">
			<ul style="list-style: none;">
				<li><span class="essential">*</span>한글성명</li>
				<li><input type="text" name="input_name" maxlength="15" value="" class="name_box"></li>
				<li><span class="essential">*</span>휴대폰</li>
				<li><input type="text" name="input_phone_num" maxlength="14" value="" class="phone_num_box"></li>
			</ul>
		</div>
		<!-- 기타 사항 -->
		<div class="main_title" style="height: 78.59px; border: none;">기타사항</div>
		<div class="etc">
			<ul>
				<li>
					<textarea name="note"></textarea> 
				</li>
			</ul>
		</div>
		<!-- 취소 수수료 규정안내 -->
		<div class="main_title" style="height: 78.59px; border: none;">취소 수수료 규정안내</div>
		<div style="margin-bottom: 10px;"></div>
		<!-- 비수기기준 글자 포함 박스 -->
		<div class="cancel_policy">
			<h4>비수기 기준</h4>
			<div class="cancel_box">
				<div class="cancel_box_table">
					<table class="cancel_table">
						<tr>
							<td>입실일 기준 3일전 까지</td>
							<td>06월 18일 17시까지</td>
							<td>100% 환불</td>
						</tr>
						<tr>
							<td>입실일 기준 3일전 까지</td>
							<td>06월 21일 17시까지</td>
							<td>0% 환불</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<div class="cancel_info">
			<ul class="cancel_info_ul">
				<li>취소수수료 특약 기준은 일반 여행 약관보다 우선합니다.</li>
				<li style="color:#5e2bb8;">취소 마감일 : 영업일 기준, 주말(토, 일요일) 및 공휴일 취소 가능일에서 제외
					<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(취소 가능일은 영업일 기준으로 산정되며, 주말과 공휴일은 제외됩니다.)</li>
				<li>취소 마감 시간 : 영업일 기준 17시까지, 이후 취소 시 다음 정상영업일 취소 규정 적용</li>
				<li>취소 수수료는 할인 적용 전 객실 판매금액 및 추가 요금(조식, 인원 추가비 등) 포함 기준으로 책정됩니다.</li>
				<li>여행 계약 해제 시 발생하는 취소수수료는 마일리지로 결제할 수 없습니다. (홈페이지 하단 이용약관 제9조 참조)</li>
				<li>숙소에 도착하지 못하시는 경우(NO SHOW)도 숙박료 전체가 노쇼 차지로 부과됩니다.</li>
			</ul>
		</div>
		<div class="agree_box">
			<input type="checkbox" name="cancel_check" value="y" id="cancel_y" class="agree_checkbox">
			<label for="cancel_y">동의합니다</label>
		</div>
		<!-- 개인정보 수집 및 이용 -->
		<div class="main_title" style="height: 78.59px; border:none;">개인정보 수집 및 이용</div>
		<div class="private_info_box1" class="border">
			<div class="private_info_box2">
				<div class="private_info_box_inner">
					<div style="width: 803px; height:118.98px; text-align: left">
						회사는 여행상품의 예약 및 여행 관련 서비스 제공 등의 업무처리를 위하여 고객으로부터 최소한의 필수정보를 수집하며, 제공한 모든 개인정보는 별도의
						<br/> 동의가 없는 한 해당 목적 이외의 다른 목적으로 사용하지 않습니다.
						<br/><br/>
						고객님은 개인정보 수집 및 이용에 대한 동의를 거부할 권리가 있습니다. 동의를 거부할 경우 여행상품 예약 서비스 이용이 불가함을 알려드립니다.
						
					</div>
					<table class="private_info_table">
						<tr>
							<th>개인정보 내역</th>
							<th style="border-left: 1px solid #ddd;">용도</th>
							<th style="border-left: 1px solid #ddd;">보유 및 이용기간</th>
						</tr>
						<tr>
							<td class="p_first_line">성명, 생년월일, 성별, 연락처, 이메일</td>
							<td class="p_first_line" style="border-left: 1px solid #ddd;">여행상품 예약 및 상담</td>
							<td rowspan='2' class="p_first_line" style="padding: 10px 15px; border-left: 1px solid #ddd; font-weight: 700;">
									여행출발일로부터 5년 후 파기 또는 관계 법령에 따른 보존기간까지
									<br/><br/>
									미결제 취소 정보 : 예약 취소일로부터 3개월
							</td>
						</tr>
						<tr>
							<td class="p_second_line">성명, 신용카드번호, 유효기간, 계약자와의 관계</td>
							<td class="p_second_line" style="border-left: 1px solid #ddd;">대금결제/정산</td>
							<td></td>
						</tr>
						<tr>
							<td class="p_second_line">성명, 생년월일,연락처, 이메일</td>
							<td class="p_second_line" style="border-left: 1px solid #ddd;">내부방침 상 반복된 악성민원 제기로 인한 이용자 본인확인 및 서비스 제한</td>
							<td class="p_second_line" style="border-left: 1px solid #ddd; font-weight: 700;">접수일로부터 5년</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<div class="agree_box" style="height:51.8px; border-top:none;">
			<input type="checkbox" name="private_check" value="y" id="private_y" class="agree_checkbox">
			<label for="private_y">동의합니다</label>
		</div>
		<!-- 개인정보의 제3자 제공 -->
		<div class="main_title" style="height: 78.59px; border:none;">개인정보의 제3자 제공</div>
		<div class="info_using_box1">
			<div class="info_using_box2">
				<div class="info_using_box_inner">
					<div style="width: 803px; height:118.98px; text-align: left">
						회사는 여행상품의 예약 및 여행 관련 서비스 제공 등의 업무처리를 위하여 고객으로부터 최소한의 필수정보를 수집하며, 제공한 모든 개인정보는 별도의
						<br/> 동의가 없는 한 해당 목적 이외의 다른 목적으로 사용하지 않습니다.
						<br/><br/>
						고객님은 개인정보 수집 및 이용에 대한 동의를 거부할 권리가 있습니다. 동의를 거부할 경우 여행상품 예약 서비스 이용이 불가함을 알려드립니다.
						
					</div>
					<table class="info_using_table">
						<colgroup>
							<col span='1' style="width: 112.44px;">
							<col style="width: 172.64px;">
						</colgroup>
						<tr>
							<th style="width: 112.44px">서비스 영역</th>
							<th>제공받는 자</th>
							<th>제공목적</th>
							<th>제공항목</th>
							<th>보유 및 이용기간</th>
						</tr>
						<tr>
							<td style="border-left:none;">숙박</td>
							<td><strong>(서울신라호텔)</strong></td>
							<td><strong>호텔예약 진행/확인</strong></td>
							<td>성명(국문/영문)</td>
							<td><strong>여행계약 종료일까지 또는 관련 법령에 따라 보유가 필요한 경우 의무기간까지</strong></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<div class="agree_box" style="height:51.8px; border-top:none;">
			<input type="checkbox" name="info_using_check" value="y" id="info_using_y" class="agree_checkbox">
			<label for="info_using_y">동의합니다</label>
		</div>
		<div class="input_btn_box center">
			<input type="submit" value="예약정보입력" class="input_btn">
		</div>
		<div class="bottom_box">
			<ul>
				<li>예약확인은 마이페이지 또는 이메일로 확인바랍니다.</li>
				<li>문의전화 : 국내숙박 <span style="color: #5e2bb8;">02-2222-2644</span></li>
			</ul>
		</div>
		<!-- 회색 박스 아래 빈 공간 -->
		<div style="width: 1200px; height:230px; margin-top: 50px;" class="fl"></div>
		
	</div>
</form>
</div>
	<div style="width:306px; height: 2680.52px;" class="fr">
		<div id="main_right" class="fr">
			<div id="price_title">결제 정보</div>
			<div class="price_content">
				<div id="price_content_top"></div>
		<!-- 		<div class="fl">최종결제금액</div>
				<div class="price_content_top">
					<span class="">성인 1</span>
					<span class="">아동 0</span>
				</div> -->
				<div id="price">
					<strong class="price_strong">780,500</strong>
					<span>원</span>
				</div>
				<div class="mileage">하나투어 마일리지<span>780</span>적립</div>
				<div id="price_content_bottom">
					<span class="fl">총 상품 금액</span>
					<span class="fr">780,500원</span>
				</div>
			</div>
		</div>
	</div>
</div>


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
                            <img src="<%=request.getContextPath() %>/hanatour/img/footer/facebook.png" alt="페이스북">
                        </a>
                    </div>
                    <div>
                        <a href="#">
                            <img src="<%=request.getContextPath() %>/hanatour/img/footer/instagram.png" alt="인스타그램">
                        </a>
                    </div>
                    <div>
                        <a href="#">
                            <img src="<%=request.getContextPath() %>/hanatour/img/footer/naverblog.png" alt="네이버 블로그">
                        </a>
                    </div>
                    <div >
                        <a href="#">
                            <img src="<%=request.getContextPath() %>/hanatour/img/footer/kakaoplus.png" alt="카카오 플러스">
                        </a>
                    </div>
                    <div>
                        <a href="#">
                            <img src="<%=request.getContextPath() %>/hanatour/img/footer/youtube.png" alt="유튜브">
                        </a>
                    </div>
                    <div>
                        <a href="#">
                            <img src="<%=request.getContextPath() %>/hanatour/img/footer/kakaostory.png" alt="카카오 스토리">
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
                        <img src="<%=request.getContextPath() %>/hanatour/img/footer/footer2_left.png" alt="">
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
                            <img src="<%=request.getContextPath() %>/hanatour/img/footer/award-logo-01.png" alt="">
                        </div>
                        <div class="fl">
                            대한민국<br/>100대 브랜드
                        </div>
                        <div style="clear: both;"></div>
                    </div>
                    <div class="fl">
                        <div class="fl">
                            <img src="<%=request.getContextPath() %>/hanatour/img/footer/award-logo-02-2024.png" alt="">
                        </div>
                        <div class="fl">
                            한국능률협회선정<br/>20년연속(2005~2024)<br/>브랜드파워 1위
                        </div>
                        <div style="clear: both;"></div>
                    </div>
                    <div class="fl">
                        <div class="fl">
                            <img src="<%=request.getContextPath() %>/hanatour/img/footer/award-logo-03-2024.png" alt="">
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
                        <img src="<%=request.getContextPath() %>/hanatour/img/footer/ico-arrow-left.png" alt="">
                    </button>
                    <button>
                       <img src="<%=request.getContextPath() %>/hanatour/img/footer/ico-arrow-right.png" alt="">
                   </button>
                </div>
                <!-- footer4_center 종료 -->
                <div class="footer4_right fl">
                    <div>
                        <img src="<%=request.getContextPath() %>/hanatour/img/footer/korea_brand_awards.jpg" alt="">
                    </div>
                    <div>
                        <img src="<%=request.getContextPath() %>/hanatour/img/footer/mark_01.png" alt="">
                    </div>
                    <div>
                        <img src="<%=request.getContextPath() %>/hanatour/img/footer/mark1_eprivacy.png" alt="">
                    </div>
                    <div>
                        <img src="<%=request.getContextPath() %>/hanatour/img/footer/mark_03_new.png" alt="">
                    </div>
                    <div>
                        <img src="<%=request.getContextPath() %>/hanatour/img/footer/ico_isms.png" alt="">
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
<script src="<%=request.getContextPath() %>/hanatour/script_jsp/footer.js"></script>
<script src="<%=request.getContextPath() %>/hanatour/script_jsp/header.js"></script>
</html>