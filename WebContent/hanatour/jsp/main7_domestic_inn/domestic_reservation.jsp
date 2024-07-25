<%@page import="dao.DomesticReservationDao"%>
<%@page import="dto.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.DomesticHotelDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	DomesticReservationDao reservDao = new DomesticReservationDao();
	ArrayList<DomesticReservPersonDto> reservPerson = reservDao.getReservPersonInfo(1);
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
   	<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
	<script>
	
	/* <input type="checkbox" id="samecheck" class="check_box"> */
/* 		$(function() {
			let stateOn = false;
			$("#same_data_id").click(function() {
				stateOn = !stateOn;
				if(stateOn) { 
					console.log("켜진 상태");
					 $(".name_box").val($(".name_kor_box")); 
					
				} else {
					
					console.log("꺼진 상태");
				}
			});
		}); */
	</script>
</head>
<body>




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
<form >
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
					<input type="text" name="user_name" value="<%=reservDto.getName() %>" class="name_kor_box" /readonly>
					&nbsp;&nbsp;
					<select style="width: 50px; height: 35px; border: 1px solid #cdcdcd; color:#666;">
						<option value="male">남</option>
						<option value="female">여</option>
					</select>
				</li>
				<li><span class="essential">*</span>법정생년월일</li>
				<li>
					<input type="text" name="birth" value="<%=reservDto.getBirth().split(" ")[0].replace("-", "") %>" class="input_birth" value="19980207" /readonly>
				</li>
			</ul>
			<ul>
				<li><span class="essential">*</span>휴대폰</li>
				<li>
					<input type="text" name="portable_phone" class="input_portable_phone" value="<%=reservDto.getPhone() %>" /readonly>
					
				</li>
				<li>전화번호</li>
				<li>
					<input type="text" name="phone_num" class="input_phone" placeholder="예) 0222222525" style="background: none !important;">
				</li>
			</ul>
			<ul>
				<li><span class="essential">*</span>이메일</li>
				<li>
					<input type="text" name="email_address" class="input_email" value="<%=reservDto.getEmail() %>" /readonly>
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
			<!-- same_data_id_active -->
			<label 
				for="samecheck" 
				id="same_data_id" 
				class="same_data "
			>
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
	
	
	<!-- 오른쪽 결제 정보 박스 -->
	<div style="width:306px; height: 2680.52px;" class="fr">
		<div id="main_right" class="fr">
			<div id="price_title">결제 정보</div>
			<div class="price_content">
				<div id="price_content_top"></div>
		 		<div class="fl">최종결제금액</div>
				<div class="price_content_top">
					<span class="">성인 1</span>
					<span class="">아동 0</span>
				</div> 
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
</form>
</div>
	


</body>
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<script src="<%=request.getContextPath() %>/hanatour/script_jsp/footer.js"></script>
<script src="<%=request.getContextPath() %>/hanatour/script_jsp/header.js"></script>
<script src="<%=request.getContextPath() %>/hanatour/script_jsp/domestic_reservation.js"></script>
</html>