<%@page import="dto.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	CategoryDao cDao = new CategoryDao();
	MainSearchDao mDao = new MainSearchDao();
	ArrayList<RecommendPackageOneInfoDto> recommendPackageOneInfo = mDao.recommendPackageOneInfo("태국");
	ArrayList<RecommendPackageDateDto> recommendPackageDate = mDao.recommendPackageDate();
	ArrayList<RecommendPackageCityDto> recommendPackageCity = mDao.recommendPackageCity();
	ArrayList<RecommendAttractionTopDto> recommendAttractionTop = mDao.recommendAttractionTop("태국");




	// 쓸지말지 보류
	ArrayList<CategoryPackageFlightInfoDto> categoryPackageFlight = cDao.categoryPackageFligthInfo();
	
	
%>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	 <link rel="stylesheet" href="../../css/header.css">
	  <link rel="stylesheet" href="../../css/footer.css">
	  <link rel="stylesheet" href="../../css/main_search.css">
	  <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
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
    <!-- header 끝 -->
    
     
    <!-- main 시작 -->
    <form action="page2">
	     <div id="main" class="center">
	     	<div class="center fl">
	     		<span class="purple_font">일본</span> 검색결과
	     	</div>
	     	<div id="oversea">
		     	<div class="border-bottom fl">
		     		<div class="big_font fl"><strong>해외여행</strong></div>
		     		<button type="submit" class="fr button">
		     			<div class="fl">해외여행 더보기</div>
		     			<img class="fl" src="https://image.hanatour.com/usr/static/img2/pc/its/icon_arrowright_32_black@3x.png">
		     		</button>
		     	</div>
		     	<!-- 여기 -->
		     	<%
		     		for(RecommendPackageOneInfoDto dto : recommendPackageOneInfo) {
		     	%>
			     	<div class="fl content_box grey_border ">
			     		<div class="fl">
			     			<img src="<%=dto.getImgUrl() %>" alt="해외여행 이미지" />
			     		</div>
			     		<div class="fl">
			     			<div><strong><%=dto.getPackageName() %></strong></div>
			     			<div>
			     				<div class="fl"><%=dto.getTravelPeriod() %> </div>
			     				<%
			     					for(RecommendPackageDateDto dateDto: recommendPackageDate) {
			     						if(dateDto.getPackageIdx() == dto.getPackageIdx()) {
			     				%>
			     					<div class="fl"><%=dateDto.getDepartureDate() %> ~ <%=dateDto.getArrivalDate()%></div>
			     				<%
			     						}
			     					}
			     				%>
			     				<div style="clear:both;"></div>
			     			</div>
			     			<div>
			     				<img class="fl" src="<%=dto.getLogo() %>" alt="항공사 이미지"/>
			     				<div class="fl"><%=dto.getName() %></div>
			     				<% 
			     					if(dto.getGuide().equals("T")) { 
			     				%>
			     					<div class="fl">가이드 동행</div>
			     				<%	
			     					} else {
			     				%>
			     					<div class="fl">가이드 비동행</div>
			     				<%
			     					}
			     				%>
			     				<% 
			     					if(dto.getShopping().equals("T")) { 
			     				%>
			     					<div class="fl"><%=dto.getShoppingTimes() %></div>
			     				<%	
			     					} else {
			     				%>
			     					<div class="fl">쇼핑없음</div>
			     				<%
			     					}
			     				%>
			     				
			     				<div style="clear:both;"></div>
			     			</div>
			     			<div>
			     				<div class="fl">패키지</div>
			     				<div class="fl"><%=dto.getBrand()%></div>
			     				<div class="fl">관광</div>
			     				<%
			     					if(dto.getGroupTravel().equals("T")) {	
			     				%>
			     					<div class="fl">단체</div>
			     				<%
			     					} else {
			     				%>
			     					<div class="fl">우리끼리여행</div>
			     				<%
			     					}
			     				%>
			     				<div style="clear:both;"></div>
			     			</div>
			     			<div>
			     				<img class="fl" src="https://image.hanatour.com/usr/static/img2/pc/its/ic_location_line.png" alt="위치표시"/>
			     				<div class="fl">
			     					<% 
			     						for (RecommendPackageCityDto cityDto : recommendPackageCity) { 
			     							if(cityDto.getPackageIdx() == dto.getPackageIdx()) {
			     					%>
			     							<%=cityDto.getCityName()%>
			     					<%
			     							}
			     						}
			     					%>
			     				</div>
			     				<div style="clear:both;"></div>
			     			</div>
			     			<div>
			     				<img class="fl" src="https://image.hanatour.com/usr/static/img2/pc/its/ic_star_solid.png" alt="보라색 별" />
			     				<div class="fl"><b><%=dto.getReviewStar() %></b></div>
			     				<div class="fl">(<%=dto.getReviewStar() %>)</div>
			     				<div style="clear:both;"></div>
			     			</div>
			     		</div>
			     		<div class="fl">
				     		<div><span><strong class="comma"><%=dto.getAdult() %></strong></span>원</div>
				     		<button type="button">
				     			<div>패키지 상세 보기<img src="https://image.hanatour.com/usr/static/img2/pc/its/ic_arrow@3x.png" alt="하단 화살표"></div>
				     		</button>
				     	</div>
				     	<div style="clear:both;"></div>
			     	</div>
		     	<%
		     		}
		     	%>
	     	
	     	<div id="inn"> <!-- 호텔 시작 -->
	     		<div class="border-bottom fl">
		     		<div class="big_font fl"><strong>호텔</strong></div>
		     		<button type="submit" class="fr button">
		     			<div class="fl">호텔 더보기</div>
		     			<img class="fl" src="https://image.hanatour.com/usr/static/img2/pc/its/icon_arrowright_32_black@3x.png">
		     			<div style="clear:both;"></div>
		     		</button>
		     	</div>
		     	
		     	<button type="submit" class="inn_content_box fl border inn_margin-right">
		     		<img class="fl" src="https://image.hanatour.com/usr/cms/resize/400_0/2023/07/04/10000/d1031320-896a-4d35-a9ab-69efef059084.jpg" alt="숙소 이미지"/>
		     		<div class="fl"><strong>칸데오 호텔스 오사카 남바</strong></div>
		     		<div class="fl">
		     			<div class="fl">호텔</div>
		     			<div class="fl">3.5급</div>
		     			<div style="clear:both;"></div>
		     		</div>
		     		<div class="fl">일본 오사카 ,osaka</div>
		     		<div class="fl">
		     			<img class="fl" src="https://image.hanatour.com/usr/static/img2/pc/its/ic_star_solid.png" alt="보라색별" />
		     			<div class="fl"><b>4.3</b></div>
		     			<div class="fl">(953)</div>
		     			<div style="clear:both;"></div>
		     		</div>
		     		<div class="fl"><span><strong>132,606</strong></span>원~</div>
		     		<div style="clear:both;"></div>
		     	</button>
		     	
		     	<button type="submit" class="inn_content_box fl border inn_margin-right">
		     		<img class="fl" src="https://image.hanatour.com/usr/cms/resize/400_0/2024/05/10/10000/62c2156d-65be-41bd-adbd-cc13a2f818a9.jpg" alt="숙소 이미지"/>
		     		<div class="fl"><strong>호텔 그레이서리 신주쿠</strong></div>
		     		<div class="fl">
		     			<div class="fl">호텔</div>
		     			<div class="fl">4성급</div>
		     			<div style="clear:both;"></div>
		     		</div>
		     		<div class="fl">일본 도쿄 ,tokyo</div>
		     		<div class="fl">
		     			<img class="fl" src="https://image.hanatour.com/usr/static/img2/pc/its/ic_star_solid.png" alt="보라색별" />
		     			<div class="fl"><b>4.3</b></div>
		     			<div class="fl">(1,181)</div>
		     			<div style="clear:both;"></div>
		     		</div>
		     		<div class="fl"><span><strong>191,330</strong></span>원~</div>
		     		<div style="clear:both;"></div>
		     	</button>
		     	
		     	<button type="submit" class="inn_content_box fl border inn_margin-right">
		     		<img class="fl" src="https://image.hanatour.com/usr/cms/resize/400_0/2023/01/25/10000/a220d314-52e9-4cac-8404-fc1e401cae78.jpg" alt="숙소 이미지"/>
		     		<div class="fl"><strong>호텔 한큐 레스파이어 오사카</strong></div>
		     		<div class="fl">
		     			<div class="fl">호텔</div>
		     			<div class="fl">4성급</div>
		     		</div>
		     		<div class="fl">일본 오사카 ,osaka</div>
		     		<div class="fl">
		     			<img class="fl" src="https://image.hanatour.com/usr/static/img2/pc/its/ic_star_solid.png" alt="보라색별" />
		     			<div class="fl"><b>4.3</b></div>
		     			<div class="fl">(1,181)</div>
		     			<div style="clear:both;"></div>
		     		</div>
		     		<div class="fl"><span><strong>191,330</strong></span>원~</div>
		     		<div style="clear:both;"></div>
		     	</button>
		     	
		     	<button type="submit" class="inn_content_box fl border inn_margin-right">
		     		<img class="fl" src="https://image.hanatour.com/usr/cms/resize/400_0/2022/09/20/10000/2275cd68-d4b5-45fc-8298-37590d07e2f3.jpg" alt="숙소 이미지"/>
		     		<div class="fl"><strong>크로스 라이프 하카타 텐진</strong></div>
		     		<div class="fl">
		     			<div class="fl">호텔</div>
		     			<div class="fl">3성급</div>
		     		</div>
		     		<div class="fl">일본 후쿠오카 ,fukuoka</div>
		     		<div class="fl">
		     			<img class="fl" src="https://image.hanatour.com/usr/static/img2/pc/its/ic_star_solid.png" alt="보라색별" />
		     			<div class="fl"><b>4.4</b></div>
		     			<div class="fl">(326)</div>
		     			<div style="clear:both;"></div>
		     		</div>
		     		<div class="fl"><span><strong>115,053</strong></span>원~</div>
		     		<div style="clear:both;"></div>
		     	</button>
		     	
		     	<button type="submit" class="inn_content_box fl border">
		     		<img class="fl" src="https://image.hanatour.com/usr/cms/resize/400_0/2020/05/06/120000/130a2d9d-ac36-4482-8b62-bd19727a11cf.jpg" alt="숙소 이미지"/>
		     		<div class="fl"><strong>신주쿠 워싱턴 호텔 메인</strong></div>
		     		<div class="fl">
		     			<div class="fl">호텔</div>
		     			<div class="fl">3.5성급</div>
		     		</div>
		     		<div class="fl">일본 도쿄 ,tokyo</div>
		     		<div class="fl">
		     			<img class="fl" src="https://image.hanatour.com/usr/static/img2/pc/its/ic_star_solid.png" alt="보라색별" />
		     			<div class="fl"><b>3.9</b></div>
		     			<div class="fl">(1,487)</div>
		     			<div style="clear:both;"></div>
		     		</div>
		     		<div class="fl"><span><strong>127,646</strong></span>원~</div>
		     		<div style="clear:both;"></div>
		     	</button>
		     	
	     	</div><!-- 호텔 끝 -->
	     	
	     	<div id="ticket"><!-- 투어입장권 시작 -->
	     		<div class="border-bottom fl">
		     		<div class="big_font fl"><strong>투어/입장권</strong></div>
		     		<button type="submit" class="fr button">
		     			<div class="fl">투어/입장권 더보기</div>
		     			<img class="fl" src="https://image.hanatour.com/usr/static/img2/pc/its/icon_arrowright_32_black@3x.png">
		     		</button>
		     	</div>
		     	
		     	<button type="submit" class="ticket_content_box fl border ticket_margin-right">
		     		<img src="https://static.hanatour.com/product/2024/04/15/0520u8di0p/medium.jpg" alt="투어/입장권 이미지"/>
		     		<div><strong>[일본] 오사카 유니버셜 스튜디오 재팬 입장권 티켓</strong></div>
		     		<div class="fl">입장권/패스</div>
		     		<div class="fl">오사카</div>
		     		<div class="fl">
		     			<img class="fl" src="https://image.hanatour.com/usr/static/img2/pc/its/ic_star_solid.png" alt="보라색별" />
		     			<div class="fl"><b>4.5</b></div>
		     			<div class="fl">(34)</div>
		     			<div style="clear:both;"></div>
		     		</div>
		     		<div class="fl"><span><strong>74,900</strong></span>원</div>
		     		<div style="clear:both;"></div>
		     	</button>
		     	
		     	<button type="submit" class="ticket_content_box fl border ticket_margin-right">
		     		<img src="https://static.hanatour.com/product/2024/04/15/0520u8di0p/medium.jpg" alt="투어/입장권 이미지"/>
		     		<div><strong>[즉시확정][일본] 오사카 유니버셜스튜디오 재팬 입장권 티켓 USJ</strong></div>
		     		<div class="fl">입장권/패스</div>
		     		<div class="fl">오사카</div>
		     		<div class="fl">
		     			<img class="fl" src="https://image.hanatour.com/usr/static/img2/pc/its/ic_star_solid.png" alt="보라색별" />
		     			<div class="fl"><b>5.0</b></div>
		     			<div class="fl">(2)</div>
		     			<div style="clear:both;"></div>
		     		</div>
		     		<div class="fl"><span><strong>49,400</strong></span>원</div>
		     		<div style="clear:both;"></div>
		     	</button>
		     	
		     	<button type="submit" class="ticket_content_box fl border ticket_margin-right">
		     		<img src="https://static.hanatour.com/product/2022/09/28/0242okofya/medium.jpg" alt="투어/입장권 이미지"/>
		     		<div><strong>[오사카] 일본 유니버셜 스튜디오 재팬 입장권 + 얼리파크인 #USJ #E티켓</strong></div>
		     		<div class="fl">입장권/패스</div>
		     		<div class="fl">오사카</div>
		     		<div class="fl">
		     			<img class="fl" src="https://image.hanatour.com/usr/static/img2/pc/its/ic_star_solid.png" alt="보라색별" />
		     			<div class="fl"><b>5.0</b></div>
		     			<div class="fl">(2)</div>
		     			<div style="clear:both;"></div>
		     		</div>
		     		<div class="fl"><span><strong>95,800</strong></span>원</div>
		     		<div style="clear:both;"></div>
		     	</button>
		     	
		     	<button type="submit" class="ticket_content_box fl border ticket_margin-right">
		     		<img src="https://static.hanatour.com/product/2023/12/01/0556q3dhtm/medium.jpg" alt="투어/입장권 이미지"/>
		     		<div><strong>(버라이어티7) 일본오사카 유니버셜스튜디오재팬 익스프레스7 입장시간랜덤권</strong></div>
		     		<div class="fl">입장권/패스</div>
		     		<div class="fl">오사카</div>
		     		<div class="fl">
		     			<img class="fl" src="https://image.hanatour.com/usr/static/img2/pc/its/ic_star_solid.png" alt="보라색별" />
		     			<div class="fl"><b>0</b></div>
		     			<div class="fl">(0)</div>
		     			<div style="clear:both;"></div>
		     		</div>
		     		<div class="fl"><span><strong>158,400</strong></span>원</div>
		     		<div style="clear:both;"></div>
		     	</button>
		     	
		     	<button type="submit" class="ticket_content_box fl border">
		     		<img src="https://static.hanatour.com/product/2024/04/25/0634ferunu/medium.jpg" alt="투어/입장권 이미지"/>
		     		<div><strong>[USJ식사&쇼핑쿠폰 증정][오사카] 일본 유니버셜 스튜디오 재팬 1일 입장권(성인권)</strong></div>
		     		<div class="fl">입장권/패스</div>
		     		<div class="fl">오사카</div>
		     		<div class="fl">
		     			<img class="fl" src="https://image.hanatour.com/usr/static/img2/pc/its/ic_star_solid.png" alt="보라색별" />
		     			<div class="fl"><b>5.0</b></div>
		     			<div class="fl">(1)</div>
		     			<div style="clear:both;"></div>
		     		</div>
		     		<div class="fl"><span><strong>74,900</strong></span>원</div>
		     		<div style="clear:both;"></div>
		     	</button>
		     	<div style="clear:both;"></div>
		     	
	     	</div><!-- 투어입장권 종료 -->
	     	
	     	
	     	<div id="attraction"><!-- 추천여행지 시작 -->
	     		<div class="border-bottom">
		     		<div class="big_font fl"><strong>추천여행지</strong></div>
		     		<div style="clear:both;"></div>
		     	</div>
		     	<div class="attraction_content_box">
		     	
		     		<div id="recommend_top">
		     			<% 
		     				int cnt = 0;
		     				for(RecommendAttractionTopDto dto : recommendAttractionTop) {
		     					cnt++;
		     			%>
			     			<div class="recommend_circle ">
			     				<img src="<%=dto.getImgUrl() %>" alt="동그라미 이미지"/>
			     				<div> <%=dto.getAttractionKor() %> </div>
			     			</div>
			     			<!-- 
			     			<div style="<%=(cnt>1 ? "display:none;" : "")%>">
			     				<div class="recommend_middle">
						     		<div class="attraction_ex">
							     		 <img class="fl border" src=" <%=dto.getImgUrl() %> " alt="네모난 이미지" />
							     		 <div class="fl border">
							     		 	<div><strong><%=dto.getAttractionKor() %></strong></div>
							     		 	<div><%=dto.getDetailedEx() %></div>
							     		 </div>
							     		 <div style="clear:both;"></div>
						     		 </div>
					     		</div>
					     	</div>
					     	  -->
					     	
		     			<%
		     				}
		     			
		     			%>
		     			<div style="clear:both;"></div>
		     		</div> 
		     		<% 
		     			for(RecommendAttractionTopDto dto : recommendAttractionTop) {
		     		%>
			      	<div id="recommend_middle">
			     	
			     		<div class="attraction_ex">
				     		 <img class="fl" src=" <%=dto.getImgUrl() %>" alt="네모난 이미지" />
				     		 <div class="fl">
				     		 	<div><strong><%=dto.getAttractionKor() %></strong></div>
				     		 	<div><%=dto.getDetailedEx() %></div>
				     		 </div>
				     		 <div style="clear:both;"></div>
			     		 </div>
			     		 
			     	</div>
			     	<%
		     			}
			     	%>
		     		<div id="recommend_bottom">
		     			<div class="recommend_product">
		     				<img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/06/25/10000/cf716226-428e-42fb-bee3-0287c7c053da.jpeg" alt="여행지 사진"/>
		     				<div>해외여행</div>
		     				<div><strong>[4명이상 출발확정] 규슈/아소/이토시마 3일 #온천의정석 #핫이슈이토시마 #담당자추천 #뇨이린지 #유후인산책 #밀크팩토리 #라라포트</strong></div>
		     				<div><span><strong>849,000</strong></span>원</div>
		     			</div>
		     		</div>
		     		
		     	</div>
		     	<div style="clear:both;"></div>
		     	
		    
		     	
		     </div><!-- 추천여행지 종료 -->
		                                                                                        
		    <div id="flight" class="border"><!-- 항공 시작 -->
		    	<div class="border-bottom fl">
		     		<div class="big_font fl"><strong>항공</strong></div>
		     	</div>
		     	<div class="fl">
		     		<button type="button" class="fl">
		     			<div>출발지</div>
		     			<div>인천/김포</div>
		     		</button>
		     		<img class="fl" src="https://image.hanatour.com/usr/static/img2/pc/its/ic_flying_solid@3x.png" alt="항공표"/>
		     		<button type="button" class="fl">
		     			<div>도착지</div>
		     			<div>도쿄 국제공항</div>
		     		</button>
		     		<div class="fl">
		     			<div>
		     				<button type="button" class="fl">06.13(목)~06.16(일)</button>
		     				<button type="button" class="fl">직항</button>
		     			</div>
		     			<button type="button">성인 1명  일반석 </button>
		     		</div>
		     		<button class="fl">항공권 검색</button>
		     		<div style="clear:both;"></div>
		     	</div>
		     	<div style="clear:both;"></div>
		    </div><!-- 항공 종료 -->
		    
		    <div id="FAQ" class="border"><!-- 자주 찾는 질문 시작 -->
		    	<div class="border-bottom fl">
		     		<div class="big_font fl"><strong>자주 찾는 질문</strong></div>
		     		<button type="submit" class="fr button">
		     			<div class="fl">자주 찾는 질문 더보기</div>
		     			<img class="fl" src="https://image.hanatour.com/usr/static/img2/pc/its/icon_arrowright_32_black@3x.png">
		     			<div style="clear:both;"></div>
		     		</button>
		     		<div style="clear:both;"></div>
		     	</div>
		     	<div class="faq_content_box">
		     		<div class="fl">Q</div>
		     		<div class="fl">
		     			<details>
		     				<summary>
		     					<div>[골프여행  < 일본골프]</div>
		     					<div>[일본]일본어를 할 줄 몰라도 괜찮을까요?</div>
		     				</summary>
		     				<div>
		     					<div>
		     						일본어를 잘 모르셔도 걱정할 필요는 없습니다. 공항에서는 고객님 성함이 적힌 피켓을 들고 있는 일본인 기사와 미팅 후 차량에 탑승합니다. 골프장 또는 호텔로 이동 후 골프장/호텔 프론트에 여권을 제시하면 예약 확인 후 예약에 따라 현지 직원이 친절하게 안내해 드립니다. 이 후 일정은 일정표에 기재된 미팅 시간, 티업 시간, 라운드 후 픽업 시간에 따라 진행되므로 확정 일정표에 기재된 시간을 잘 지켜 주시면 문제 없이 일본 골프 여행을 즐길 수 있습니다.
		     					</div>
		     				</div>
		     			</details>
		     		</div>
		     		<div class="fl">
		     			<img src="../../img/tour_img/down_grey.png" alt="하단화살표" />
		     		</div>
		     		<div style="clear:both;"></div>
		     	</div>
		     	
		     	<div class="faq_content_box">
		     		<div class="fl">Q</div>
		     		<div class="fl">
		     			<details>
		     				<summary>
		     					<div>[골프여행  < 일본골프]</div>
		     					<div>[일본]라운드 진행 순서를 알고 싶어요</div>
		     				</summary>
		     				<div>
		     					<div>1. 공항 도착 시간에 맞춰 일본인 기사 또는 한국인 코디네이터가 입국장에 미팅 보드를 들고 나옵니다. (상품별 상이)</div>
		     					<div>2. 전용 차량 또는 송영(셔틀) 차량을 타고 골프장에 도착 후, 프론트에서 여권으로 체크인을 하면 예약된 골프장 직원들이 티업 준비를 도와드립니다. </div>
		     					<div>3. 라운드 종료 시간에 맞추어 전용 차량 또는 송영(셔틀) 차량이 미리 대기하고 있습니다.</div>
		     					<div>4. 호텔 체크인 시 손님의 이름으로 예약이 되어 있으므로 여권을 제시하면 객실 키를 드립니다. </div>
		     					<div>5. 행사 진행은 확정 일정표에 명시된 픽업 시간, 티업 시간, 라운드 후 픽업 시간 대로 정확하게 진행되므로 반드시 확정된 시간을 엄수해 주시기 바랍니다.</div>
		     					<div>6. 천재지변, 기상 악화 등 골프장에서 인정하는 라운드 중지 조건을 제외한, 자의에 의한 라운드 취소는 별도로 환불 되지 않습니다. </div>
		     					<div>7. 일본은 기본적으로 9홀 플레이 후 중식 또는 휴식(약 40분-2시간)이 진행되고, 그 이후 9홀 플레이로 1라운드(18홀)가 진행됩니다.</div>
		     				</div>
		     			</details>
		     		</div>
		     		<div class="fl">
		     			<img src="../../img/tour_img/down_grey.png" alt="하단화살표" />
		     		</div>
		     		<div style="clear:both;"></div>
		     	</div>
		     	
		     	<div class="faq_content_box">
		     		<div class="fl">Q</div>
		     		<div class="fl">
		     			<details>
		     				<summary>
		     					<div>[골프여행  < 일본골프]</div>
		     					<div>[일본]일본 지역은 가이드가 없어 불안해요</div>
		     				</summary>
		     				<div>
		     					<div>
		     						골프장 픽업 시간, 골프장 티업 시간, 골프장에서 호텔로 출발하는 시간 등이 정확한 시간 예약에 의해서 행사가 진행되기 때문에 가이드가 없어도 문제 없이 라운드를 즐길 수 있습니다.
		     					</div>
		     				</div>
		     			</details>
		     		</div>
		     		<div class="fl">
		     			<img src="../../img/tour_img/down_grey.png" alt="하단화살표" />
		     		</div>
		     		<div style="clear:both;"></div>
		     	</div>
		     	
		     	<div class="faq_content_box">
		     		<div class="fl">Q</div>
		     		<div class="fl">
		     			<details>
		     				<summary>
		     					<div>[골프여행  < 일본골프]</div>
		     					<div>셀프 플레이와 캐디+카트 플레이란 무엇인가요?</div>
		     				</summary>
		     				<div>
		     					<div>
		     						우리나라와는 달리 일본은 캐디를 사용하지 않아도 되는 골프장이 많습니다.
									셀프 플레이란 캐디를 사용하지 않고 카트를 직접 운전하며 라운드를 하는 것을 말하며 대체로 붐비는 골프장이나 고급 골프장이 캐디+카트 플레이로 진행됩니다. 최상급 골프장의 경우 캐디+도보 플레이로 진행되는 경우도 있습니다.
		     					</div>
		     				</div>
		     			</details>
		     		</div>
		     		<div class="fl">
		     			<img src="../../img/tour_img/down_grey.png" alt="하단화살표" />
		     		</div>
		     		<div style="clear:both;"></div>
		     	</div>
		     	
		     	<div class="faq_content_box">
		     		<div class="fl">Q</div>
		     		<div class="fl">
		     			<details>
		     				<summary>
		     					<div>[트레킹.레포츠.크루즈 < 크루즈]</div>
		     					<div>[크루즈] 지역 별 주요 운항시즌은 언제인가요?</div>
		     				</summary>
		     				<div>
		     					<div>지역 별 크루즈 운항 시즌은 아래와 같습니다.</div>
		     					<div>■ 동남 아시아 – 11월3월 싱가폴, 말레이시아, 태국 운항</div>
		     					<div>■ 동북 아시아 – 4월~10월 한국, 중국, 일본 운항</div>
		     					<div>■ 서부 지중해 - 연중가능 (이탈리아/스페인/프랑스/몰타)</div>
		     					<div>■ 동부 지중해 – 5월~10월 (그리스/터키/이탈리아/크로아티아)</div>
		     					<div>■ 알래스카 - 5월~9월 / 빙하체험과 피오르드 등 대자연 경관을 감상하는 일정 운항</div>
		     					<div>■ 카리브해 - 연중 가능 / 다양한 수중 액티비티와 선사의 사유섬에서 휴양하는 일정</div>
		     					<div>■ 북유럽 - 5월~8월 / 산과 피요르드의 대자연 경관 감상 및 덴마크, 스웨덴, 핀란드 등 북유럽의 도시 운항</div>
		     				</div>
		     			</details>
		     		</div>
		     		<div class="fl">
		     			<img src="../../img/tour_img/down_grey.png" alt="하단화살표" />
		     		</div>
		     		<div style="clear:both;"></div>
		     	</div>
		     	
		     	<div class="faq_content_box">
		     		<div class="fl">Q</div>
		     		<div class="fl">
		     			<details>
		     				<summary>
		     					<div>[트레킹.레포츠.크루즈 < 크루즈]</div>
		     					<div>[트레킹] 계절별 해외 추천지역은 어디인가요?</div>
		     				</summary>
		     				<div>
		     					<div>계절별 해외 트레킹 추천지역은 다음과 같습니다.</div>
		     					<div>봄 - 치앙마이 도이인타논, 베트남 판시판, 대만(옥산, 설산, 아리산, 양명산)</div>
		     					<div>여름 - 일본 (후지산, 북알프스, 중앙알프스, 남알프스, 북해도 대설산), 유럽, 캐나다, 몽골, 러시아</div>
		     					<div>가을 - 일본 다테야마, 중앙아시아</div>
		     					<div>겨울 - 네팔 트레킹, 밀포드 트레킹</div>
		     				</div>
		     			</details>
		     		</div>
		     		<div class="fl">
		     			<img src="../../img/tour_img/down_grey.png" alt="하단화살표" />
		     		</div>
		     		<div style="clear:both;"></div>
		     	</div>
		     	
		     	<div class="faq_content_box">
		     		<div class="fl">Q</div>
		     		<div class="fl">
		     			<details>
		     				<summary>
		     					<div>[해외항공권 < 예약.대기]</div>
		     					<div>여권정보가 확실하지 않습니다.</div>
		     				</summary>
		     				<div >
		     					여권 발급 완료 후 결제하시길 권장하나 여권 발급 예정자이신 경우, 결제 시 정확한 탑승객 영문 이름으로 예약하시고 여권 정보는 임의로 입력하시면 결제가 가능합니다.
		     					<br/><br/>
		     					<div class="purple_font">여권 발급 완료 후 결제하시길 권장하나 여권 발급 예정자이신 경우, 결제 시 정확한 탑승객 영문 이름으로 예약하시고 여권 정보는 임의로 입력하시면 결제가 가능합니다.
		     					하문항공, 중국국제항공, 중국동방항공, 우즈베키스탄항공, 아마조나스항공, 아르헨티나항공, 사천항공, 일본 항공, 에어아스타나항공, 라탐항공, 시베리아항공, 홍콩항공, 러시아항공(러시아 지역 출/도착시에만 해당)의 경우 여권정보 수정이 불가하오니 반드시 정확한 여권 정보 입력 후 결제 진행하셔야 합니다.</div>
		     				</div>
		     			</details>
		     		</div>
		     		<div class="fl">
		     			<img src="../../img/tour_img/down_grey.png" alt="하단화살표" />
		     		</div>
		     		<div style="clear:both;"></div>
		     	</div>
		     	
		     	<div class="faq_content_box">
		     		<div class="fl">Q</div>
		     		<div class="fl">
		     			<details>
		     				<summary>
		     					<div>[해외호텔 < 요금.객실]</div>
		     					<div>"세미룸"이란 무엇인가요?</div>
		     				</summary>
		     				<div>
		     				<span class="purple_font">일본</span>지역 호텔에 많은 '세미룸'이란 경제적으로 객실을 이용하고자 일반룸보다 작은 사이즈의 객실 크기와 침대를 지닌 룸으로 세미더블룸의 경우 남/여 고객분이나 여/여 고객분들이 대부분 이용하며 남자 두 분이 이용하실 경우 불편할 수 있습니다.
		     				</div>
		     			</details>
		     		</div>
		     		<div class="fl">
		     			<img src="../../img/tour_img/down_grey.png" alt="하단화살표" />
		     		</div>
		     		<div style="clear:both;"></div>
		     	</div>
		     	<div style="clear:both;"></div>
		    </div>
		    <!-- 자주 찾는 질문 종료 -->
	  
	     	<div style="clear:both;"></div>
	     </div>
     </form>
    
 
    
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
<script src="../../script/header.js"></script>
<script src="../../script/main_search.js"></script>
<script src="../../script/footer.js"></script>
</html>