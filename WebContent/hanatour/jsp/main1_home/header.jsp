<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>하나투어 : 꿈꾸는 대로, 펼쳐지다</title>
    <!-- bsxlider css -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bxslider@4.2.17/dist/jquery.bxslider.min.css">

    <link rel="stylesheet" href="<%=request.getContextPath() %>/hanatour/css/header.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/hanatour/css/main_type.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/hanatour/css/main1_1.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/hanatour/css/footer.css">
</head>
<body>
   
   <header>
        <!-- header1_active -->
		<!-- header1_hidden -->
        <div class="
            header1_logout
            <%= (String)session.getAttribute("header1_logout") %>
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
            <%= (String)session.getAttribute("header1_login") %>
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

</body>
<!-- bx slider js -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> -->
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bxslider@4.2.17/dist/jquery.bxslider.min.js"></script>

<script src="<%=request.getContextPath() %>/hanatour/script/header.js"></script>
<script src="<%=request.getContextPath() %>/hanatour/script/main_type.js"></script>
<script src="<%=request.getContextPath() %>/hanatour/script/main1_home.js"></script>
<script src="<%=request.getContextPath() %>/hanatour/script/footer.js"></script>
</html>