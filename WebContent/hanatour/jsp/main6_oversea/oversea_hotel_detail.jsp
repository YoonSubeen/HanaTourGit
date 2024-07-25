<%@page import="java.util.ArrayList"%>
<%@page import="dao.OverseaHotelDao"%>
<%@page import="dto.*"%>
<%@page import="dto.OverseaHotelInfoDto" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
OverseaHotelDao overseaDao = new OverseaHotelDao();
	ArrayList<OverseaHotelDto> listHotel = overseaDao.getHotelInfo(3);
	ArrayList<HotelTagDto> listTag = overseaDao.getTagList(2);
	ArrayList<OverseaHotelInfoDto> bottomInfo = overseaDao.getBottomHotelInfo(2);
	ArrayList<OverseaRoomDto> listType = overseaDao.getRoomList(2);
	ArrayList<OverseaAdditionalInfoDto> AdditionalInfo = overseaDao.getAdditionalInfo(1);
	ArrayList<amenityDto> listAmenity = overseaDao.getAmenity(1);
	ArrayList<facilityDto> listFacility = overseaDao.getFacility(1);
	ArrayList<amenitySubtDto> listAmenitySubt = overseaDao.getSubtAmenity(1);
	ArrayList<facilitySubtDto> listFacilitySubt = overseaDao.getSubtFacility(1);
	ArrayList<overseaHotelReviewDto> listReview = overseaDao.getOverseaReview(1);	
	ArrayList<OverseaReviewImgDto> listReviewImg = overseaDao.getReviewImg();
	ArrayList<OverseaReviewOptionDto> listReviewOption = overseaDao.getReviewOption();
%>
<!DOCTYPE html>
<html>
<head>

	<meta charset="UTF-8">
	<title>Insert title here</title>
    <link rel="stylesheet" href="../../css/oversea_hotel_detail.css">
   	<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
    <script>
		$(function() {
			$(".fullscreen_review_grey").hide();
			$(".btn_write_review").click(function() {
				$(".fullscreen_review_grey").show();
			});
			$(".btn_close_review").click(function() {
				$(".fullscreen_review_grey").hide();
			});
			
		});
    </script>
</head>
<body>

