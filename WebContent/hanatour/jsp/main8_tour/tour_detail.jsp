<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="../../css/tour_detail.css">
	<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/f8ad0e4bbc.js" crossorigin="anonymous"></script>
	
	<script>
		$(function() {
			$(".notice_ad").click(function(){
				alert("준비중입니다!");
			});
		});
	</script>
</head>
<body>
<!-- 전체 내용 -->
<div id="entire_container" class="center">
	<div class="top">
		<div class="top_content">
			<ul class="img_box fl">
				<li><img src="https://static.hanatour.com/product/2024/03/11/0106yrsuon/large.jpg"></li>
<!-- 				<li><img src="https://static.hanatour.com/product/2024/03/06/0751c28hvq/large.jpg"></li>
				<li><img src="https://static.hanatour.com/product/2019/06/27/0128hjmtyk/large.jpg"></li>
				<li><img src="https://static.hanatour.com/product/2019/06/27/0128w3f1p3/large.jpg"></li> -->
			</ul>
			<div class="top_right_box fr">
				<div style="height: 18.188px;">파리</div>			
				<h3 style="margin-top: 8px; height: 36.39px; font-size: 25px; font-weight: 400;">[파리] 프랑스 디즈니랜드 티켓 예약 입장권 1일</h3>
				<div class="top_info_box">
					<div>
						<ul>
							<li>즉시 사용 여부</li>
							<li>2024년 6월 28일부터 사용 가능</li>
						</ul>
						<ul>
							<li>티켓 사용 유형</li>
							<li>이바우처 출력</li>
						</ul>
					</div>
					<div>
						<img src="https://image.hanatour.com/usr/static/img2/pc/fnd/icon_line_share_26.png">
					</div>
				</div>			
				<div class="first_line"></div>	
				<div class="icon_box">
					<div class="box">
						<div>
							<div style="width: 25px; height: 25px;" class="center">
								<img src="https://image.hanatour.com/usr/static/img2/pc/fnd/icon_line_checklist_56.png" style="width: 25px; height: 25px;" class="auto">
							</div>
						</div>
						<div class="center box_text">하나투어<br/>취소규정</div>
					</div>
					<div class="box">
						<div>
							<div style="width: 25px; height: 25px;" class="center">
								<img src="https://image.hanatour.com/usr/static/img2/pc/fnd/icon_line_calendar_56.png" style="width: 25px; height: 25px;" class="auto">
							</div>
						</div>
						<div class="center box_text">지정일<br/>사용</div>
					</div>
				</div>		
				<div class="last_line"></div>			
				<div class="price">
					<span>68,900</span>
					<span>원</span>
				</div>			
			</div>
		</div>
	</div>
	<!-- top 하단(img끝부터) 전체 -->	
	<div id="bottom">
		<div class="main fl">
			<div class="main_inner">
				<div class="info_box">
					<div class="info_box_inner">
						<div class="info_box_inner_left border fl">
							<img src="https://image.hanatour.com/usr/static/img2/pc/fnd/icon_line_info_20_purple.png" style="width: 20px; height: 20px; margin-right: 6px;">
							<span>꼭 읽어보세요!</span>
						</div>
						<div class="info_box_inner_right border fl">
							<button type="button" class="info_btn" value="더보기">
								<span>더보기</span>
								<img src="https://image.hanatour.com/usr/static/img2/mobile/fnd/icon_line_arrow_right_16_gray.png">
							</button>
						</div>
					</div>
				</div>
				<div class="type center">
					<a href="#a_goods_type" class="type_inner fl">상품타입</a>
					<a href="#a_goods_info" class="type_inner fl">상품정보</a>
					<a href="" class="type_inner fl">취소/환불 규정</a>
					<a href="" class="type_inner fl">상품후기</a>
					<a href="" class="type_inner fl">상품문의</a>
					<a id="a_goods_type"></a>
				</div>
				
				<div class="price_box">
					<div class="price_box_inner">
						<div>
							<h3>상품타입</h3>
							<div class="calendar_price">
								<div class="calendar_include">
									
								</div>
								
								
								<!-- type별 price박스 한개 -->
							<div class="price_container">
								<div class="type_price_box">
									<div class="type_price">
										<div class="type_price_top">
											<div class="type_price_title">★선착순 할인★ 파리 디즈니랜드 1일 입장권 (1파크 / 2파크 선택가능)</div>
											<div class="type_price_price">
												<span class="price_num">110,400</span>
												<span class="price_unit">원</span>
											</div>
										</div>
										<button type="button" class="type_more">
											<span>타입 정보 더보기</span>
											<span>
												<img src="https://image.hanatour.com/usr/static/img2/mobile/fnd/icon_line_arrow_right_16_gray.png">
											</span>
										</button>
										<div class="type_more_bottom">
											<div style="width: 95px; height:16.8px;">
												<span class="order"></span>
												<span style="font-size: 12px;">주문 확인 후 확정</span>
											</div>
											<div style="width: 95px; height: 16.8px;">
												<span class="order_when"></span>
												<span style="font-size: 12px;">10일 전 주문가능</span>
											</div>
											<button type="button" class="choice_btn">선택</button>
										</div>
									</div>
								</div>
								
								<!-- 두번째 price_box -->
								<div class="type_price_box">
									<div class="type_price">
										<div class="type_price_top">
											<div class="type_price_title">★선착순 할인★ 파리 디즈니랜드 1일 입장권 (1파크 / 2파크 선택가능)</div>
											<div class="type_price_price">
												<span class="price_num">89,200</span>
												<span class="price_unit">원</span>
											</div>
										</div>
										<button type="button" class="type_more">
											<span>타입 정보 더보기</span>
											<span>
												<img src="https://image.hanatour.com/usr/static/img2/mobile/fnd/icon_line_arrow_right_16_gray.png">
											</span>
										</button>
										<div class="type_more_bottom">
											<div style="width: 95px; height:16.8px;">
												<span class="order"></span>
												<span style="font-size: 12px;">주문 확인 후 확정</span>
											</div>
											<div style="width: 95px; height: 16.8px;">
												<span class="order_when"></span>
												<span style="font-size: 12px;">10일 전 주문가능</span>
											</div>
											<button type="button" class="soldout">일시품절</button>
										</div>
									</div>
								</div>
							</div>
							<div id="a_goods_info"></div>
							</div>
						</div>
					</div>
				</div>
				
				<div class="info_detail">
					<div class="info_title" style="height: 34px; line-height: 1.6;">상품정보</div>
					<div class="info_detail_container">
						<div class="voucher_img"></div>
						<div class="coupon_img"></div>
						<img src="https://image.hanatour.com/usr/cms/resize/770_0/2021/09/16/10000/f4eb22b7-55ab-4282-bdc8-eb56fa1c8c61.jpg" style="width: 770px;">
						<div class="empty_space"></div>
						<p>	
							<strong class="purple">[파리 디즈니랜드 1일 입장권 (1파크 / 2파크 선택가능)소개]</strong>
							<br/>낭만의 도시 파리에서 만나는 디즈니랜드!<br/>
							파리 디즈니랜드에서 행복하고 즐거운 하루를 보내보세요.<br/>
							특히 밤에는 환상적인 불꽃 축제가 열리고, 디즈니성에 불이 들어와 마치 마법의 동화속에 있는듯한 착각이 듭니다.<br/>
							나만의 취향으로 좋아하는 파크를 선택하여 방문하거나 두 파크 모두 관람해보세요.<br/>
							다양한 어트랙션과 놀거리가 준비되어 있으며, 여러가지 테마로 구성된 디즈니 동화 속 세상을 체험해보세요.<br/><br/><br/>
							디즈니랜드 파크에서는 디즈니성과 퍼레이드, 공주님 등 다양한 볼거리가 많습니다.<br/>
							월트디즈니 스튜디오에서는 어트랙션이 많이 있습니다.<br/><br/><br/>
							-1파크 : 파리 디즈니랜드 또는 월트 디즈니 스튜디오 중 한 곳을 선택하여 입장<br/>
							-2파크 : 파리 디즈니랜드, 월트 디즈니 스튜디오 두 곳 모두 입장 가능<br/>
						</p>
						<div class="empty_space"></div>
						<div class="empty_space"></div>
						<p>
							<strong class="purple">[포함사항]</strong>
							<br/>- 파리 디즈니랜드 1일 입장권 (1파크 또는 2파크로 구매하신 입장권)
						</p>
						<div class="empty_space"></div>
						<div class="empty_space"></div>
						<p>
							<strong class="purple">[불포함사항]</strong>
							<br/>- 각 옵션 포함 제외 일체
						</p>
						<div class="empty_space"></div>
						<div class="empty_space"></div>
						<p>
							<strong class="purple">[연령규정]</strong>
							<br/>- 성인 : 만 12세이상<br/>
							- 아동 : 만 3세 ~ 11세<br/>
							※ 만 0-2세는 무료로 입장할 수 있습니다. 사진 확인이 가능한 유효한 신분증을 제시해주세요.<br/>
							※ 아동/유아의 구분은 예약일 기준이 아닌, 티켓 사용일 기준으로 구분됩니다.
						</p>
						<div class="empty_space"></div>
						<div class="empty_space"></div>
						<p>
							<strong class="purple">[티켓 옵션 및 유효기간]</strong>
							<br/>- 지정한 날짜에만 사용<br/>
							※예약시 지정한 사용일에만 이용가능하며, 사용일 변경이 불가하므로 예약시 유의해주시길 바랍니다.<br/>
						</p>
						<div class="empty_space"></div>
						<div class="empty_space"></div>
						<p>
							<strong class="purple">[티켓 사용 방법]</strong>
							<br/>- 발권된 E티켓 다운로드 / 출력 후, 현지에서 제시후 사용하시면 됩니다.<br/>
							※ 화면이 잘 읽히지 않을 경우 사용이 불가할수 있으니 대비하여 모바일, 출력물 둘 다 준비해주세요.<br/>
							- 현장에서 출력한 E티켓을 제시하세요.<br/>
						</p>
						<div class="empty_space"></div>
						<div class="empty_space"></div>
						<p>
							<strong class="purple">[티켓 시즌 정보]</strong>
							<br/>날짜별 시즌은 상품타입에서 사용일 클릭후 예약하시면됩니다.<br/>
							비활성화 되어있는 날짜는 오픈전 또는 매진으로 판매가 불가한 날짜입니다.
						</p>
						<div class="empty_space"></div>
						<div class="empty_space"></div>
						<p>
							<strong class="purple">[파리 디즈니랜드 정보]</strong>
							<br/>- 운영시간 : 디즈니랜드 파크 : 오전 9시 30분 ~ 오후 10시 / 월트 디즈니 스튜디오 파크 : 오전 9시30분 ~ 오후 9시</br>
							(운영시간은 현지사정에 따라 유동적으로 변경될 수 있으니, 반드시 방문 전 공식 운영시간을 확인하시고 방문하시길 바랍니다.)<br/>
							- 공식 홈페이지 : 
							<a href="https://www.disneylandparis.com/en-usd/">▶바로가기◀</a>
						</p>
						
						<!-- 상품정보의 이미지 ul -->
						<ul class="info_img_ul">
							<li>
								<img src="https://static.hanatour.com/product-basic/2019/06/19/0917gfis90/large.jpg">
							</li>
							<li>
								<img src="https://static.hanatour.com/product-basic/2019/06/27/01287lhhxw/large.jpg">
							</li>
							<li>
								<img src="https://static.hanatour.com/product-basic/2019/06/27/0128pyrwck/large.jpg">	
							</li>
						</ul>
					</div>
					<hr class="hr_line">
					<div class="manual">
						<div class="manual_title">사용방법</div>
						<p class="manual_box">
							<strong>| 주문요청 → 주문완료 → 발권완료 → E티켓 업로드(PDF파일) |</strong>
							<br/><br/>
							1. 해당 상품은 E티켓 상품으로 결제와 함께 주문이 요청되어, 주문완료를 거쳐 발권이 진행됩니다.<br/>
							2. 결제 후 당일 ~ 3일 내 E티켓이 업로드 됩니다. (영업일 기준 / 평일 09:00 ~ 17:00 / 주말, 공휴일 제외)<br/>
							3. <span class="blue">하나투어 앱이나 Hanatour.com 홈페이지 [마이페이지] > [예약내역] > [투어/입장권]</span>에서<br/>
							   E티켓 확인이 직접 가능합니다.<br/>
							<span class="red_bold">※ 하나투어 모바일 페이지나 앱에서 바우처 확인 불가 시, PC로 확인해주시길 바랍니다.</span>
						</p>
						<div class="empty_space"></div>
						<div class="empty_space"></div>
						<p>
							<strong class="black_bold">[사용 방법]</strong>
							<span class="yellow"><br/>- 발권된 E티켓 다운로드 / 출력 후, 현지에서 제시후 사용하시면 됩니다.<br/></span>
							<span class="blue">※ 화면이 잘 읽히지 않을 경우 사용이 불가할수 있으니 대비하여 모바일, 출력물 둘 다 준비해주세요.</span> <br/>
							- 현장에서 출력한 E티켓을 제시하세요. <br/>
						</p>
					</div>
					<hr class="hr_line">
					
					<!-- 위치 -->
					<div class="location">
						<div class="location_title">위치</div>
						<div class="map"></div>
					</div>
					<hr class="hr_line">
					
					<!-- 유의사항 -->
					<div class="notice">
						<div class="notice_title">유의사항</div>
						<div class="notice_box">
							<p>
								- 해당티켓은 예약시 지정한 날짜에만 사용가능합니다.<br/>
								  발권 완료후 사용일 변경이 불가능하오니  이점 유의해주시길 바랍니다.<br/>
								- 디즈니랜드의 운영시간은 일자별로 상이하므로 방문전 반드시 영업여부/운영시간을 직접 확인해주시길 바랍니다.<br/>
								- 예약시 여권상의 정확한 영문명으로 예약해주셔야합니다.<br/>
								  (발권 후 개인정보 수정 불가하며, 오기재로 인한 이용이 불가할 수 있습니다.)<br/>
								- 해당 티켓은 대표자 1인의 성함으로 일괄 예약/발권처리 되며, 아동의 나이를 확인하기 위해 각 고객의 성함, 생년월일을 기입하는 절차가 있습니다.<br/>
								  현지 공급사에서 여러명을 예약하더라도, 대표자 1인의 성함으로 티켓 발권처리하므로 이용에는 전혀 문제가 없으니 이점 참고부탁드립니다.<br/>
								- 대기열이 있을 수 있습니다.
								- 여권 지참하셔야하나 검표원에 따라 검사하지 않는 경우도 있습니다.<br/>
								  다만. 아동/유아가 있을경우 검사할수 있으니 유효한 신분증을 제시해주세요.<br/>
							 	 <p class="red">
									※ 본 티켓은 훼손, 복제, 양도 또는 재판매 할 수 없습니다.<br/>
									    본 티켓은 성명이 기재된 본인 또는 성명이 기재된 분이 동반하는 분에 한해 사용할 수 있습니다. <br/>
									※해당상품은 현지 상황으로 인해 예약 후 수배가 불가 할 수 있습니다. 해당경우 전액 환불처리 도와드립니다. 	<br/>						
								</p>
								<button type="button" class="notice_ad"></button>
							</p>
						</div>
					</div>
					<hr class="hr_line">
					
					<!-- 취소/환불 규정 -->
					<div class="cancel_refund">
						<div class="cancel_refund_title">취소/환불 규정</div>
						<p>
							※ 본 상품은 상품특성상 부득이하게 별도의 취소 환불 약관이 적용됩니다.<br/>
							※ 본 취소 환불 규정은 영업일 기준으로 적용됩니다. (공휴일 및 주말 제외 , 영업시간 09:00 ~ 18:00)<br/>
							- 주문 완료 단계 : 100% 환불 가능<br/>
							- 주문 확정, 발권 진행중, 발권 완료 단계 : 예약 변경 및 전액 환불 불가<br/>
							※ 예약시 잘못 기입된 정보 ( 이름, 휴대폰번호, 이메일 주소 등)에 따른 불이익에 대해서는 책임을 지지 않습니다.<br/>
							<span class="red">※해당상품은 현지 상황으로 인해 예약 후 수배가 불가 할 수 있습니다. 해당경우 전액 환불처리 도와드립니다.</span>
						</p>
					</div>
					
					<!-- 다른 사람이 함께 본 상품 -->
					<div class="content_box">
						<div class="content_inner">
							<div class="content_container">
								<div class="content_container_title">다른 사람이 함께 본 상품</div>
								<div class="content_container_bottom">
									<!-- content박스 하나씩 -->
									<div class="content">
										<img src="https://static.hanatour.com/product/2018/12/27/04181m1riy/medium.jpg" class="content_img">
										<div class="content_info">
											<div class="content_type">
												<span>투어/입장권</span>
												<div class="content_type_circle"></div>
												<span>트립</span>
											</div>
											<div class="content_title">[로마] 오전 바티칸 반일투어(2024년도 진행/회화관포함)</div>
											<div class="content_price">
												<span>65,000</span>
												<span>원</span>
											</div>
										</div>
										<button type="button" id="detail" class="detail_btn">자세히 보기</button>
									</div>
									<!-- content박스 하나씩 -->
									<div class="content">
										<img src="https://static.hanatour.com/product/2024/06/13/0641h1iccd/medium.jpg" class="content_img">
										<div class="content_info">
											<div class="content_type">
												<span>투어/입장권</span>
												<div class="content_type_circle"></div>
												<span>입장권/패스</span>
											</div>
											<div class="content_title">어드벤쳐 펀 4 (24/06/03부터~) 일본 오사카 유니버셜스튜디오재팬 익스프레스4 입장시간랜덤권 #명탐정코난 #닌텐도월드 #나의히어로아카데미아</div>
											<div class="content_price">
												<span>113,300</span>
												<span>원</span>
											</div>
										</div>
										<button type="button" id="detail" class="detail_btn">자세히 보기</button>
									</div>
									<!-- content박스 하나씩 -->
									<div class="content">
										<img src="https://static.hanatour.com/product/2024/06/13/0641h1iccd/medium.jpg" class="content_img">
										<div class="content_info">
											<div class="content_type">
												<span>투어/입장권</span>
												<div class="content_type_circle"></div>
												<span>입장권/패스</span>
											</div>
											<div class="content_title">어드벤처&죠스 4 (24/07/01부터~) 일본 오사카 유니버셜스튜디오재팬 익스프레스4 입장시간랜덤권 #닌텐도월드 #명탐정코난 #해리포터</div>
											<div class="content_price">
												<span>113,300</span>
												<span>원</span>
											</div>
										</div>
										<button type="button" id="detail" class="detail_btn">자세히 보기</button>
									</div>
								</div>
							</div>
							
							<!-- 함께 많이 본 상품 -->
							<div class="content_container" style="margin-top: 60px;">
								<div class="content_container_title">함께 많이 본 상품</div>
								<div class="content_container_bottom">
									<!-- content박스 하나씩 -->
									<div class="content">
										<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/04/23/100000/914adf5e-9691-47bf-bda5-fa7b61cb78d0.jpg" class="content_img">
										<div class="content_info">
											<div class="content_type">
												<span>레지던스 3성급</span>
												<div class="content_type_circle"></div>
												<span>파리</span>
											</div>
											<div class="content_title">아파트호텔 아다지오 액세스 파리 클라마르</div>
											<div class="content_price">
												<span>149,536</span>
												<span>원</span>
											</div>
										</div>
										<button type="button" id="detail" class="detail_btn">자세히 보기</button>
									</div>
									<!-- content박스 하나씩 -->
									<div class="content">
										<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/04/23/90000/c2084e2c-ae89-4feb-a4cd-df02b2379e76.jpg" class="content_img">
										<div class="content_info">
											<div class="content_type">
												<span>호텔 3성급</span>
												<div class="content_type_circle"></div>
												<span>파리</span>
											</div>
											<div class="content_title">컴포트 호텔 파리 포르트 디브리</div>
											<div class="content_price">
												<span>121,438</span>
												<span>원</span>
											</div>
										</div>
										<button type="button" id="detail" class="detail_btn">자세히 보기</button>
									</div>
									<!-- content박스 하나씩 -->
									<div class="content">
										<img src="https://image.hanatour.com/usr/cms/resize/400_0/2021/08/24/20000/bcfea77f-4c7f-4890-ba50-d7a049576b09.jpg" class="content_img">
										<div class="content_info">
											<div class="content_type">
												<span>현지투어</span>
												<div class="content_type_circle"></div>
												<span>6박 7일</span>
											</div>
											<div class="content_title">런던/런던근교+파리/파리근교 7일 #런던뮤지컬관람 #파리2대옵션포함 #베르사유 #근교도시BEST★4 #전일정4성급호텔 #맛5#항공권 별도</div>
											<div class="content_price">
												<span>3,100,000</span>
												<span>원</span>
											</div>
										</div>
										<button type="button" id="detail" class="detail_btn">자세히 보기</button>
									</div>
								</div>
							</div>
						</div>
					</div>
			</div>
			
			<!-- 상품후기 -->
			<div id="review">
				<div class="review_container">
					<div class="review_container_title">
						<span>상품후기</span>
						<button type="button" class="review_write_btn">후기 작성하기</button>
					</div>
					<div class="review_container_bottom">
						<div class="rating_box border">
							<div class="rating_num">
								<strong>5</strong>
								<span>/5</span>
							</div>
							<div class="rating_star">
								<img src="https://image.hanatour.com/usr/static/img2/mobile/fnd/icon_solid_star_32_purple.png">
								<img src="https://image.hanatour.com/usr/static/img2/mobile/fnd/icon_solid_star_32_purple.png">
								<img src="https://image.hanatour.com/usr/static/img2/mobile/fnd/icon_solid_star_32_purple.png">
								<img src="https://image.hanatour.com/usr/static/img2/mobile/fnd/icon_solid_star_32_purple.png">
								<img src="https://image.hanatour.com/usr/static/img2/mobile/fnd/icon_solid_star_32_purple.png">
							</div>
						</div>
						<div class="ai_review_summary"></div>
						
						<!-- 전체 후기 -->
						<div class="entire_review_title">
							<div>전체후기</div>
							<div style="display: flex; column-gap: 10px;">
								<button type="button" class="review_align_btn">최신순</button>
								<button type="button" class="review_align_btn">도움순</button>
								<button type="button" class="review_align_btn">평점순</button>
							</div>
						</div>
						<div class="review_entire_box">
							<!-- 리뷰 한개 박스 -->
							<div class="review_box">
								<div class="review_box_top">
									<span class="star_icon"></span>
									<span class="review_box_rating">5</span>
									<img src="https://image.hanatour.com/usr/static/img2/mobile/fnd/icon_profile_40.png" class="user_icon">
									<span class="user_name">이선옥</span>
									<div class="review_dot_icon"></div>
									<span class="review_date">2024.06.21</span>
								</div>
								<div class="review_type">
									<span>타입명</span>
									<span>★선착순 할인★ 파리 디즈니랜드 1일 입장권 (1파크 / 2파크 선택가능)</span>
								</div>
								<div class="review_content">
										하나투어가 지금 선착순 할인 하고 있어서 최저가네요 !<br/>
										타사 최저가 보고 눌러서 구매하려고 보면 아동가로 나와있는곳이 많아서 여기저기 비교하느라 힘들었습니다.<br/>
										...
								</div>
								<div class="review_bottom">
									<button type="button" class="review_good_btn">
										<div class="thumb_icon"></div>
										<span>도움이 돼요</span>
										<span class="review_good_num">0</span>
									</button>
									<button type="button" class="review_more">
										<div>더보기</div>
										<div class="down_icon"></div>
									</button>
								</div>
							</div>
							<!-- 리뷰 페이지 -->
							<div class="review_page">
								<button type="button" class="page_btn">1</button>
							</div>
						</div>
						
						
						<!-- 상품문의 -->
						<div class="inquiry">
							<div class="inquiry_inner">
								<div class="inquiry_title">
									<span>상품문의</span>
									<button type="button" class="inquiry_btn">문의하기</button>
								</div>
								<div class="inquiry_info_box">
									<ul>
										<li>
											<span class="alert_icon"></span>
											<span>상품과 관계없는 글, 양도, 광고성, 욕설, 비방 도배 등의 글은 예고 없이 삭제됩니다.</span>
										</li>
										<li style="margin-top:8px;">
											<span class="alert_icon"></span>
											<span>공개 게시판 이므로 개인정보(주민번호, 연락처, 주소, 계좌번호, 카드번호 등)가 타인에게 노출될 경우 개인정보 도용의 위험이 있으니 주의해 주시기 바랍니다.</span>
										</li>
									</ul>
								</div>
								
								<div class="inquiry_box">
									<div class="inquiry_box_inner">
										<!-- inquiry_top: 답변완료|김OO|2024.06.20 -->
										<div class="inquiry_box_top">
											<span class="inquiry_answer_status">답변완료</span>
											<div class="pole"></div>
											<span class="inquiry_name">예*희</span>
											<div class="pole"></div>
											<span class="inquiry_date">2024.06.20</span>
										</div>
										<button type="button" class="inquiry_content_summary">
											<span>[날짜/시간]날짜는 파리 현지 날짜를 기준으로 예매?</span>
											<div class="inquiry_icon_box">
												<div class="inquiry_down_icon"></div>
											</div>
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
<!-- side_bar -->
		<div class="side fr">
			<div class="side_bar">
				<div class="total_price">
					<div>총 금액</div>
					<div>
						<span>68,900</span>
						<span>원</span>
					</div>
				</div>
				<div class="under_price">
					2024년 6월 29일부터 사용 가능
				</div>
				<button type="button" class="order_btn">주문하기</button>
				<div class="coupon_zzim">
					<button type="button" class="coupon_btn">
						<span>쿠폰받기</span>
						<span class="download_icon"></span>
					</button>
					<button type="button" class="zzim_btn">
						<div class="heart_icon"></div>
					</button>
				</div>
			</div>
		</div>
	</div>
	
</div>
</body>
</html>