<%@page import="dto.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.DomesticHotelDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
DomesticHotelDao dhDao = new DomesticHotelDao();
ArrayList<DomesticHotelDto> listInfo = dhDao.getHotelInfoListAll();
ArrayList<InnReviewDto> listReview = dhDao.getDomesticReviewAll();
ArrayList<InnReviewAvgDto> listReviewAvg = dhDao.getReviewAvg();
ArrayList<RoomTypeDto> roomInfo = dhDao.getRoomInfo(3);
ArrayList<RoomDetailTypeDto> roomDetailInfo = dhDao.getRommDetailInfo(3);
ArrayList<DomesticOptionDto> showOption = dhDao.getRoomOption(8);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.7.1.js"
	integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
	crossorigin="anonymous"></script>
<script>
		$(function() {
			$("#btn_modal").click(function(){
				$(".entire").fadeIn().css('display');
			});
			$("#btn_close").click(function() {
				$(".entire").fadeOut();
			});
			$(".location").click(function(){
				$(".modal_location_inner").show();c 
			});

/* 			$(".background").click(function() {
				$(".modal_location_inner").hide();				
			}); */
			$(".btn_location_close").click(function() {
				$(".modal_location_inner").hide();
			});
	 
			 
			/* $(".type_inner").click(function(){
				let div1 = $(".detail_type_subtitle");
					alert(div1.text());
			}); */
/* 			$("#more_type_img").click(function() {
				$(".entire").fadeIn().css('display');
			});
			$("#btn_close_img").click(function() {
				$(".entire").fadeOut();
			}); */
			$(".type_inner").click(function() {
				$(".set_price_info").show();
			});
			$("#more_type_img").click(function() {
				$(".room_info_entire").show();
			});
			$(".room_modal_close").click(function() {
				$(".room_info_entire").hide();
			});
			//$(document).ready(function() {
				$("#final_room_num").change(function() {
					var selectedRoomPrice = parseInt($(this).val());
					var roomPriceResult = selectedRoomPrice * value;
					
					$("#final_price_middle").text(roomPriceResult);
				});
			//});
			/* $(".background").on('touchmove scroll mousewheel', function(e) {
				console.log(1);
				e.stopPropagation();
				e.preventDefault();
				console.log('stop it!');
			}); */
			/* final_room_num final_price_middle */
			<%-- $(document).ready(function () {
				$("#final_room_num").change(function() {
					var num = <%=optionDto.getPrice()%>;
					var paramValue = parseInt($(this).val());
					
					if (!isNaN(paramValue)) {
	                    var result = num * paramValue; // 계산된 결과

	                    // 결과를 화면에 표시
	                    $("#final_price_middle").text("객실요금 : " + result + "원 / 옵션가 : 0원");
	                }
				});
			}); --%>
			
			$(function() {
				new Swiper('.swiper', {
				    slidesPerView : 'auto',
				    spaceBetween : 2,
				    autoplay: {
			        	delay: 2000, // 시작시간 설정
			      	},
				});
			});
			
		});
	</script>