<!-- content -->
<div class="container center">
	<div class="container_inner">
		<div class="contents">
			<div class="contents_top">
				<label>
				<button type="button" class="btn_safety_info">
					<span class="flag"><img src="https://image.hanatour.com/usr/static/img2/nation/JP.gif"></span>
					<div>
						<span class="country_name">일본: </span>
        				<span class="country_name_span">여행 전 입국 규정을 확인해 주세요</span>
					</div>
				</button>
				</label>
				
				<div class="search_wrap">
					<div class="search_wrap_line">
						<div class="search_name_box fl"></div>
						
						<!-- 오른쪽 검색 -->
						<div class="right_search fr">
							<div class="search_date"></div>
							<div class="search_room_num"></div>
							<button type="button" class="btn_hotel_search">숙소 검색</button>
						</div>
					</div>
				</div>
				
				<!-- 검색창 바로 밑 content -->
				<div class="content_inner">
					<!-- 호텔정보 박스 -->
					<div class="hotel_info_box">
						<div class="info_box_left fl">
							<div class="photo_wrap">
								<span class="photo_one fl">
									<img src="https://image.hanatour.com/usr/cms/resize/400_0/2023/01/06/10000/337007a2-567d-43fd-b2e0-dcd5e98ce74e.jpg">
								</span>
								<span class="photo_two fl">
									<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/05/01/340000/dcfba8c0-e113-491c-9bb9-dfbe24e36fd6.jpg">
								</span>
								<span class="photo_three fl">
									<img src="https://image.hanatour.com/usr/cms/resize/400_0/2023/01/06/10000/45e26d96-ed14-49b0-b19d-87a9b608f674.jpg">
								</span>
								<span class="photo_four fl">
									<img src="https://image.hanatour.com/usr/cms/resize/400_0/2023/01/06/10000/acb27278-cdbd-484b-acd0-2544353e926f.jpg">
								</span>
								<span class="photo_five fl">
									<img src="https://image.hanatour.com/usr/cms/resize/400_0/2023/01/06/10000/eb10549b-bf1d-4625-9cba-83df8850f23f.jpg">
								</span>
							</div>
							<div class="bottom_icon_box fr">
								<button type="button" class="btn_print"></button>
								<button type="button" class="btn_share"></button>
								<button type="button" class="btn_zzim"></button>
							</div>
						</div>
						<%
						for(OverseaHotelDto dto : listHotel) {
						%>
						
						<div class="info_box_right fr">
							<div class="info_hotel_star"><%=dto.getStar()%>성급</div>
							<div class="info_hotel_wrap">
								<div class="info_hotel_title"><%=dto.getInnKor()%></div>
								<div class="info_hotel_title_eng"><%=dto.getInnEng()%></div>
							</div> 	
							<div class="hotel_point">
								<div class="hotel_point"> 
												
						        <%
 																		        if(dto.getPurpleBox() == null) {
 																		        %>	
								    <div class="point_box" style="display: none !important">
								<%
								} else {
								%>
									<div class="point_box">
						            <%=dto.getPurpleBox()%>
						        <%
						        }
						        %>
								    </div>
								</div>
							
							
									<%-- <div class="point_box">
										<% if(dto.getPurpleBox() == null) { %>
										<script>
											$(function() {
												$(".point_box").hide();	
											});
										</script>
										<% else { %>
											<%=dto.PurpleBox() %>
										<% } %>
									</div> --%>
							</div>
							<div class="benefit_box">
							
								<%
															for (HotelTagDto tagDto : listTag) {
															%>
									<%
									if(tagDto.getPurpleTag().equals("T")) {
									%>
										<div class="benefit_text fl"><%=tagDto.getTag()%></div>
									<%
									} else {
									%>
										<div class="benefit_text fl" style="color: #666; background: #f7f7f7;;"><%=tagDto.getTag()%></div>
									<%
									}
									%>
								<%
								}
								%>
							</div>
							<div class="review_area">
								<div>
									<div>
										<span class="hotel_rating"><%=dto.getReviewAvg()%></span>
										<span class="rating_level">우수</span>
										<span class="show_hotel_review">숙소후기 <%=dto.getReviewNum()%>건 보기</span>
									</div>
								</div>
							</div>
							<div class="price_area">
								<div class="price_inner_option fl">
									<div class="price_inner_text">1박 요금 최저가</div> 
									<div class="price_inner_text_bottom">객실 세금/봉사료 포함</div>
								</div>
								<div class="price_area_price fr"><%=String.format("%,d", dto.getPrice())%><span class="price_unit">원~</span></div>
							</div>
						</div>
						<%
						}
						%>
					</div>
					
					<!-- banner -->
					<div class="banner_first">
						<a href="">
							<img src="https://image.hanatour.com/usr/manual/md/2022/05/PL00113117/banner_hotel.jpg">
						</a>
					</div>
					<div class="banner_first">
						<a href="">
							<img src="https://image.hanatour.com/usr/manual/md/2024/01/PL00114511/banner_hotel.jpg">
						</a>
					</div>
					
					<!-- 숙소정보 -->
					<div class="about_hotel">
						<div class="about_hotel_text">
							<div class="about_hotel_title">
								숙소정보
							</div>
							<%
							for (OverseaHotelInfoDto bottomDto : bottomInfo ) {
							%>
							
							
							<!-- 테이블에 (address_eng컬럼)다시 가져오기  -->
							<p class="item_text">
								<span class="icn_location"></span>
								<%
								if(bottomDto.getAddressEng() == null) {
								%>
									주소 정보가 없습니다.
								<%
								} else {
								%>
									<%=bottomDto.getAddressEng()%>
								<%
								}
								%>
								<a href="#none" class="show_map">지도보기</a>
							</p>
							
							
							
							
							
							
							
							<p class="item_text">
								<span class="icn_time"></span>
								<%
								if(bottomDto.getCheckinCheckout() == null) {
								%>
									체크인/체크아웃 정보가 없습니다.
								<%
								} else {
								%>
									<%=bottomDto.getCheckinCheckout()%>
								<%
								}
								%>
							</p>
							<p class="item_text">
								<span class="icn_floor"></span>
								<%
								if(bottomDto.getFloors() == 0) {
								%>
									층수 정보가 없습니다. 
								<%
								} else {
								%>
									<%=bottomDto.getFloors()%>층
								<%
									}
									%>
								/ <span>
								<%
								if(bottomDto.getRoomNum() == 0) {
								%>
									객실수 정보가 없습니다.
								<%
								} else {
								%>
									<%=bottomDto.getRoomNum()%>객실
								<%
									}
									%>
								
								</span>
							</p>
							<p class="item_text">
								<span class="icn_telephone"></span>
								<%
								if(bottomDto.getPhone() == null) {
								%>
									전화 정보가 없습니다. 
								<%
								} else {
								%>
									전화<%=bottomDto.getPhone()%>
								<%
								}
								%>
							</p>
							<p class="item_text">
								<span class="icn_fax"></span>
								<%
								if(bottomDto.getFax() == null) {
								%>
									팩스 정보가 없습니다.
								<%
								} else {
								%>
									팩스<%=bottomDto.getFax()%>
								<%
								}
								%>
							</p>
							<%
							}
							%>
						</div>
					</div> 
					
					<div class="result_wrap">
						<div class="btn_wrap">
							<button type="button" class="btn_result_date">
								2024.08.27 - 2024.08.30
								<span class="result_date">3박</span>
							</button>
							<button type="button" class="btn_result_room_num">
								<span class="result_room_num_left">객실1</span>
								<span class="result_room_num_right">성인2명</span>
							</button>
						</div>
					</div>
					
					<!-- 객실선택 -->
					<div id="tab_menu">
						<div class="tab_filter">
							<div class="room_grouping">
							
							룸그룹핑</div>
							<div class="form_wrap">
								<div class="form_holder">
									<label>
										<input type="checkbox" name="free_cancel" value="y_free_cancel">무료취소
									</label>
								</div>
								<div class="form_holder">
									<label>
										<input type="checkbox" name="include_breakfast">조식포함
									</label>
								</div>
								<div class="form_holder">
									<label>
										<input type="checkbox" name="member_price">회원특가
									</label>
								</div>
								<div class="form_holder">
									<label>
										<input type="checkbox" name="special_benefit">스페셜 베네핏
									</label>
								</div>
							</div>
							<div class="deselect">
								<label>
									<button type="button" class="btn_deselect">선택해제</button>
								</label>
							</div>
						</div>
						
						<div class="room_price_info">
							<div class="alert_message">
								객실요금은 <span style="color: #5e2bb8;">세금/봉사료</span>가 포함된 금액입니다.
								<button type="button" class="btn_close_alert"></button>
							</div>
							<div class="room_align_box">
								<span></span>
							</div>
						</div>
						
						<div class="entire_room_title">전체 객실</div>
						
						<!-- 모든 타입을 감싸는 div -->
						<div class="entire_room_type">
						
						<%
												for(OverseaRoomDto roomType : listType) {
												%>
							<!-- 타이틀을 포함한 한 가지 타입을 감싸는 div -->
							<div class="room_type">
								<a href="#none" class="room_type_title">세미룸
									<span>88,989원</span>
								</a>
								<div class="room_type_content">
									<ul>
										<li>
											<div class="item_area fl">
												<a href="#none">
													<div class="item_name">SEMI-DOUBLE (B)</div>
												</a>
												<div class="alarm_box">
													<button type="button" class="btn_alarm">알림</button>
												</div>
											</div>
											<div class="item_center fl">
												<p class="item_cancel_date">
													<span class="item_cancel_date_text">무료취소(~08월 22일까지)</span>
												</p>
												<p class="item_breakfast">
													<span class="item_breakfast_text">조식 불포함</span>
												</p>
											</div>
											<div class="item_price_box fl">
												<div class="price_standard">1박 기준</div>
												<p class="item_price">
													109,420<span class="won">원</span>
												</p>
												<div></div>
											</div>
											<!-- 예약하기 버튼 -->
											<div class="btn_reserv_wrap fr">
												<button type="button" class="btn_reserv">
													예약하기
												</button>
											</div>
										</li>
									</ul>
								</div>
							</div>
							<%
							}
							%>
							
							<!-- 타이틀을 포함한 한 가지 타입을 감싸는 div -->
							<div class="room_type">
								<a href="#none" class="room_type_title">스탠다드룸
									<span>113,825원</span>
								</a>
							</div>
							
							<!-- 타이틀을 포함한 한 가지 타입을 감싸는 div -->
							<div class="room_type">
								<a href="#none" class="room_type_title">그랜드룸
									<span>88,989원</span>
								</a>
							</div>
							<!-- 타이틀을 포함한 한 가지 타입을 감싸는 div -->
							<div class="room_type">
								<a href="#none" class="room_type_title">디럭스룸
									<span>114,876원</span>
								</a>
							</div>
							<!-- 타이틀을 포함한 한 가지 타입을 감싸는 div -->
							<div class="room_type">
								<a href="#none" class="room_type_title">헐리우드룸
									<span>133,694원</span>
								</a>
							</div>
							<!-- 타이틀을 포함한 한 가지 타입을 감싸는 div -->
							<div class="room_type">
								<a href="#none" class="room_type_title">트윈/더블룸
									<span>139,724원</span>
								</a>
							</div>
						</div>
						
						
						<!-- 룸 리스트 스와이퍼 -->
						<div class="room_list"></div>
						
					</div>
					<div class="banner_bottom">
						<img src="https://image.hanatour.com/usr/static/img/pc/temp/banner_htl02.png">
					</div>
					<div class="hotel_detail_tab">
					<%
					for(OverseaAdditionalInfoDto dto: AdditionalInfo) {
					%>
						<%
						if(dto.getRoomInfo() != null) {
						%>
							<dl>
								<dt>객실</dt>
								<dd> <%=dto.getRoomInfo()%></dd>
							</dl>
						<%
						}
						%>
						 <%
						 if(dto.getFacilities() != null) {
						 %>
							<dl>
								<dt>편의시설 </dt>
								<dd><%=dto.getFacilities()%></dd>
							</dl>
						<%
						}
						%>
						<%
						if(dto.getDining() != null) {
						%>
							<dl>
								<dt>다이닝</dt>
								<dd><%=dto.getDining()%></dd>
							</dl>
						<%
						}
						%>
						
						<%
												if(dto.getNearEntertain() != null) {
												%>
							<dl>
								<dt>주변 즐길거리</dt>
								<dd><%=dto.getNearEntertain()%></dd>
							</dl>
						<%
						}
						%>
						
						<%
												if(dto.getConstructionNotice() != null) {
												%>
							<dl>
								<dt>공사 공지</dt>
								<dd><%=dto.getConstructionNotice()%></dd>
							</dl>
						<%
						}
						%>
					<%
					}
					%>
						<dl>
							<dt>숙소 부대시설</dt>
							<dd>
							<%
							for(amenityDto amDto :listAmenity ) {
							%>
								<div class="amenity">
									<div class="amenity_inner fl">
										<div class="amenity_icon fl">
											<img src="<%=amDto.getAmenityImg()%>">
										</div>
										<div class="fl"><%=amDto.getAmenityTitleName()%></div>
									</div>
									
									<ul>
									<!-- 여기 -->
										<%
										for(amenitySubtDto amSubDto : listAmenitySubt) {
										%>
										 	<%
										 	if(amDto.getAmenityTitleIdx()==amSubDto.getAmenityTitleIdx()) {
										 	%>
												<li><%=amSubDto.getAmenitySubtName()%></li>
											<%
											}
											%>
										<%
										}
										%>
									</ul>
								</div>
							<%
							}
							%>
							</dd>
						</dl>
						<dl>
							<dt>객실 편의시설</dt>
							<dd>
							<%
							for(facilityDto fDto : listFacility ) {
							%>
								<div class="facility">
									<div class="facility_inner fl">
										<div class="facility_icon fl">
											<img src="<%=fDto.getFacilityImg()%>">
										</div>
										<div class="fl"><%=fDto.getFacilityTitleName()%></div>
									</div>
									<ul>
									<!-- 여기 -->
										<%
										for(facilitySubtDto fSubDto : listFacilitySubt) {
										%>
										<!-- 참고 -->
										 	<%
										 	if(fDto.getFacilityTitleIdx()==fSubDto.getFacilityTitleIdx()) {
										 	%>
												<li><%=fSubDto.getFacilitySubtName()%></li>
											<%
											}
											%>
										<%
										}
										%>
									</ul>
								</div>
							<%
							}
							%>
							</dd>
						</dl>
						
					</div>
					
				</div>
				
				<!-- 숙소후기 -->
				<div class="hotel_review">
					<div class="hotel_review_inner">
						<div class="hotel_review_title">숙소후기</div>
						<div class="rating_main_box">
							<div class="rating_avg_box">
								<div class="rating_avg_inner">
									<strong class="grade">
										<em class="grade_num">4.3</em>
										<span class="grade_total">5</span>
									</strong>
									<strong class="grade_count">(1084개)</strong>
								</div>
							</div>
							<div class="rating_graph_box">
								<div class="rating_graph_inner">
									<div class="graph_area"></div>
									<div class="graph_area"></div>
									<div class="graph_area"></div>
									<div class="graph_area"></div>
								</div>
							</div>
						</div>
						
						<div class="rating_option_wrap">
							<span>
								총 <span  class="review_total_count">10</span>건
							</span>
							<ul>
								<li>최신순</li>
								<li>도움순</li>
								<li>평점순</li>
							</ul>
						</div>
						<div class="review_filter">
							<div class="review_type">
								<select name="review_option">
									<option value="with_who">동반자 유형</option>
									<option value="entire">전체</option>
									<option value="with_friend">친구여행</option>
									<option value="for_business">비즈니스 및 출장</option>
									<option value="couple">커플여행</option>
									<option value="solo">개인여행</option>
									<option value="with_baby">유아/아동 동반여행</option>
									<option value="with_teenage">청소년 동반여행</option>
								</select>
							</div>
							<div style="display: flex;">
								<div class="write_review">
									<button type="button" class="btn_write_review">후기작성</button>
								</div>
								<div class="fullscreen_review_grey">
									<div class="write_review_box">
										<div>
											<span>후기 작성하기</span>
											<button type="button" class="btn_close_review"></button>
										</div>
									</div>
								</div>
								<button type="button" class="btn_review_deselect">
									<span class="btn_review_text">선택해제</span>
								</button>
							</div>
						</div>
						<ul class="review_list">
						
							<!-- 리뷰 한개  여기부터 -->
							<%
							for(overseaHotelReviewDto dto : listReview) {
							%>
							<li>
								<div class="rating_info">
									<strong class="review_point"><%=dto.getReviewRating()%></strong>
									<div style="display: flex;">
										<span class="review_person_icon">
											<img src="https://image.hanatour.com/usr/static/img2/pc/com/bg_alpha.png">
										</span>
										<span class="review_writer"><%=dto.getUserId()%></span>
										<span class="review_option_type"><%=dto.getReviewType()%></span>
										<span class="review_regist_date"><%=dto.getRegistDate().split(" ")[0]%></span>
									</div>
								</div>
								<div class="review_product">
									<ul>
										<li>
											<strong>상품명</strong>
											<span><%=dto.getInnKor()%></span>
										</li>
									</ul>
								</div>
								<div class="review_content">
									<%=dto.getContent()%>
								</div>
								<div class="review_topic_wrap">
									<% for(OverseaReviewOptionDto optionDto : listReviewOption) { %>
										<% if(dto.getReviewIdx()==optionDto.getReviewIdx()) { %>
											<span>
												<img src="<%=optionDto.getOptionImg()%>">
												<%=optionDto.getTitle() %>
											</span>
										<% } %>
									<% } %>
								</div>
								
								<% if (listReviewImg != null && !listReviewImg.isEmpty()) { %>
								<div class="review_img_box">
									<ul class="review_img_list">
										<%
										for(OverseaReviewImgDto imgDto : listReviewImg) {
										%>
											<% if(dto.getReviewIdx()==imgDto.getReviewIdx())  {%>
												<li>
													<img src="<%=imgDto.getImgUrl()%>">
												</li>
											<% } %>
										<% } %>
									</ul>
								</div>
								<% } else { %> <%}%>
								<div class="btn_helpful_box">
									<button type="button" class="btn_helpful">도움이 돼요</button>
								</div>
							</li>
							<% } %>
							
						</ul>
						<div class="paginate_wrap">
							<div class="pagination">
								1 &nbsp; 2
							</div>
						</div>
					</div>
				</div>
				
				
				<!-- 숙소 추천 -->
				<div>근처에 있는 다른 숙소</div>
				<div class="hotel_near_wrap">
					<div class="hotel_near_swiper"></div>
				</div>
				<div style="width: 1200px; height: 14px;"></div>
			</div>
		</div>
	</div>
</div>

    
</body>
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
</html>