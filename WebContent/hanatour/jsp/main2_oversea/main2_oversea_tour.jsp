<%@page import="dto.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.MainTourDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	// 파라미터 받기
	String main = request.getParameter("main");

	// mainTourDao 객체  생성
	MainTourDao mDao = new MainTourDao();
	
	// 메소드 객체 생성
	ArrayList<MainOrderDto> mainOrder = mDao.getListMainOrder(main); // 메인 투어 순서 
	
	
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/hanatour/css/header.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/hanatour/css/tour_main_type.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/hanatour/css/footer.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/hanatour/css/lightpick.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.4/moment.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
	
	 
</head>
<body>    
	   <header>
        <!-- header1_active -->
		<!-- header1_hidden -->
        <div class="
            header1_logout
            <%= (session.getAttribute("loginId") != null) ?  "header1_hidden" : "header1_active" %>
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
            <%= (session.getAttribute("loginId") != null) ?  "header1_active" : "header1_hidden" %>
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
                    <form action="<%=request.getContextPath()%>/hanatour/jsp/tour/main_search.jsp?"> <!-- 여기 -->
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
                    <a href="<%=request.getContextPath() %>/hanatour/jsp/reservation_check/reservation_check.jsp">
                        <img src="<%=request.getContextPath() %>/hanatour/img/header/ico-reservationhistory.png" alt="">
                    </a>
                </div>
                <div class="mypage_item3 fr">
                    <a href="#">
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
                            <a href="<%=request.getContextPath() %>/hanatour/jsp/main1_home/main1_join1.jsp">
                                <div class="mypage_item3_hover1_body_btn2">
                                    	회원가입
                                </div>
                            </a>
                        </div>
                    </div>

                    <!-- mypage_item3_hover_active -->
                    <div class="mypage_item3_hover2">
                        <div class="mypage_item3_hover2_header">
                        	<span>
                        		<%= (session.getAttribute("loginId") != null) ? session.getAttribute("loginName") : "???" %>
                        	</span> 님, 반갑습니다.
                        </div>
                        <div class="mypage_item3_hover2_body">
                            <div>
                                <a href="<%=request.getContextPath() %>/hanatour/jsp/reservation_check/reservation_chekc.jsp">예약내역</a>
                            </div>
                            <div>
                                <a href="">찜</a>
                            </div>
                            <div>
                                <a href="">1:1문의하기</a>
                            </div>
                            <div>
                                <a href="<%=request.getContextPath() %>/MypageEditPersonalInfoEntranceServlet">개인정보수정</a>
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
                                        <a href="<%=request.getContextPath() %>/hanatour/jsp/main2_oversea/main2_oversea_tour.jsp?main=해외여행"> 
                                            	해외여행
                                        </a>
                                    </div>
                                    <div>
                                        <a href="<%=request.getContextPath() %>/hanatour/jsp/main2_oversea/main2_oversea_tour.jsp?main=해외여행">
                                           	 해외여행 홈
                                        </a>
                                    </div>
                                </div>
                                <div class="sub_item fl">
                                    <div>
                                        <a href="<%=request.getContextPath()%>/hanatour/jsp/main5_airline/main5_1.jsp">
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
                                        <a href="<%=request.getContextPath() %>/hanatour/jsp/main2_oversea/main2_oversea_tour.jsp?main=국내여행">
                                            	국내여행
                                        </a>
                                    </div>
                                    <div>
                                        <a href="<%=request.getContextPath() %>/hanatour/jsp/main2_oversea/main2_oversea_tour.jsp?main=제주여행">
                                           	 제주여행
                                        </a>
                                    </div>
                                    <div>
                                        <a href="<%=request.getContextPath() %>/hanatour/jsp/main2_oversea/main2_oversea_tour.jsp?main=국내여행">
                                            	내륙여행
                                        </a>
                                    </div>
                                    <div>
                                        <a href="<%=request.getContextPath() %>/hanatour/jsp/main2_oversea/main2_oversea_tour.jsp?main=국내여행">
                                            	울릉도/섬
                                        </a>
                                    </div>
                                    <div>
                                        <a href="<%=request.getContextPath() %>/hanatour/jsp/main2_oversea/main2_oversea_tour.jsp?main=국내여행">
                                            	내나라여행
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
                            <a href="<%=request.getContextPath()%>/hanatour/jsp/main2_oversea/main2_oversea_tour.jsp?main=해외여행">해외여행</a>
                            <div></div>
                        </li>
                        <li>
                            <a href="<%=request.getContextPath()%>/hanatour/jsp/main5_airline/main5_1.jsp">항공</a>
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
                            <a href="<%=request.getContextPath() %>/hanatour/jsp/main2_oversea/main2_oversea_tour.jsp?main=국내여행">국내여행</a>
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
    <!-- header 끝  -->