<title>하나투어 : 꿈꾸는 대로, 펼쳐지다</title>
<link rel="stylesheet" href="../../css/header.css">
<link rel="stylesheet" href="../../css/footer.css">
<link rel="stylesheet" href="../../css/domestic_hotel_detail.css">
</head>
<body>
	<header>
		<!-- header1 -->
		<div class="header1">
			<div class="login fr">
				<span class="fl"> <a href="">로그인</a>
				</span> <span class="fl"> <a href="">회원가입</a>
				</span> <span class="fr"> <a href="">고객센터</a>
				</span> <span style="clear: both;"></span>
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
						<input type="text" name="search_keyword"
							placeholder="검색어를 입력해 주세요">
						<button class="search_btn">
							<img src="../../img/header/ico-search.png" alt="돋보기">
						</button>
					</form>
				</div>
				<div class="trending_search fl">
					<img src="../../img/header/osaka.png" alt="osaka">
					<div class="trending_hover">
						<div>
							<img src=../../img/header/trending_search.png " alt="인기검색어">
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
					<a href="#"> <img src="../../img/header/ico-haeder-choice.png"
						alt="">

					</a>
				</div>
				<div class="mypage_item2 fr">
					<a href="#"> <img
						src="../../img/header/ico-reservationhistory.png" alt="">
					</a>
				</div>
				<div class="mypage_item3 fr">
					<a href=""> <img src="../../img/header/ico-mymenu.png" alt="">
					</a>
				</div>
				<div style="clear: both;"></div>
			</div>

			<div style="clear: both;"></div>
		</div>

		<!-- header3 -->
		<div class="header3">
			<div class="menu">
				<div class="menu_left fl" id="menu_left">
					<a href="#"> <img src="../../img/header/ico-hamburgermenu.png"
						alt="">
					</a>

					<div class="sub_menu_container smc_hide" id="sub_menu_container">
						<div class="sub_menu">
							<div class="sub_top">
								<div class="sub_item fl">
									<div>
										<a href="#"> 해외여행 </a>
									</div>
									<div>
										<a href="#"> 해외여행 홈 </a>
									</div>
								</div>
								<div class="sub_item fl">
									<div>
										<a href=""> 항공 </a>
									</div>
									<div>
										<a href="#"> 항공예약 </a>
									</div>
								</div>
								<div class="sub_item fl">
									<div>
										<a href="#"> 호텔 </a>
									</div>
									<div>
										<a href="#"> 해외호텔 </a>
									</div>
									<div>
										<a href="#"> 국내숙박 </a>
									</div>
								</div>
								<div class="sub_item fl">
									<div>
										<a href="#"> 국내여행 </a>
									</div>
									<div>
										<a href="#"> 제주여행 </a>
									</div>
									<div>
										<a href="#"> 내륙여행 </a>
									</div>
									<div>
										<a href="#"> 울릉도/섬 </a>
									</div>
									<div>
										<a href="#"> 내나라여행 </a>
									</div>
									<div>
										<a href="#"> 국내골프 </a>
									</div>
								</div>
								<div class="sub_item fl">
									<div>
										<a href="#"> 연계서비스 </a>
									</div>
									<div>
										<a href="#"> 하나투어상품권 </a>
									</div>
									<div>
										<a href="#"> 포켓와이파이 </a>
									</div>
								</div>
								<div class="sub_item fl">
									<div>
										<br>
									</div>
									<div>
										<a href="#"> 하나트래비즈 </a>
									</div>
									<div>
										<a href="#"> 하나투어 기프트카드 </a>
									</div>
									<div>
										<a href="#"> 여행자보험 </a>
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
										<a href=""> 테마여행 </a>
									</div>
									<div>
										<a href="#"> 허니문 </a>
									</div>
									<div>
										<a href="#"> 해외골프 </a>
									</div>
									<div>
										<a href="#"> 크루즈 </a>
									</div>
									<div>
										<a href="#"> 트래킹 </a>
									</div>
									<div>
										<a href="#"> 제우스 </a>
									</div>
									<div>
										<a href="#"> MICE </a>
									</div>
								</div>
								<div class="sub_item fl">
									<div>
										<a href="#"> 투어/입장권 </a>
									</div>
									<div>
										<a href="#"> 투어/입장권 홈 </a>
									</div>
								</div>
								<div class="sub_item fl">
									<div>
										<a href="#"> 혜택/이벤트 </a>
									</div>
									<div>
										<a href="#"> 이벤트 </a>
									</div>
									<div>
										<a href="#"> 할인/혜택 </a>
									</div>
									<div>
										<a href="#"> 여행기획전 </a>
									</div>
								</div>
								<div class="sub_item fl">
									<div>
										<a href="#"> 하나투어 셀렉션 </a>
									</div>
									<div>
										<a href="#"> 하나LIVE </a>
									</div>
									<div>
										<a href="#"> 하나Original </a>
									</div>
									<div>
										<a href="#"> 밍글링투어 </a>
									</div>
									<div>
										<a href="#"> 마일리지 클럽 </a>
									</div>

								</div>
								<div class="sub_item fl">
									<div>
										<br>
									</div>
									<div>
										<a href="#"> 하나팩 2.0 </a>
									</div>
									<div>
										<a href="#"> 개런티 프로그램 </a>
									</div>
									<div>
										<a href="#"> SAFETY&JOY </a>
									</div>
									<div>
										<a href="#"> 우리끼리 </a>
									</div>
								</div>
								<div style="clear: both;"></div>
							</div>
							<!-- sub_bottom close -->
						</div>
						<!-- sub_menu close -->
						<div class="sub_menu_close" id="sub_menu_close">
							<a href="#"> <img
								src="../../img/header/ico-alllmenu_close.png" alt="">
							</a>
						</div>
					</div>
					<!-- sub_menu_container close -->
				</div>
				<!-- menu_left close -->

				<div class="menu_center fl">
					<ul>
						<li><a href="">베스트</a>
							<div></div></li>
						<li class="menu_center_sub1"><a href="#">해외여행</a>
							<div></div></li>
						<li><a href="#">항공</a>
							<div></div></li>
						<li><a href="#">호텔</a>
							<div></div></li>
						<li><a href="#">항공+호텔</a>
							<div></div></li>
						<li><a href="#">투어/입장권</a>
							<div></div></li>
						<li><a href="#">국내여행</a>
							<div></div></li>
						<li><a href="#">테마여행</a>
							<div></div></li>
						<li><a href="#">제우스</a>
							<div></div></li>
						<li><a href="#">하나LIVE</a>
							<div></div></li>
					</ul>
				</div>
				<div class="menu_right fr">
					<ul>
						<li><a href="#">이달의 혜택</a></li>
						<li><a href="#">맞춤여행</a></li>
						<li><a href="#">여행기획전</a></li>
					</ul>
				</div>
				<div style="clear: both"></div>
			</div>
		</div>
	</header>


	<!-- CONTENT -->
	<div id="content" class="center">
		<form action="domestic_search.jsp">
			<div class="top">
				<div class="top_box">
					<div class="search_area fl">

						<!-- start -->

						<label class="location"> <input type="text"
							style="border: none;" placeholder="숙소명, 지역 입력">
						</label>
						<div class="modal_location">
							<div class="modal_location_inner">
								<div class="modal_location_title">숙소명 검색</div>
								<div class="modal_location_bottom">
									<label class="label_location"> <input type="text"
										placeholder="지역명이나 숙소명을 입력해주세요">
									</label>
								</div>
								<button type="button" class="btn_location_close"></button>
							</div>
						</div>

						<!-- end -->

						<!--     				<label for="area">
    					<input type="text" id="area" class="search_area_inner" placeholder = "숙소명, 지역 입력">
    				</label> -->
					</div>
					<div class="search_button fr">
						<input type="submit" id="top_search" class="top_search_btn"
							value="숙소 검색">
					</div>

					<label for="checkin" class="div_guest_num fr"> <input
						type="text" placeholder="객실 1, 성인 2명, 소아 0명"
						class="div_guest_num_input">
					</label> <label for="checkin" class="checkin_date fr"> <input
						type="text" id="checkin"
						placeholder="2024.07.08(월) - 2024.07.09(화) 1박"
						class="checkin_date_inner">
					</label>
				</div>
			</div>
		</form>


		<div class="bottom">

			<%
			DomesticHotelDto dto = listInfo.get(0);
			%>
			<!-- DomesticHotelDto 객체의 참조값/dto: 지역변수 -->
			<div class="bottom_content">
				<div class="thumb fl">
					<img src="<%=dto.getInn_img_url()%>">
					<button type="button" id="btn_modal" class="more_img_btn"><%=dhDao.getImgNum()%>+
					</button>
				</div>
				<div class="img_bottom	 fl">
					상품코드<strong>DHH000909</strong>
					<button type="button" id="share" class="share_btn"></button>
				</div>
				<div class="entire">
					<div class="background">
						<div class="modal_box">
							<div class="modal_header">
								<div class="fl">
									롯데호텔월드 <span class="fl">5성급</span>
								</div>
								<div class="fr" style="width: 46px; height: 36px;">
									<button type="button" id="btn_close" class="modal_close"></button>
								</div>
							</div>
							<div class="modal_body">
								<button type="button" class="img_next_btn"></button>
								<button type="button" class="img_prev_btn"></button>
								<img
									src="https://img.webtour.com/WebUpload/CMS/800/2023122011045091637854.jpg">
							</div>
						</div>
					</div>
				</div>
				<!-- 이미지 옆 내용 -->
				<div class="content_right">
					<div>
						<span class="star"> <%=dto.getStar()%>성급
						</span><%=dto.getInn_kor()%>서울신라호텔
					</div>
					<div class="text_box">
						<span class="text">전 객실 금연</span> <span class="text">인터넷 유,
							무선 무료</span> <span class="text">체련장(Gym), 실내수영장 무료</span>
					</div>
					<div class="address_box">
						주소 :
						<%=dto.getAddress()%><br /> Tel :
						<%=dto.getPhone()%><br /> 홈페이지 : <a
							href="<%=dto.getHomepage_url()%>"><%=dto.getHomepage_url()%></a>
					</div>
					<%
					int minPrice = dto.getMin_price();
					String formattedPrice = String.format("%,d", minPrice);
					%>

					<div class="price_box">
						<div class="fl">
							<strong>1박 요금 최저가</strong>
						</div>
						<div class="fl">
							<div class="real_price">
								<span> <%=formattedPrice%>
								</span>원~
							</div>
							<div class="real_price_bottom">객실 세금/봉사료 포함</div>
						</div>
					</div>
				</div>
			</div>


			<!-- 객실선택부터 여행후기 마지막까지 -->
			<form action="domestic_reservation.jsp">
				<div class="bottom_info_box">
					<h3 class="title">객실선택&예약하기</h3>
					<div class="roomtype_box">
						<div class="all">
							<!-- <div class="all_type">전체 타입</div> -->
							<label class="all_type"> <input type="radio"
								name="choose_roomtype" value="show_all">전체 타입
							</label>
						</div>
						<div class="type_box">
							<%
							for (RoomTypeDto roomDto : roomInfo) {
							%>
							<label class="type" name="choose_roomtype"> <input
								type="radio" name="choose_roomtype" value="deluxe_double"><%=roomDto.getRoom_type()%>
								<button type="button" id="more_type_img" class="btn_show_type">객실정보보기</button>
							</label>


							<!-- 객실정보보기 모달창 -->
							<div class="room_info_entire">
								<div class="room_info_background">
									<div class="room_modal_box">
										<div class="room_modal_header">
											<div class="fl">디럭스 패밀리 트윈룸 (기본3/최대3인)</div>
											<button type="button" id="room_btn_close"
												class="room_modal_close fr"></button>
										</div>
										<div class="room_modal_body">
											<img
												src="https://www.webtour.com/WebUpload/CMS/800/2022050617400098345127.jpg">
										</div>
									</div>
								</div>
							</div>

							<!-- 객실정보보기 모달창 -->
							<!-- <div class="entire">
							<div class="background">
								<div class="modal_box">
									<div class="modal_header">
										<div class="fl">
											롯데호텔월드 
											<span class="fl">5성급</span>
										</div>
										<button type="button" id="btn_close_img" class="modal_close fr"></button>
									</div>
									<div class="modal_body">
										<img src="https://img.webtour.com/WebUpload/CMS/800/2023122011045091637854.jpg">
									</div>
								</div>
							</div>
						</div> -->
							<%
							}
							%>
						</div>
						<div id="show_bottom_box" class="type_bottom">
							<div class="calendar fl">
								<img src="../../img/main6_domestic_inn/calendar.png">
							</div>
							<div class="type_inner_box fr">
								<%
								for (RoomDetailTypeDto detailDto : roomDetailInfo) {
								%>
								<!-- 타입하나 -->
								<div class="type_inner">



									<!-- 요기 -->
									<a href="#show_bottom_box" class="type_inner_a">
										<div class="type_inner_inform fl">
											<div class="max_num_info">
												<div class="num_box fl">
													<%=detailDto.getPersonnel()%>인/최대<%=detailDto.getMax_personnel()%>인
												</div>
												<div class="cancel_status fl">취소불가</div>
											</div>
											<div class="detail_type_title">




												<!-- 질문 날짜 -->

												<!-- <script>console.log(' --><%=detailDto.getCheckin().split(" ")[0]%><!-- ');</script> -->

											</div>
											<div class="detail_type_subtitle">카카오프렌즈 패밀리 트윈룸</div>
										</div>
										<div class="detail_price_box fl">
											<div class="status">확정</div>
											<div class="detail_price">
												<strong> <%=detailDto.getPrice()%>
												</strong>원
											</div>
										</div> <a href="#" class="show_more_benefits">상품특전보기</a>
									</a>
								</div>
								<%
								}
								%>

								<!-- 타입하나 -->
								<!-- <div class="type_inner">
 								<a href="#" class="type_inner_a">
 									<div class="type_inner_inform fl">
 										<div class="max_num_info">
 											<div class="num_box fl">2인/최대3인</div>
 											<div class="cancel_status fl">취소가능</div>
 										</div>
 										<div class="detail_type_title">2024.07.25 (목)</div>
 										<div class="detail_type_subtitle">에버랜드 패밀리 트윈룸</div>
 									</div>
 									<div class="detail_price_box fl">
 										<div class="status">확정</div>
 										<div class="detail_price">
 											<strong>320,990</strong>원
 										</div>
 									</div>
 									<a href="#" class="show_more_benefits">상품특전보기</a>
 								</a>
 							</div> -->

							</div>
						</div>
						<div class="mark_info">
							<div class="mark1">예약확정</div>
							<div class="mark2">예약요청</div>
							<div class="mark3">예약마감</div>
							<div class="mark4">요금미정</div>
						</div>


						<!-- 클릭시 나오는 박수/옵션선택 창 -->
						<div class="set_price_info">
							<div class="set_price_title">박수/옵션선택</div>
							<%
							for (DomesticOptionDto optionDto : showOption) {
							%>
							<div class="price_wrap_top">
								<div class="choice fl">선택상품</div>
								<span><%=optionDto.getChekIn().split(" ")[0]%>&nbsp;(목).
									<%=optionDto.getRoomName()%></span>
							</div>
							<div class="price_wrap_bottom">
								<div class="wrap_left fl">
									<div class="wrap_days">
										<div class="wrap_left_title">박수</div>
										<div class="wrap_left_box">
											<span><%=optionDto.getChekIn().split(" ")[0]%>(목)</span> <select
												name="days" class="select_days">
												<%
												for (int i = 1; i <= optionDto.getMaxDays(); i++) {
												%>
												<option value="<%=i%>"><%=i%>박
												</option>
												<%
												}
												%>



											</select> <span class="max_days">&nbsp;<%=optionDto.getMaxDays()%>박까지
												선택가능
											</span>
										</div>
									</div>
									<div class="wrap_type">
										<div class="wrap_type_inner">
											<div class="wrap_left_title">타입</div>
											<div class="wrap_left_box_bottom">
												<input type="text" name="final_roomtype" class="final_type"
													value="<%=optionDto.getRoomName()%>" /readonly> <select
													id="final_room_num" class="final_room_select">
													<option value="choose_num">객실수 선택</option>
													<%
													for (int i = 1; i <= optionDto.getMaxRoom(); i++) {
													%>
													<option value="<%=i%>객실"><%=i%>객실 [확정]
													</option>
													<%
													}
													%>
												</select>
											</div>
										</div>
									</div>
								</div>
								<div class="wrap_right fr">
									<div class="final_price">
										총 결제금액 <strong class="final_price_strong"><%=optionDto.getPrice()%></strong>&nbsp;<span
											class="won">원</span>
									</div>
									<div class="final_price_middle" id="final_price_middle">
										객실요금 :
										<%=optionDto.getPrice()%>원 / 옵션가 : 0원
									</div>
									<input type="submit" class="btn_reservation" value="예약하기">
								</div>
							</div>
							<%
							}
							%>
						</div>
					</div>
				</div>
			</form>
			<h3 class="title">숙소기본정보</h3>
			<div class="tab_box">

				<div class="tab_box_inner">
					<a href="#title_common" class="tab_click">공통사항</a> <a
						href="#title_price" class="tab_unclick">요금안내</a> <a
						href="#title_benefit" class="tab_unclick">특전</a> <a
						href="#title_location" class="tab_unclick">위치정보</a> <a
						href="#title_review" class="tab_unclick">이용후기</a>
				</div>
			</div>
			<h3 id="title_common" class="title">공통사항</h3>
			<div class="time_info">
				체크인 <span class="purple">15:00 </span>/ 체크아웃 <span class="purple">11:00</span>
			</div>
			<div class="common_thing">

				<!-- ※ 소아 동반투숙시 나이(개월수) 메모란에 필히 기재 부탁드립니다. <br/>
					ㄴ 미기재 시 예약건 확인이 지연될 수 있습니다. <br/> <br/>
					※ 더 파크뷰 조식 현장 결제가 <br/>
					금액 : 성인 86,000원 / 소인(37개월 이상~만12세 이하) : 43,000원 <br/> <br/> <br/>


					※일회용품 미제공 안내※ <br/>
					"자원재활용법"을 준수하여 일회용품인 칫솔, 치약, 면도기는 무료 제공하지 않습니다. <br/>
					환경보호를 위해 개별 지참을 부탁드립니다.(필요 시 객실 내 비티된 유료 어메니티 키트를 아용해 주시기 바랍니다. <br/> <br/>
					
					※ 인원추가 관련 공지 ※ <br/>
					투숙 인원을 추가 하시는 경우, 필히 옵션에서 인원 추가 옵션을 선택해 주시기 바랍니다. <br/>
					엑스트라베드 추가의 경우 현장에 문의후 현장결제 하셔야 이용 가능하시니 이용에 참고하시기 바랍니다. <br/>
					(* 엑스트라베드 수량 마감시 추가 불가) <br/> <br/>
					
					※ 신라리워즈 포인트 적립은 불가합니다.  <br/> <br/> <br/>
					
					
					※ 투숙일 기준 2024년 7월 1일부터 체크인 시간이 15시 이후로 변경됩니다. <br/>
					1. 상기요금은 내국인 전용상품입니다. (*외국인 예약시 별도로 문의 부탁드립니다.) <br/>
					2. 객실별 기준 인원을 확인하여 주시기 바랍니다. <br/>
					3. 더 이그제큐티브 라운지는 투숙객 전용 공간으로, 이그제큐티브 객실 투숙 고객(만 13세 이상)에 한해 이용 가능 <br/>
					*※ 이그제큐티브 객실 타입으로 예약하셔야 이그제큐티브 라운지 사용 가능합니다.  <br/> <br/>
					
					(일반 객실 타입에 이그제큐티브 라운지 혜택 추가 불가) <br/>
					4. 유아침대는 12개월까지만 이용가능 (*사전요청시 자녀 개월수 기재필수 / 수량 마감시 대여불가) <br/>
					5. 투숙객은 무료로 주차가 가능합니다. <br/>
					6.미성년자는 성인 보호자 동반 시에만 숙박 가능합니다. <br/> <br/>
					
					※예약 진행 시 메모란에 투숙인원 정확히 기재 부탁드립니다. (영유아 포함) <br/> <br/>

					------------------------------------------------------------------------------------------------------------------------------------- <br/> <br/>
					
					※서비스 차량 운영 안내 <br/>
					호텔 고객 주차장을 이용하시는 노약자,장애인,임산부, 영유아 동반 고객 <br/>
					짐이 많은 고객을 위해 현관까지 셔틀버스 및 별도의 차량을 운영하고 있으니 필요시 직원에게 문의 바랍니다 <br/>
					(문의 : 02-2230-3270) <br/> <br/>
					
					※관내 셔틀 <br/>
					09:30~22:00(수시 운행) <br/>
					서울신라호텔 로비→신라 면세점→동대입구(5번 출구)→서울신라호텔 정문 <br/>
					*시내 교통상황에 따라 셔틀 운행 시간이 변동될 수 있습니다. <br/>
					*고객 안전을 위하여 정원 초과 시 탑승이 제한될 수 있습니다 <br/> <br/> <br/>
					
					
					■실내 수영장 <br/>
					-수영장 방문 시 객실에서 환복 후 이용해 주시기 바립니다. <br/>
					-락커 내 비품은 제공되지 않습니다 <br/>
					-적정 인원 초과시 이용을 위해 대기하실 수 있습니다. <br/>
					-주말 및 공휴일에는 아래 집중 시간대를 참고하여 이용 바랍니다. <br/> <br/> <br/>
					
					
					●혼잡 : 09 ~ 12시, 16 ~ 19시 <br/>
					●원활 : 07 ~ 09시, 19 ~ 21시 <br/>
					●쾌적 : 06 ~ 07시, 12~16시, 21 ~ 22시 <br/> <br/> <br/>
					
					
					# 피트니스 클럽 이용 안내 <br/>
					1. 체련장(Gym), 실내 수영장, 실내 사우나(유료시설)는 매월 3번째 수요일 정기 휴무입니다.  <br/>
					2. 체련장은 만 16세 이상, 실내사우나는 만 13세 이상부터 이용 가능합니다. <br/>
					3. 실내 수영장은 성인 고객 전용 시설로서, 안전을 위해 만 13세 이상인 고객에 한해 이용 가능합니다. <br/>
					    (단, 주말 및 공휴일에는 성인 보호자의 보호 하에 만 13세 미만인 고객이 이용 가능하며, 신장 140cm 미만 고객은 성인 보호자의 보호 하에 구명조끼 착용 시 이용 가능합니다). <br/>
					     ▷ 실내 수영장 이용 시,  주중 : 소인 입장불가 / 주말 및 공휴일 : 보호자 동반시 소인 입장 가능 ◁ <br/>
					4. 적정 인원 초과 시 이용을 위해 대기하실 수 있습니다. <br/>
					5. 안전을 위하여 음주 후 체육관, 사우나, 실내 수영장 등의 피트니스 시설 이용은 제한될 수 있습니다 <br/>
					6. 튜브, 스노클 장비, 오리발, 수중 프로펠러 등은 사용하실 수 없습니다. <br/>
					7. 수영복 착용 시에만 이용 가능하며, 풀(Pool) 내에서의 체육복 및 평상복 착용은 불가합니다. <br/>
					8. 실내 수영장과 어번 아일랜드는 별도로 운영되고 있습니다. <br/> <br/> <br/>
					
					 
					
					# 부대시설 이용안내 <br/>
					1. Indoor Swimming Pool (실내 수영장) <br/>
					유리돔을 통해 보이는 남산의 전경을 만끽하며 즐기는 수영과 휴식. <br/>
					길이 25m, 너비 6m의 풀과 함께 건식 사우나와 실내 및 야외 자쿠지를 갖추고 있습니다.
					* 운영시간 : 06:00 ~ 22:00 <br/>
					* 평일에는 만 13세 이상 고객에 한해 이용 가능하며, 주말 및 공휴일에는 성인 보호자의 동반 하에 만 13세 미만 고객이 이용 가능합니다. <br/>
					* 매월 3번째 수요일 정기 휴무입니다. <br/> <br/>
					
					※수영장에서 다이빙은 금지되어 있습니다. <br/> <br/> <br/>
					
					
					2. 야외 수영장 (어번 아일랜드) <br/>
					※ 어번 아일랜드(야외 수영장) 이용안내 <br/>
					- 운영시간:   [7월 1일 ~ 8월 31일] 09:00~22:00  <br/>
					 (※ 단, 7월 5일~6일, 8월 1일~3일, 8월 15일~17일 09:00~19:00 운영) <br/> <br/>
					
					
					--성인풀은 초등학생 이상인 고객에 한해 이용 가능하며, 신장 140cm 미만인 고객은 성인 보호자의 보호 하에 구명조끼 착용 시 이용 가능합니다. <br/>
					(현장 라이프 가드의 안내를 받으시기 바랍니다.) <br/>
					-키즈풀에는 미취학 아동에 한해 입장 가능합니다. (자녀 동반 보호자는 이용 가능) <br/> <br/>
					
					※수영장에서 다이빙은 금지되어 있습니다. <br/> <br/> <br/>
					
					
					3. 실내 사우나 <br/>
					* 유료, 만 13세 이상부터 이용 가능 <br/> <br/>
					
					4. 더 이그제큐티브 라운지 <br/>
					* 더 이그제큐티브 라운지는 투숙객 전용 공간으로, 객실 투숙 고객(만 13세 이상)에 한해 이용 가능합니다. <br/>
					-Breakfast 06:30~10:00 <br/>
					(단,주말 및 공휴일은 06:30~10:30) <br/>
					-Afternoon Tea 15:30~17:00 <br/>
					-Happy Hour 18:00~21:00 <br/>
					- 라이트 스낵(브런치) 미운영 및 음료 테이크 아웃 서비스 미제공 <br/>
					※21시 이후는 주류, 치즈, 디저트만 이용가능 하오니 이용 시 참고 부탁드립니다. <br/> <br/> <br/>
					
					
					5. 키즈 라운지 (5F) <br/>
					- 운영 기간 : 상시운영 <br/>
					- 운영 일시 : 매일 10:00~19:00 / 시설 정비 시간 13:00~14:00 <br/>
					- 문의 : 02-2230-3310 <br/>
					* 키즈 라운지는 보호자를 동반하는 경우에 한해 입장 가능 합니다. <br/>
					* 유아를 동반한 모든 투숙객이 무료로 입장할 수 있습니다. <br/>
					* 매월 3번째 수요일 정기 휴무입니다. <br/>
					* 특정 공휴일은 호텔 사정에 따라 이용이 제외될 수 있습니다. <br/>
					* 호텔 부대시설은 감염병 예방법, 재난 안전법 등 관련 법령 및 방역당국 등의 규제, 조치 사항 등에 따라 사전 고지 없이 이용이 제한되거나 변경될 수 있습니다. <br/> -->
			</div>
			<hr>
			<h3 id="title_price" class="title">요금안내</h3>
			<div class="price_info">
				<div>
					<div class="text_left fl">추가요금</div>
					<div class="fl">
						[인원추가 및 요금] <br /> 1. 모든 객실은 성인 2인 기준이며, 기준인원 초과시 추가되는 성인/소인(37개월
						이상~만 12세 미만)에 인원추가 비용 발생<span class="red">(패키지상품 별 추가금액 상이)</span>
						<br /> 2. 엑스트라베드 추가 시 인원추가비 외 별도 요금 발생 (*수량 마감시 추가불가) 해당 요금 관련 내용은
						호텔 문의 부탁드리겠습니다. <br /> 3. 더이그제큐티브 라운지는 만 13세 이상 고객에 한해
						출입가능합니다.(라운지 포함된 투숙객 포함, 패키지상품 별 추가금액 상이) <br /> ㄴ 인원 추가 가능 시 3번째
						인원부터 추가요금 242,000원으로 금액 변경 <br /> <br /> <br /> - 조식 장소: 더 파크뷰 <br />
						- 이용 시간: 06:00~10:00 <br />
						<div class="blue">
							- 사전 조식 추가는 체크인 1일 전 오후 6시까지 투숙객 할인 요금으로 적용 가능 (호텔 문의) <br /> ·
							투숙객 할인 요금: 성인 - 60,000원, 소인(37개월 이상 ~ 만 12세 이하) - 38,000원 <br />
							· 정상가: 성인 - 86,000원, 소인(37개월 이상 ~ 만 12세 이하) - 43,000원 <br />
						</div>
						<span class="red">* 여행사를 통해 사전 결제하신 조식 금액은 조식을 이용하지 못하셨더라도
							환불불가합니다. </span> <br /> ※ 체크인 하루전 18시까지 조식을 추가하신 성인 투숙객에 한해 조식 1인 할인요금으로
						제공되며, 체크인 이후 추가 요청 시에는 정상요금 86,000원으로 이용 가능합니다. <br />
					</div>
					<hr style="margin: 20px 0;" class="fl">
				</div>
				<div>
					<div class="text_left fl">취소/환불규정</div>
					<div class="fl">
						취소/환불규정 <br /> [비수기] <br /> - 투숙일 3일전 100% 환불 <br /> - 투숙일 2일전 ~
						당일 0% 환불 <br /> <br /> (영업일 17시 기준, 주말 및 공휴일 취소 산정일에서 제외/취소불가) <br />
						<br /> [성수기 및 연휴] <br /> 별도 문의요망
					</div>
				</div>
				<hr>
			</div>

			<h3 id="title_benefit" class="title">특전</h3>
			<div class="event"></div>
			<hr>
			<h3 id="title_location" class="title">위치정보</h3>
			<div class="map_box">
				<div class="map">
					<img src="../../img/main6_domestic_inn/map.png">
				</div>
			</div>
			<div class="location_info">
				■ 자가용 이용시 <br /> -분당방면:한남대교→장충단길→신라호텔 후문→서울신라호텔/신라면세점 <br />
				-강남방면:동호대교→장충체육관 앞 사거리에서 좌회전→서울신라호텔/신라면세점 <br /> -용산방면:남산2호터널 통과 후
				좌회전→신라호텔 후문→서울신라호텔/신라면세점 <br /> <br /> ■ 버스 이용시 <br /> -장충체육관 앞 하차
				(노선번호:144,301,407,7212) <br /> <br /> ■ 지하철 이용시 <br /> -지하철 3호선
				동대입구역 5번출구 <br />
			</div>
			<hr>


			<h3 id="title_review" class="title">이용후기</h3>
			<div class="review_box">
				<div class="review_box_left fl">
					<div class="icon_best fl"></div>
					<div class="ment fl">강추!&nbsp;완벽해요!</div>
				</div>
				<div class="review_box_right fr">

					<!-- 여기-->
					<%
					for (InnReviewAvgDto innReviewAvgDto : listReviewAvg) {
					%>
					<div class="fr">
						총&nbsp;<span> <%=innReviewAvgDto.getCountNum()%>개
						</span>&nbsp;의 후기 <span class="num"> <%=innReviewAvgDto.getReviewAvg()%>
						</span>점
					</div>
					<%
					}
					%>


					<div class="rating_star fr">
						<span class="star_icon"></span> <span class="star_icon"></span> <span
							class="star_icon"></span> <span class="star_icon"></span> <span
							class="star_icon"></span>
					</div>
				</div>

			</div>

			<%
			for (InnReviewDto rdto : listReview) {
			%>

			<%-- <%InnReviewDto rdto = listReview.get(0);  %>  --%>
			<!-- 리뷰 전체를 감싸는 div -->
			<div class="entire_review">
				<!-- 하나의 리뷰 -->
				<div class="review">
					<div class="review_icon_best"></div>
					<div class="review_title">
						<div>
							<%
							if (rdto.getReview_rating() >= 4) {
							%>
							강추! 완벽해요!
							<%
							} else {
							%>
							쏘쏘! 만족해요!
							<%
							}
							%>
						</div>
						<div class="review_rating">
							<div class="review_rating_icon"></div>
							<div class="review_rating_icon"></div>
							<div class="review_rating_icon"></div>
							<div class="review_rating_icon"></div>
							<div class="review_rating_icon"></div>
						</div>
						<div><%=rdto.getName().substring(0, 1)%>** |
							<%=rdto.getRegist_date().split(" ")[0]%></div>
					</div>
					<div class="review_content">
						<%=rdto.getContent()%>
					</div>
					<div class="review_img">
						<%
						for (InnReviewDto img : listReview) {
						%>
						<img src="<%=img.getImg_url()%>">

						<%
						}
						%>
					</div>
				</div>
			</div>
			<%
			}
			%>

			<button type="button" class="more_review">여행후기 더보기</button>
		</div>
	</div>
	</div>
	<footer>

		<div class="footer1">
			<div>
				<div class="footer1_left fl">
					<div>공지</div>
					<div class="footer1_announcement">
						<a href="#" class="footer1_active"> &lt;하나LIVE&gt; 24년 5월 30일
							방송 이벤트 당첨자 안내(사전알림/퀴즈/구매인증) </a> <a href="#"> [여행만보] 24년 6월 미션 변동
							사항 안내 </a> <a href="#"> [공지] 24년 6월, 신용카드 ARS/온라인 무이자 할부 혜택 관련 안내
							(항공권 제외) </a>
					</div>
				</div>
				<div class="footer1_center fl">
					<a href="#"> 더보기 </a>
				</div>
				<div class="footer1_right fr">
					<div>
						<a href="#"> <img src="../../img/footer/facebook.png"
							alt="페이스북">
						</a>
					</div>
					<div>
						<a href="#"> <img src="../../img/footer/instagram.png"
							alt="인스타그램">
						</a>
					</div>
					<div>
						<a href="#"> <img src="../../img/footer/naverblog.png"
							alt="네이버 블로그">
						</a>
					</div>
					<div>
						<a href="#"> <img src="../../img/footer/kakaoplus.png"
							alt="카카오 플러스">
						</a>
					</div>
					<div>
						<a href="#"> <img src="../../img/footer/youtube.png" alt="유튜브">
						</a>
					</div>
					<div>
						<a href="#"> <img src="../../img/footer/kakaostory.png"
							alt="카카오 스토리">
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
						고객님은 안전거래를 위해 현금으로 결제시<br /> (주)하나투어에서 가입한 하나은행으로<br /> 구매안전서비스를
						이용하실 수 있습니다.
					</div>
					<div>
						<a href="#"> 서비스 가입사실 확인 </a>
					</div>
				</div>
			</div>
		</div>
		<!-- footer2 종료 -->



		<div class="footer3">
			<div>
				<div>※ 부득이한 사정에 의해 여행일정이 변경되는 경우 사전 동의를 받습니다.</div>
				<div>※ 하나투어는 개별 항공권, 단품 및 일부 여행상품에 대하여 통신판매중개자로서 통신판매의 당사자가
					아니며 해당상품의 거래정보 및 거래등에 대해 책임을 지지 않습니다.</div>
				<div>COPYRIGHTⓒ HANATOUR SERVICE INC. ALL RIGHTS RESERVED</div>

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
							대한민국<br />100대 브랜드
						</div>
						<div style="clear: both;"></div>
					</div>
					<div class="fl">
						<div class="fl">
							<img src="../../img/footer/award-logo-02-2024.png" alt="">
						</div>
						<div class="fl">
							한국능률협회선정<br />20년연속(2005~2024)<br />브랜드파워 1위
						</div>
						<div style="clear: both;"></div>
					</div>
					<div class="fl">
						<div class="fl">
							<img src="../../img/footer/award-logo-03-2024.png" alt="">
						</div>
						<div class="fl">
							브랜드스탁선정<br />20년연속(2005~2024)<br />브랜드스타 1위
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
<script src="script/footer.js"></script>
<script src="script/header.js"></script>
</html>