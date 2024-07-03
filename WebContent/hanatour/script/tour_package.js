$(function () {
// 사진 slider
	//왼쪽으로 이동
	$(".main_slider_left").click(function() {
		$("#main_img_list li").last().prependTo("#main_img_list");
		$("#main_img_list").css('left','-674px');
		$("#main_img_list").animate({left: '0px'});
	});
	
	// 오른쪽으로 이동 
	$(".main_slider_right").click(function() {
		$("#main_img_list li").first().appendTo("#main_img_list");
		$("#main_img_list").css('left','672px');
		$("#main_img_list").animate({left:'0px'});
	});
	
	
	
// 가격 정보
	//어른 가격
	$("#adult_minus").click(function() {
		 //alert("마이너스");
		let num = Number($("#adult_price").val());
		if(num>=2) {
			$("#adult_price").val(num-1);
		} else {
			$("#adult_price").val(num);
		}
	});
	$("#adult_plus").click(function() {
		 //alert("플러스");
		let num = Number($("#adult_price").val());
		if(num>=10) {
			$("#adult_price").val(num);
		} else {
			$("#adult_price").val(num+1);
		}
	});
	
	//아동 가격 
	$("#child_minus").click(function() {
		let num = Number($("#child_price").val());
		if(num >= 1) {
			$("#child_price").val(num-1);
		} else {
			$("#child_price").val(num);
		}
	});
	$("#child_plus").click(function() {
		let num = Number($("#child_price").val());
		if(num<=9) {
			$("#child_price").val(num+1);
		} else {
			$("#child_price").val(num);
		}
	});
	
	//유아 가격
	$("#kid_minus").click(function() {
		let num = Number($("#kid_price").val());
		if(num>=1) {
			$("#kid_price").val(num-1);
		} else {
			$("kid_price").val(num);
		}
	});
	
	$("#kid_plus").click(function() {
		let num = Number($("#kid_price").val());
		if(num<=9) {
			$("#kid_price").val(num+1);
		} else {
			$("#kid_price").val(num);
		}
	});
	
	//총 가격 정하기 
	
	$(".select_person button").click (function() {
		//alert("아");
		let adult = Number($("#adult_price").val());
		let child = Number($("#child_price").val()) || 0;
		let kid = Number($("#kid_price").val()) || 0;
		
		let adult_money = Number($("#adult_money").text().replace(/,/g, ""));
		let child_money = Number($("#child_money").text().replace(/,/g, ""));
		let kid_money = Number($("#kid_money").text().replace(/,/g, ""));
		let total = (adult*adult_money) + (child*child_money) + (kid*kid_money);
		
		
		$("#total").text(total.toLocaleString());
	});
	
	
	
	
// 여행일정부분 내용 변경 
	$("#travel_trip").css("background-color","#5e2bb8")
					.css("color","white");
    // $("#travel_trip_detail").show(); //원래형태
	// $("#long_content > div").not("#long_content_header, #travel_trip_detail").hide();
	
	// $("hotel_attraction_detail").show(); //호텔&관광지 먼저보여주기
	// $("#long_content > div").not("#long_content_header, #hotel_attraction_detail").hide();
	
	// $("three_note_detail").show();
	// $("#long_content > div").not("#long_content_header, #three_note_detail").hide();
	
	$("#travel_review_detail").show();
	$("#long_content > div").not("#long_content_header, #travel_review_detail").hide();
	
	
	
	$("#long_content_header > div").click(function () {
    // 모든 버튼의 스타일을 초기화합니다.
    $("#long_content_header > div").css("background-color", "")
                					.css("color", "");
                
    // 클릭된 버튼의 스타일을 변경합니다.
    $(this).css("background-color", "#5e2bb8")
           .css("color", "white");

	// 모든 detail 요소를 숨깁니다.
    $("#long_content > div").not("#long_content_header").hide();

    // 클릭된 버튼에 따라 해당 detail을 표시합니다.
    if (this.id == "travel_trip") {
        $("#travel_trip_detail").show();
    } else if (this.id == "hotel_attraction") {
        $("#hotel_attraction_detail").show();
    } else if (this.id == "three_note") {
        $("#three_note_detail").show();
    } else if (this.id == "aboard_safety") {
        $("#aboard_safety_detail").show();
    } else if (this.id == "travel_review") {
        $("#travel_review_detail").show();
    } else if(this.id=="optional_tour") {
		$("#optional_tour_detail").show();
	}

	});
	
	
//호텔&관광지 
//호텔정보와 관광지 정보 나타내기 
	
	//기본적으로 호텔 정보 선택되게 하기
	$("#hotel_detail").css("border","1px solid black")
						.css("border-bottom","0")
						.css("color", "#5e2bb8");
	$("#hotel_detail_info").show();
	$("#attraction_detail_info").hide();	
	
	//적용하기
	$("#hotel_attraction_detail > div:nth-child(1) > div").click(function () {
		//버튼 초기화
		$("#hotel_attraction_detail > div:nth-child(1) > div").css("border","")
																.css("color", "");
		//클릭된 버튼 스타일 변경
		$(this).css("border","1px solid black")
					.css("border-bottom","0")
					.css("color", "#5e2bb8");	
					
		//모든 내부창 숨기기
		$("#hotel_attraction_detail > div").not("#hotel_attraction_detail > div:nth-child(1)").hide();
		
		//내부창 보여주기
		if(this.id=="hotel_detail") {
			$("#hotel_detail_info").show();
		} else if (this.id=="attraction_detail") {
			$("#attraction_detail_info").show();
		}													
	});
	
	
//참고사항
//참고사항 유의사항 결제/혜택/보험 비상연락처 정보 각각 보여주기

		//기본적으로 유의사항 정보 선택 
		$("#notice").css({
		    "border": "1px solid black",
		    "border-bottom": "0",
		    "color": "#5e2bb8"
		});
		$("#notice_detail").show();
		$("#payment_benefit_detail").hide();
		$("#emergency_contact_detail").hide();		
		
		//적용하기 
		$("#three_note_detail > div:nth-child(1) > div").click(function () {
			//버튼 초기화 
			$("#three_note_detail > div:nth-child(1) > div").css("border","")
															.css("color","");
			//클릭한 버튼 변경
			$(this).css("border","solid 1px black")	
					.css("border-bottom","1px solid white")
					.css("color", "#5e2bb8");
					
			//모든 내부창 숨기기
			$("#three_note_detail > div").not("#three_note_detail > div:nth-child(1)").hide();
			
			//클릭한 내부창 보여주기
			if(this.id=="notice") {
				$("#notice_detail").show();
			} else if(this.id=="payment_benefit") {
				$("#payment_benefit_detail").show();
			} else if(this.id=="emergency_contact") {
				$("#emergency_contact_detail").show();
			}								 		 			
			
		});		
		
});		
		
		