<%
	 for(int i=0; i<=mainOrder.size()-1; i++ ) {
		 MainOrderDto dto = mainOrder.get(i);
		 if(dto.getType() == 1) {
			 ArrayList<String> type1 = mDao.getListType1(dto.getOrderIdx());
%>
		    <!-- type1 -->
		    <div class="type1">
		        <div class="type1_inner">
		            <!-- 이미지 -->
		            <div class="type1_img swiper">
						<div class="swiper-wrapper">
			            	<% 
			            		for(int j=0; j<=type1.size()-1; j++) {
			            	%>
		            				<img src="<%=type1.get(j)%>" class="swiper-slide" alt="사진<%=(j+1)%>"/>
			            	<% 
			            		} 
			            	%>
            			</div>
		            </div>
		            <div class="type1_img_slider_btn">
		                <div>
		                    <a href="#">
		                        <img src="<%=request.getContextPath() %>/hanatour/img/main5_airline/type1_button_left.png" alt="">
		                    </a>
		                </div>
		                <div>
		                    <a href="#">
		                        <img src="<%=request.getContextPath() %>/hanatour/img/main5_airline/type1_button_right.png" alt="">
		                    </a>
		                </div>
		                <div>
		                    <a href="#">
		                        <img src="<%=request.getContextPath() %>/hanatour/img/main5_airline/type1_button_stop.png" alt="">
		                    </a>
		                </div>
		            </div>
		            <div class="img_slider_number">
		                <span>1</span>
		                <span>/</span>
		                <span>15</span>
		            </div>
		            <form action="<%=request.getContextPath()%>/hanatour/jsp/tour/tour_category.jsp">
		            	<div id="tour_search_box">
		            		<div>
				            	<div  class="fl">
				            		<input id="where" type="text" name="countryCity" placeholder="어디로 떠나세요?" />
				            		
				            		<div id="where_hide">
				            			<div>
				            				<div class="fl"><strong>최근검색지역</strong></div>
				            				<div class="fr grey_font">전체삭제</div>
				            				<div style="clear:both;"></div>
				            			</div>
				            			<div>
				            				<div class="fl">
				            					<div class="fl">도쿄</div>
				            					<div class="fr grey_x_img"></div>
				            					<div style="clear:both;"></div>
				            				</div>
				            				<div class="fl">
				            					<div class="fl">도쿄</div>
				            					<div class="fr grey_x_img"></div>
				            					<div style="clear:both;"></div>
				            				</div>
				            				<div class="fl">
				            					<div class="fl">도쿄</div>
				            					<div class="fr grey_x_img"></div>
				            					<div style="clear:both;"></div>
				            				</div>
				            				<div style="clear:both;"></div>
				            			</div>
				            			<div>
				            				<div><strong>주요도시</strong></div>
				            			</div>
				            			<div>
				            				
				            			</div>
				            			
				            			
				            		</div>
				            	</div>
								<div class="dropdown fl">
								  	<select name = "departure">
								  		<div class="dot"></div>
								  		<option value="" disabled selected>출발지 전체</option>
								  		<option value="전체">전체</option>
								  		<option value="인천/김포">인천/김포</option>
								  		<option value="부산">부산</option>
								  		<option value="대구">대구</option>
								  		<option value="청주">청주</option>
								  		<option value="광주">광주(무안)</option>
								  		<option value="제주">제주</option>
								  		<option value="양양">양양</option>
								  	</select>
								</div>
								
								<div id="tour_date" class="fl">
									<div>
									 	<div class="calender_img fl"></div>
									  	<button type="button" class="fl">
									  		여행시작일 선택 
									  		<br/>
									  		<input type="text" id="start_date_result"/>
									  		 ~ 
									  		<input type="text" id="end_date_result"/>
									  	</button>
									  	<div style="clear:both;"></div>
								  	</div>
									<div id="tour_date_hide">
								  		<div>
									  		<input type="text" id="input_start_date" name="startDate"/>
									  		<input type="text" id="input_end_date" name="endDate"/>
								  		</div>
								  		<div>  
								  			<div>                   
									  			<div class="grey_font">여행 시작일</div>
									  			<div><strong>캘린더에서 여행 시작일을 선택해주세요</strong></div>
									  			<button id="button_stop" class="fr">선택완료</button>
									  			<div style="clear:both;"></div>
								  			</div>
						  				</div>
						  			</div>	
						  			<div style="clear:both;"></div>
								 </div>
								 
								 <div class="fl">
								  	<button type="submit">검색</button>
								</div>
								<div style="clear:both;"></div>
							</div>
							<div>
								<div>
								    <div class="fl">
								        <input type="checkbox" name="pre_flight_ticket" value="pre_flight_ticket" id="check_btn_1" class="check_btn"> 
								        <label for="check_btn_1"><span>미리 항공권을 구매하셨나요?</span></label>
								    </div>
								    <div class="fl">
								        <input type="checkbox" name="no_with" value="no_with" id="check_btn_2" class="check_btn"> 
								        <label for="check_btn_2"><span>우리끼리만 여행가고 싶어요</span></label>
								    </div>
								</div>
							</div>
						</div>
						
		            </form>
		        </div>
		    </div>
			<!--  The end of the type1.  -->
<%			
		} else if(dto.getType()==2) {
			
		} else if(dto.getType()==3) {
%>
			<!-- type3 -->
		    <div class="type3">
		    	<% ArrayList<GetType3TitleDto> type3Title = mDao.getType3Title(dto.getOrderIdx()); %>
		        <div class="type3_inner">
		            <div class="type3_background_img">
		                <img src="<%=type3Title.get(0).getImgUrl() %>" alt="">
		            </div>
		            <div class="type3_contents">
		                <div class="type3_contents_left fl">
		                    <div class="type3_title">
		                    	<%=type3Title.get(0).getTabName() %>
		                    </div> 
							<% for (GetType3TitleDto title : type3Title) { %>
		                    <div class="type3_tab">
		                        <div class="type3_tab_active">
		                        	<%=title.getTitle() %>
		                            <div class="type3_type8_container">
										<% 
											ArrayList<GetType3ProductDto> type3Product = mDao.getType3Product();
												for (GetType3ProductDto product : type3Product) {
													if(product.getMainType3Idx() == title.getMainType3Idx()) {
										%>
		                                <div class="type8">
		                                    <a href="#">
		                                        <div class="type8_img">
		                                            <img src="<%=product.getImgUrl() %>" alt="">
		                                        </div>
		                                        <div class="type8_top_tag">
		                                        	<%=product.getTagTop() %>
		                                        </div>
		                                        <div class="type8_title">
		                                        	<%=product.getProductName() %>
		                                        </div>
		                                        <div class="type8_bottom_tag">
		                                        	<%=product.getTagBottom() %>
		                                        </div>
		                                        <div class="type8_price">
		                                            <span>
		                                                <strong>
		                                                    <%=product.getPrice() %>
		                                                </strong>
		                                            </span>
		                                            <span>원~</span>
		                                        </div>
		                                    </a>
		                                </div>
		                                <% 
				                            	} 
											}
				                        %>
		                            </div>
		                        </div>
		                     </div>   
		                     <% } %>
		                    <!-- type3_tab 종료 -->
		                <!-- type3_contents_left 종료 -->
		            	</div>
		        	</div>
		        	
		    	</div>
		   </div>
<%			
		} else if(dto.getType()==4) {
			String type4 = mDao.getType4(dto.getOrderIdx());
%>
		    <!--  type4 -->
		    <div class="type4">
		        <div class="type4_inner">
		        	<%-- mDao.showtype4(204); --%>
		            <div class="type4_title">
		             	<%=type4 %>
		            </div>
		        </div>
		    </div>
<%			
		} else if(dto.getType()==5) {
			
		} else if(dto.getType()==6) {
			String type6 = mDao.getType6(dto.getOrderIdx());
%>
		
			<!-- type6 -->
		    <div class="type6">
		        <div class="type6_inner">
		            <div class="type6_img">
		                <img src="<%=type6 %>" alt="">
		            </div>
		        </div>
		    </div>

<%		    
		} else if(dto.getType()==7) {
			ArrayList<PromotionDto> listPromotion = mDao.getListType7(dto.getOrderIdx());
%>
		    <!-- type7 -->
		    <div class="type7">
		        <div class="type7_inner">
		        	<% for(PromotionDto pDto : listPromotion) { %>
			            <div class="type7_item">
			                <div class="type7_img">
			                    <img src="<%=pDto.getImgUrl() %>" alt=""/>
			                    <div>
			                        <div>
			                            <h4><b><%=pDto.getTitle() %></b></h4>
			                        </div>
			                        <div><%=pDto.getSubtitle() %></div>
			                    </div>
			                </div>
			                <div class="type7_title"></div>
			                <div class="tag"></div>
			            </div>
		            <% } %>
		        </div>
		    </div>

<%			
		} else if(dto.getType()==8) {
			ArrayList<MainType8Dto> type8 = mDao.getListType8(dto.getOrderIdx());
%>
		<!-- type8_container -->
	    <div class="type8_container">
	        <div class="type8_container_inner">
	        	<%
	        		for(MainType8Dto mdto : type8) { 
	        	%>
	            <div class="type8">
	                <a href="#">
	                    <div class="type8_img">
	                        <img src="<%=mdto.getImgUrl() %>" alt="">
	                    </div>
	                    <div class="type8_top_tag">
	                       <%=mdto.getTagTop() %> <%=dto.getOrderIdx() %>
	                    </div>
	                    <div class="type8_title">
	                    	<%=mdto.getProductName() %>
	                    </div>
	                    <div class="type8_bottom_tag">
	                    	<%=mdto.getTagBottom() %>
	                    </div>
	                    <div class="type8_price">
	                        <span>
	                            <strong>
	                               <%=mdto.getPrice() %>
	                            </strong>
	                        </span>
	                        <span>원~</span>
	                    </div>
	                </a>
	            </div>
	            <%
	        		}
	            %>
	        </div>
	    </div>
		
<%			
			
		} else if(dto.getType()==9) {
%>
			<div class="type9">
		        <div class="type9_inner"> 
		
		
		            <div class="type9_tab">
		                <div class="type9_tab_active">동남아/대만</div>
		                <div>일본</div>
		                <div>유럽</div>
		                <div>남태평양</div>
		                <div>중국/홍콩/몽골/중앙아시아</div>
		                <div>미주/중남미</div>
		                <div>부산출발</div>
		            </div>
		
		
		            <div class="type9_type8_container">
		
		                <div class="type9_type8_innner type9_tab_active">
		                    
		                    <div class="type8">
		                        <a href="#">
		                            <div class="type8_img">
		                                <img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/05/23/10000/b14e01a8-5e35-4e1a-ae4c-8b7a02cb588e.jpg" alt="">
		                            </div>
		                            <div class="type8_top_tag">
		                            </div>
		                            <div class="type8_title">
		                            	달랏/나트랑 5일 #4인 이상 출발 확정 #1일 1간식
		                            </div>
		                            <div class="type8_bottom_tag">
		                            	마사지부터 치맥까지 요일별 혜택
		                            </div>
		                            <div class="type8_price">
		                                <span>
		                                    <strong>
		                                        269,900
		                                    </strong>
		                                </span>
		                                <span>원~</span>
		                            </div>
		                        </a>
		                    </div>
		                    
		                    <div class="type8">
		                        <a href="#">
		                            <div class="type8_img">
		                                <img src="https://image.hanatour.com/usr/cms/resize/400_0/2023/03/07/10000/fe28313f-534f-4fbe-95aa-d05f931899a4.jpg" alt="">
		                            </div>
		                            <div class="type8_top_tag">
		                            </div>
		                            <div class="type8_title">
		                            	세부 5일 #제이파크 리조트 #워터파크
		                            </div>
		                            <div class="type8_bottom_tag">
		                            	#아동반값
		                            </div>
		                            <div class="type8_price">
		                                <span>
		                                    <strong>
		                                        619,000
		                                    </strong>
		                                </span>
		                                <span>원~</span>
		                            </div>
		                        </a>
		                    </div>
		                    
		                    <div class="type8">
		                        <a href="#">
		                            <div class="type8_img">
		                                <img src="https://image.hanatour.com/usr/cms/resize/400_0/2022/03/23/10000/4b9732ac-c14d-4523-a145-861e9cee7a00.jpg" alt="">
		                            </div>
		                            <div class="type8_top_tag">
		                            </div>
		                            <div class="type8_title">
		                            	푸꾸옥 에어텔 5일 #베스트 웨스턴 #레지던스형
		                            </div>
		                            <div class="type8_bottom_tag">
		                            	📢인당 5만원 즉시 할인 / 공항 픽업
		                            </div>
		                            <div class="type8_price">
		                                <span>
		                                    <strong>
		                                        449,000
		                                    </strong>
		                                </span>
		                                <span>원~</span>
		                            </div>
		                        </a>
		                    </div>
		                    
		                    <div class="type8">
		                        <a href="#">
		                            <div class="type8_img">
		                                <img src="https://image.hanatour.com/usr/cms/resize/400_0/2024/04/12/10000/070381d8-a6f8-43d6-a0c1-52f8a8037c02.jpg" alt="">
		                            </div>
		                            <div class="type8_top_tag">
		                            </div>
		                            <div class="type8_title">
		                            	푸껫 5,6일 #파통,카타,카론위치
		                            </div>
		                            <div class="type8_bottom_tag">
		                            	#푸른바다 산호섬 #타이전통지압
		                            </div>
		                            <div class="type8_price">
		                                <span>
		                                    <strong>
		                                        569,000
		                                    </strong>
		                                </span>
		                                <span>원~</span>
		                            </div>
		                        </a>
		                    </div>
		                </div>
		
		                <div class="type9_type8_innner ">
		
		                    <div class="type8">
		                        <a href="#">
		                            <div class="type8_img">
		                                <img src="https://image.hanatour.com/usr/cms/resize/400_0/2018/12/04/10000/62187bae-8f65-4c84-8706-5a682e6c8e97.jpg" alt="">
		                            </div>
		                            <div class="type8_top_tag">
		                            </div>
		                            <div class="type8_title">
		                            	오사카 3,4일 #100% 출발확정 모아보기
		                            </div>
		                            <div class="type8_bottom_tag">
		                            	한 번에 모아보는 베스트셀러 출발확정
		                            </div>
		                            <div class="type8_price">
		                                <span>
		                                    <strong>
		                                        599,900
		                                    </strong>
		                                </span>
		                                <span>원~</span>
		                            </div>
		                        </a>
		                    </div>
		
		                    <div class="type8">
		                        <a href="#">
		                            <div class="type8_img">
		                                <img src="https://image.hanatour.com/usr/cms/resize/400_0/2021/12/03/10000/7a7e0d16-7455-4192-8989-f4e0a28308cc.jpg" alt="">
		                            </div>
		                            <div class="type8_top_tag">
		                            </div>
		                            <div class="type8_title">
		                            	홋카이도 4일 #인기온천호텔 #게요리
		                            </div>
		                            <div class="type8_bottom_tag">
		                            	NO쇼핑&추가경비 베스트셀러
		                            </div>
		                            <div class="type8_price">
		                                <span>
		                                    <strong>
		                                        1,439,000
		                                    </strong>
		                                </span>
		                                <span>원~</span>
		                            </div>
		                        </a>
		                    </div>
		
		                    <div class="type8">
		                        <a href="#">
		                            <div class="type8_img">
		                                <img src="https://image.hanatour.com/usr/cms/resize/400_0/2021/09/01/10000/1db600f9-a998-4bf1-902d-8aed33fa0065.jpg" alt="">
		                            </div>
		                            <div class="type8_top_tag">
		                            </div>
		                            <div class="type8_title">
		                            	도쿄 3,4일 #시내숙박 #핵심관광
		                            </div>
		                            <div class="type8_bottom_tag">
		                            	1일 자유 or 전일관광 골라보기
		                            </div>
		                            <div class="type8_price">
		                                <span>
		                                    <strong>
		                                        599,900
		                                    </strong>
		                                </span>
		                                <span>원~</span>
		                            </div>
		                        </a>
		                    </div>
		
		                    <div class="type8">
		                        <a href="#">
		                            <div class="type8_img">
		                                <img src="https://image.hanatour.com/usr/cms/resize/400_0/2023/06/01/10000/5ca7a2af-32f2-4cb7-baf1-17ddac08602a.jpg" alt="">
		                            </div>
		                            <div class="type8_top_tag">
		                            </div>
		                            <div class="type8_title">
		                            	오키나와 4일 #힐튼세소코 #호캉스 #리조트석식
		                            </div>
		                            <div class="type8_bottom_tag">
		                            	1일자유 OR 전일관광
		                            </div>
		                            <div class="type8_price">
		                                <span>
		                                    <strong>
		                                        1,119,000
		                                    </strong>
		                                </span>
		                                <span>원~</span>
		                            </div>
		                        </a>
		                    </div>
		                </div>
		
		                <div class="type9_type8_innner ">
		
		                    <div class="type8">
		                        <a href="#">
		                            <div class="type8_img">
		                                <img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/03/20/10000/48220222-6ce5-4aa7-9c76-a7afd952f56c.jpg" alt="">
		                            </div>
		                            <div class="type8_top_tag">
		                            </div>
		                            <div class="type8_title">
		                            	스페인 일주 8,9일 #갓성비여행
		                            </div>
		                            <div class="type8_bottom_tag">
		                            	전일정 4성 호텔 / 바르셀로나 자유시간
		                            </div>
		                            <div class="type8_price">
		                                <span>
		                                    <strong>
		                                        2,499,000
		                                    </strong>
		                                </span>
		                                <span>원~</span>
		                            </div>
		                        </a>
		                    </div>
		
		                    <div class="type8">
		                        <a href="#">
		                            <div class="type8_img">
		                                <img src="https://image.hanatour.com/usr/cms/resize/400_0/2021/08/05/10000/eb56418b-812b-4f9d-afb2-ca1e56c75537.jpg" alt="">
		                            </div>
		                            <div class="type8_top_tag">
		                            </div>
		                            <div class="type8_title">
		                            	동유럽/발칸 5국 9일 #베스트셀러
		                            </div>
		                            <div class="type8_bottom_tag">
		                            	블레드 섬+플레트나 보트 탑승 / 프라하 시내호텔
		                            </div>
		                            <div class="type8_price">
		                                <span>
		                                    <strong>
		                                        3,199,000
		                                    </strong>
		                                </span>
		                                <span>원~</span>
		                            </div>
		                        </a>
		                    </div>
		
		                    <div class="type8">
		                        <a href="#">
		                            <div class="type8_img">
		                                <img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/03/05/10000/43ce99a0-0893-4999-a576-d59bfd7c1a13.jpg" alt="">
		                            </div>
		                            <div class="type8_top_tag">
		                            </div>
		                            <div class="type8_title">
		                            	이탈리아 일주 8,9일 #베스트 셀러
		                            </div>
		                            <div class="type8_bottom_tag">
		                            	나폴리,폼페이,소렌토 / 핵심일주
		                            </div>
		                            <div class="type8_price">
		                                <span>
		                                    <strong>
		                                        1,899,000
		                                    </strong>
		                                </span>
		                                <span>원~</span>
		                            </div>
		                        </a>
		                    </div>
		
		                    <div class="type8">
		                        <a href="#">
		                            <div class="type8_img">
		                                <img src="https://image.hanatour.com/usr/cms/resize/400_0/2014/08/06/10000/29f5a8df-4d32-444d-9543-22a7550edfdb.jpg" alt="">
		                            </div>
		                            <div class="type8_top_tag">
		                            </div>
		                            <div class="type8_title">
		                            	튀르키예(터키) 8,9,10일 #이스탄불 시내호텔 1박
		                            </div>
		                            <div class="type8_bottom_tag">
		                            	터키 국내선 2회 / 루프탑&해안절벽 레스토랑
		                            </div>
		                            <div class="type8_price">
		                                <span>
		                                    <strong>
		                                        3,099,000
		                                    </strong>
		                                </span>
		                                <span>원~</span>
		                            </div>
		                        </a>
		                    </div>
		                </div>
		
		                <div class="type9_type8_innner ">
		
		                    <div class="type8">
		                        <a href="#">
		                            <div class="type8_img">
		                                <img src="https://image.hanatour.com/usr/cms/resize/400_0/2018/12/19/10000/dab4ce12-cd58-4a9b-967f-1a92b40f49ea.jpg" alt="">
		                            </div>
		                            <div class="type8_top_tag">
		                            </div>
		                            <div class="type8_title">
		                            	괌 4,5일 #리조나레(구,온워드) #괌 최대 워터파크
		                            </div>
		                            <div class="type8_bottom_tag">
		                            	#BBQ 포함한 차모로 문화 이벤트
		                            </div>
		                            <div class="type8_price">
		                                <span>
		                                    <strong>
		                                        579,000
		                                    </strong>
		                                </span>
		                                <span>원~</span>
		                            </div>
		                        </a>
		                    </div>
		
		                    <div class="type8">
		                        <a href="#">
		                            <div class="type8_img">
		                                <img src="https://image.hanatour.com/usr/cms/resize/400_0/2022/02/22/10000/c73d3a4b-5b8b-4577-bc89-ad3c410e8df4.jpg" alt="">
		                            </div>
		                            <div class="type8_top_tag">
		                            </div>
		                            <div class="type8_title">
		                            	사이판 4,5일 #켄싱턴호텔 #고급 호캉스
		                            </div>
		                            <div class="type8_bottom_tag">
		                            	#객실에서 즐기는 오션뷰 #1일2회/3회 호텔식
		                            </div>
		                            <div class="type8_price">
		                                <span>
		                                    <strong>
		                                        779,000
		                                    </strong>
		                                </span>
		                                <span>원~</span>
		                            </div>
		                        </a>
		                    </div>
		
		                    <div class="type8">
		                        <a href="#">
		                            <div class="type8_img">
		                                <img src="https://image.hanatour.com/usr/cms/resize/400_0/2021/12/17/10000/f1611c85-330c-4960-8395-353888035362.jpg" alt="">
		                            </div>
		                            <div class="type8_top_tag">
		                            </div>
		                            <div class="type8_title">
		                            	시드니일주 6,7일 #베스트셀러 #갓성비
		                            </div>
		                            <div class="type8_bottom_tag">
		                            	#블루마운틴 힐링 트레킹 #근교까지 완전 일주
		                            </div>
		                            <div class="type8_price">
		                                <span>
		                                    <strong>
		                                        1,190,000
		                                    </strong>
		                                </span>
		                                <span>원~</span>
		                            </div>
		                        </a>
		                    </div>
		
		                    <div class="type8">
		                        <a href="#">
		                            <div class="type8_img">
		                                <img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/09/09/10000/049cb399-e510-47b5-bb93-9a138b7275e8.jpg" alt="">
		                            </div>
		                            <div class="type8_top_tag">
		                            </div>
		                            <div class="type8_title">
		                            	시드니/골드코스트/브리즈번 6,7일 #사우스뱅크
		                            </div>
		                            <div class="type8_bottom_tag">
		                            	#편안한 이동을 위한 호주 국내선 포함
		                            </div>
		                            <div class="type8_price">
		                                <span>
		                                    <strong>
		                                        1,399,000
		                                    </strong>
		                                </span>
		                                <span>원~</span>
		                            </div>
		                        </a>
		                    </div>
		                </div>
		
		                <div class="type9_type8_innner ">
		
		                    <div class="type8">
		                        <a href="#">
		                            <div class="type8_img">
		                                <img src="https://image.hanatour.com/usr/cms/resize/400_0/2024/01/29/10000/90400c57-3760-4259-b6d2-ca352faccd41.jpg" alt="">
		                            </div>
		                            <div class="type8_top_tag">
		                            </div>
		                            <div class="type8_title">
		                            	[7/6출발] 티벳(라싸)/서안 5일 #전문가동반 #호텔UP #대한항공
		                            </div>
		                            <div class="type8_bottom_tag">
		                            	역사 강사 썬킴과 함께하는 특별한 여행
		                            </div>
		                            <div class="type8_price">
		                                <span>
		                                    <strong>
		                                        3,399,000
		                                    </strong>
		                                </span>
		                                <span>원~</span>
		                            </div>
		                        </a>
		                    </div>
		
		                    <div class="type8">
		                        <a href="#">
		                            <div class="type8_img">
		                                <img src="https://image.hanatour.com/usr/cms/resize/400_0/2018/10/19/10000/b05267bf-fdfb-442b-9d0c-ba502f1cfb90.jpg" alt="">
		                            </div>
		                            <div class="type8_top_tag">
		                            </div>
		                            <div class="type8_title">
		                            	[초특가] 황산/항주 4일 #태평-운곡코스
		                            </div>
		                            <div class="type8_bottom_tag">
		                            	서해 대협곡 & 황산 특급 호텔 UP
		                            </div>
		                            <div class="type8_price">
		                                <span>
		                                    <strong>
		                                        499,000
		                                    </strong>
		                                </span>
		                                <span>원~</span>
		                            </div>
		                        </a>
		                    </div>
		
		                    <div class="type8">
		                        <a href="#">
		                            <div class="type8_img">
		                                <img src="https://image.hanatour.com/usr/cms/resize/400_0/2021/09/07/10000/9ffe952a-1c3f-4d6f-be02-7f2bd336beda.jpg" alt="">
		                            </div>
		                            <div class="type8_top_tag">
		                            </div>
		                            <div class="type8_title">
		                            	[깜짝특가] 상해/주가각 4일 #1일자유
		                            </div>
		                            <div class="type8_bottom_tag">
		                            	알찬 일정, 꽉 찬 혜택으로 즐기는 상해 여행
		                            </div>
		                            <div class="type8_price">
		                                <span>
		                                    <strong>
		                                        299,000
		                                    </strong>
		                                </span>
		                                <span>원~</span>
		                            </div>
		                        </a>
		                    </div>
		
		                    <div class="type8">
		                        <a href="#">
		                            <div class="type8_img">
		                                <img src="https://image.hanatour.com/usr/cms/resize/400_0/2021/09/13/10000/5e3e7d76-1f21-4c53-ac41-ed8f8dca1250.jpg" alt="">
		                            </div>
		                            <div class="type8_top_tag">
		                            </div>
		                            <div class="type8_title">
		                            	홍콩/마카오 3,4일 #베스트셀러 #스마트초이스
		                            </div>
		                            <div class="type8_bottom_tag">
		                            	다양한 로컬특식! 만족도 UP!
		                            </div>
		                            <div class="type8_price">
		                                <span>
		                                    <strong>
		                                        579,000
		                                    </strong>
		                                </span>
		                                <span>원~</span>
		                            </div>
		                        </a>
		                    </div>
		                </div>
		
		                <div class="type9_type8_innner ">
		
		                    <div class="type8">
		                        <a href="#">
		                            <div class="type8_img">
		                                <img src="https://image.hanatour.com/usr/cms/resize/400_0/2017/08/02/10000/316e9b64-ae7a-4a8e-8654-dda5eda28cae.jpg" alt="">
		                            </div>
		                            <div class="type8_top_tag">
		                            </div>
		                            <div class="type8_title">
		                            	미서부 9,10일#3대 캐년#요세미티국립공원
		                            </div>
		                            <div class="type8_bottom_tag">
		                            	라스베이거스 중심가 호텔 숙박
		                            </div>
		                            <div class="type8_price">
		                                <span>
		                                    <strong>
		                                        3,299,000
		                                    </strong>
		                                </span>
		                                <span>원~</span>
		                            </div>
		                        </a>
		                    </div>
		
		                    <div class="type8">
		                        <a href="#">
		                            <div class="type8_img">
		                                <img src="https://image.hanatour.com/usr/cms/resize/400_0/2021/05/07/10000/d9ae483b-6e7e-43ca-a29c-4dc12f1b71c0.jpg" alt="">
		                            </div>
		                            <div class="type8_top_tag">
		                            </div>
		                            <div class="type8_title">
		                            	캐나다 일주/뉴욕 12일 #로키 3대 국립공원 #나이아가라 폭포뷰 호텔
		                            </div>
		                            <div class="type8_bottom_tag">
		                            	마블 캐년 이지 트레킹 / 맨해튼 숙박
		                            </div>
		                            <div class="type8_price">
		                                <span>
		                                    <strong>
		                                        6,177,200
		                                    </strong>
		                                </span>
		                                <span>원~</span>
		                            </div>
		                        </a>
		                    </div>
		
		                    <div class="type8">
		                        <a href="#">
		                            <div class="type8_img">
		                                <img src="https://image.hanatour.com/usr/manual/md/2023/10/PL00114382/bnr_co.jpg" alt="">
		                            </div>
		                            <div class="type8_top_tag">
		                            </div>
		                            <div class="type8_title">
		                            	하와이 6,7일 #하얏트 리젠시 #오션뷰 #동부 해안 일주
		                            </div>
		                            <div class="type8_bottom_tag">
		                            	와이키키 중심 특급 호텔
		                            </div>
		                            <div class="type8_price">
		                                <span>
		                                    <strong>
		                                        3,083,600
		                                    </strong>
		                                </span>
		                                <span>원~</span>
		                            </div>
		                        </a>
		                    </div>
		
		                    <div class="type8">
		                        <a href="#">
		                            <div class="type8_img">
		                                <img src="https://image.hanatour.com/usr/cms/resize/400_0/2021/05/07/10000/1244cc06-7647-4841-a08e-60d5fa5a822f.jpg" alt="">
		                            </div>
		                            <div class="type8_top_tag">
		                            </div>
		                            <div class="type8_title">
		                            	미동부/캐나다 10일 #나이아가라 폭포 전망 객실
		                            </div>
		                            <div class="type8_bottom_tag">
		                            	맨해튼 엣지 전망대 / 랍스터 특식
		                            </div>
		                            <div class="type8_price">
		                                <span>
		                                    <strong>
		                                        5,599,000
		                                    </strong>
		                                </span>
		                                <span>원~</span>
		                            </div>
		                        </a>
		                    </div>
		                </div>
		                
		                <div class="type9_type8_innner ">
		
		                    <div class="type8">
		                        <a href="#">
		                            <div class="type8_img">
		                                <img src="https://image.hanatour.com/usr/cms/resize/400_0/2023/03/02/10000/257ed8e4-8a4d-4071-aeab-93b7268a4d72.jpg" alt="">
		                            </div>
		                            <div class="type8_top_tag">
		                            </div>
		                            <div class="type8_title">
		                            	오사카 3,4일 #100% 출발확정 #핵심관광
		                            </div>
		                            <div class="type8_bottom_tag">
		                            	오사카, 교토, 고베 등 간사이 인기관광지
		                            </div>
		                            <div class="type8_price">
		                                <span>
		                                    <strong>
		                                        699,900
		                                    </strong>
		                                </span>
		                                <span>원~</span>
		                            </div>
		                        </a>
		                    </div>
		
		                    <div class="type8">
		                        <a href="#">
		                            <div class="type8_img">
		                                <img src="https://image.hanatour.com/usr/cms/resize/400_0/2023/01/06/10000/a56bd195-7899-41b0-a4c4-54ec2fb15fff.jpg" alt="">
		                            </div>
		                            <div class="type8_top_tag">
		                            </div>
		                            <div class="type8_title">
		                            	다낭/호이안 4,5일 #가성비 추천 #바나힐 테마파크
		                            </div>
		                            <div class="type8_bottom_tag">
		                            	시내 4성 or 해변 5성 호텔
		                            </div>
		                            <div class="type8_price">
		                                <span>
		                                    <strong>
		                                        399,000
		                                    </strong>
		                                </span>
		                                <span>원~</span>
		                            </div>
		                        </a>
		                    </div>
		
		                    <div class="type8">
		                        <a href="#">
		                            <div class="type8_img">
		                                <img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/05/27/10000/1e04f20e-4526-4f2c-9030-c30b74d2dfae.jpg" alt="">
		                            </div>
		                            <div class="type8_top_tag">
		                            </div>
		                            <div class="type8_title">
		                            	나트랑/달랏 5일 #가성비 추천 #핵심관광
		                            </div>
		                            <div class="type8_bottom_tag">
		                            	영원한 봄의 도시 달랏 인기 관광지
		                            </div>
		                            <div class="type8_price">
		                                <span>
		                                    <strong>
		                                        349,000
		                                    </strong>
		                                </span>
		                                <span>원~</span>
		                            </div>
		                        </a>
		                    </div>
		
		                    <div class="type8">
		                        <a href="#">
		                            <div class="type8_img">
		                                <img src="https://image.hanatour.com/usr/cms/resize/400_0/2018/02/20/10000/e4ae8c00-c3b2-4b10-bfa0-a55cdbcfe85d.jpg" alt="">
		                            </div>
		                            <div class="type8_top_tag">
		                            </div>
		                            <div class="type8_title">
		                            	세부 5일 #실속 리조트 #핵심관광
		                            </div>
		                            <div class="type8_bottom_tag">
		                            	여유로운 1일 자유일정
		                            </div>
		                            <div class="type8_price">
		                                <span>
		                                    <strong>
		                                        281,000
		                                    </strong>
		                                </span>
		                                <span>원~</span>
		                            </div>
		                        </a>
		                    </div>
		                </div>
		                
		            </div>
		        </div>
		    </div>
<% 			
		} else if(dto.getType()==10) {
			
		} else if(dto.getType()==11) {
			
		}
		
//if(i==6) break;
	}
%>
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
    <!-- footer 종료 -->
</body>
<script 
		src="https://code.jquery.com/jquery-3.7.1.js" 
		integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" 
		crossorigin="anonymous">
</script>

<script src="<%=request.getContextPath() %>/hanatour/script/header.js"></script>
<script src="<%=request.getContextPath() %>/hanatour/script/tour_main_type.js"></script>
<script src="<%=request.getContextPath() %>/hanatour/script/lightpick.js"></script>
<script src="<%=request.getContextPath() %>/hanatour/script/footer.js"></script>
</html>