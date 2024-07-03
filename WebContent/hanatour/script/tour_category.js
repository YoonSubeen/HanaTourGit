$(function() {
	$("#compare_box").click(function() {
		$("#compare_wrap").toggleClass("hide");
	});
	
	//투어조건 열고 닫기 
	$(".black_v").click(function() {
    // 현재 회전 상태를 클래스에 저장
    if ($(this).hasClass('rotated')) {
        $(this).css('transform', 'rotate(0deg)');
        $(this).removeClass('rotated');
    } else {
        $(this).css('transform', 'rotate(180deg)');
        $(this).addClass('rotated');
    }

    // 회전 애니메이션 적용
    $(this).css('transition', 'transform 0.7s');
	});
	
	
	// 투어조건 클릭변화 
	$("#div-tour > details > div > div > button").click(function() {
	    if($(this).css('border-color') === 'rgb(94, 43, 184)') { 
	        $(this).css('border', '1px solid black');
			$(this).css('color', 'black');
	    } else {
	        $(this).css('border', '1px solid #5e2bb8'); 
			$(this).css('color', '#5e2bb8'); 
	    }
	});
	
	// 프로모션 클릭변화 
	$("#div_promotion > details > div > button").click(function() {
	    if($(this).css('border-color') === 'rgb(94, 43, 184)') { 
	        $(this).css('border', '1px solid black');
			$(this).css('color', 'black');
	    } else {
	        $(this).css('border', '1px solid #5e2bb8'); 
			$(this).css('color', '#5e2bb8'); 
	    }
	});
	
	//호텔 성급 클릭 변화
	$("#div_hotel > details > div > button").click(function() {
	    if($(this).css('border-color') === 'rgb(94, 43, 184)') { 
	        $(this).css('border', '1px solid black');
			$(this).css('color', 'black');
	    } else {
	        $(this).css('border', '1px solid #5e2bb8'); 
			$(this).css('color', '#5e2bb8'); 
	    }
	});
	
	//항공사 클릭 변화 
	$("#div_flight > details > div > button").click(function() {
	    if($(this).css('border-color') === 'rgb(94, 43, 184)') { 
	        $(this).css('border', '1px solid black');
			$(this).css('color', 'black');
	    } else {
	        $(this).css('border', '1px solid #5e2bb8'); 
			$(this).css('color', '#5e2bb8'); 
	    }
	});
	
	//출발항공 시간대 클릭 변화
	$("#div_departure_time > details > div > button").click(function() {
	    if($(this).css('border-color') === 'rgb(94, 43, 184)') { 
	        $(this).css('border', '1px solid black');
			$(this).css('color', 'black');
	    } else {
	        $(this).css('border', '1px solid #5e2bb8'); 
			$(this).css('color', '#5e2bb8'); 
	    }
	});
	// 출발요일 클릭 변화 
	$("#div_departure_date > details > div > button").click(function() {
	    if($(this).css('border-color') === 'rgb(94, 43, 184)') { 
	        $(this).css('border', '1px solid black');
			$(this).css('color', 'black');
	    } else {
	        $(this).css('border', '1px solid #5e2bb8'); 
			$(this).css('color', '#5e2bb8'); 
	    }
	});
	
	// 어떤 여행을 원하세요 클릭 변화 
	$("#div_type > details > div > button").click(function() {
	    if($(this).css('border-color') === 'rgb(94, 43, 184)') { 
	        $(this).css('border', '1px solid black');
			$(this).css('color', 'black');
	    } else {
	        $(this).css('border', '1px solid #5e2bb8'); 
			$(this).css('color', '#5e2bb8'); 
	    }
	});	
	
	// 누구와 떠나세요 클릭 변화
	$("#div_who > details > div > button").click(function() {
	    if($(this).css('border-color') === 'rgb(94, 43, 184)') { 
	        $(this).css('border', '1px solid black');
			$(this).css('color', 'black');
	    } else {
	        $(this).css('border', '1px solid #5e2bb8'); 
			$(this).css('color', '#5e2bb8'); 
	    }
	});
	
	// 상품 브랜드 클릭 변화 
	$("#div_brand > details > div > button").click(function() {
	    if($(this).css('border-color') === 'rgb(94, 43, 184)') { 
	        $(this).css('border', '1px solid black');
			$(this).css('color', 'black');
	    } else {
	        $(this).css('border', '1px solid #5e2bb8'); 
			$(this).css('color', '#5e2bb8'); 
	    }
	});
	
	// 1인 예산 클릭 변화
	$("#div_money > details > div > button").click(function() {
	    if($(this).css('border-color') === 'rgb(94, 43, 184)') { 
	        $(this).css('border', '1px solid black');
			$(this).css('color', 'black');
	    } else {
	        $(this).css('border', '1px solid #5e2bb8'); 
			$(this).css('color', '#5e2bb8'); 
	    }
	});
	
	// 클릭시 팝업 더블시 검색창
	$("#where_hide").hide();
	$("#doubleclick_search").hide();
	
	$("#double_click").click(function() {
		$("#where_hide").show();
	});
	
	$("#double_click").dblclick(function() {
		$("#doubleclick_search").show();
		$("double_click").hide();
	});
	
	$(document).click(function(event) {
    // 클릭한 요소가 #doubleclick_search 요소나 그 자식 요소가 아닌 경우
    if (!$(event.target).closest("#doubleclick_search").length && !$(event.target).is("#double_click")) {
        $("#doubleclick_search").hide();
		$("#where_hide").hide();
    }
	});
	
	$("#doubleclick_search").click(function(event) {
		event.stopPropagation();
	});
	
	$("#where_hide").click(function(event) {
		event.stopPropagation();
	});
	
	// 여행일 선택창 숨기고 보이기
	$("#tour_date_hide").hide();
	
	$("#tour_date").click(function() {
		$("#tour_date_hide").toggle();
	});
	
	

	//상품비교함 3개짜리
	$('#compare_content > div:nth-child(3) > button:nth-child(2)').click(function() {
		$('#compare_in').show();  // This will show the element with id compare_in
		$('#div_fullscreen_grey').show();  // This will ...
    }); 
	

	
	
/*	$("#div_fullscreen_grey").scroll(function(event) {
		console.log("스크롤을 막...");
		event.stopPropagation(); ------- NOT WORKING
	});
*/	
/*	$("body").on('scroll', function() {
		alert("야 되잖아");
	}); 
	
	$("body").click(function() {
		alert("이건...?");
	});*/
	
	//상품비교함 숨기고 보이기
	$(".product_hide").hide();
	$(".product_show").click(function() {
		$(this).parent().parent().parent().find(".product_hide").toggle();
	});
	
//일자 달력 
	$(document).ready(function() {
    calendarInit();
});
/*
    달력 렌더링 할 때 필요한 정보 목록 

    현재 월(초기값 : 현재 시간)
    금월 마지막일 날짜와 요일
    전월 마지막일 날짜와 요일
*/

function calendarInit() {

    // 날짜 정보 가져오기
    let date = new Date(); // 현재 날짜(로컬 기준) 가져오기
    let utc = date.getTime() + (date.getTimezoneOffset() * 60 * 1000); // uct 표준시 도출
    let kstGap = 9 * 60 * 60 * 1000; // 한국 kst 기준시간 더하기
    let today = new Date(utc + kstGap); // 한국 시간으로 date 객체 만들기(오늘)
  
    let thisMonth = new Date(today.getFullYear(), today.getMonth(), today.getDate());
    // 달력에서 표기하는 날짜 객체
  
    
    let currentYear = thisMonth.getFullYear(); // 달력에서 표기하는 연
    let currentMonth = thisMonth.getMonth(); // 달력에서 표기하는 월
    let currentDate = thisMonth.getDate(); // 달력에서 표기하는 일

    // kst 기준 현재시간
    // console.log(thisMonth);

    // 캘린더 렌더링
    renderCalender(thisMonth);

    function renderCalender(thisMonth) {

        // 렌더링을 위한 데이터 정리
        currentYear = thisMonth.getFullYear();
        currentMonth = thisMonth.getMonth();
        currentDate = thisMonth.getDate();

        // 이전 달의 마지막 날 날짜와 요일 구하기
        let startDay = new Date(currentYear, currentMonth, 0);
        let prevDate = startDay.getDate();
        let prevDay = startDay.getDay();

        // 이번 달의 마지막날 날짜와 요일 구하기
        let endDay = new Date(currentYear, currentMonth + 1, 0);
        let nextDate = endDay.getDate();
        let nextDay = endDay.getDay();

        // 현재 월 표기
        $('.show_date').text(currentYear + "년" + (currentMonth + 1) + "월");

        // 렌더링 html 요소 생성
        calendar = document.querySelector('.dates')
        calendar.innerHTML = '';
        
        // 지난달
        for (let i = prevDate - prevDay + 1; i <= prevDate; i++) {
            calendar.innerHTML = calendar.innerHTML + '<div class="day prev disable">' + i + '</div>'
        }
        // 이번달
        for (let i = 1; i <= nextDate; i++) {
            calendar.innerHTML = calendar.innerHTML + '<div class="day current">' + i + '</div>'
        }
        // 다음달
        for (let i = 1; i <= (7 - nextDay == 7 ? 0 : 7 - nextDay); i++) {
            calendar.innerHTML = calendar.innerHTML + '<div class="day next disable">' + i + '</div>'
        }

        // 오늘 날짜 표기
        if (today.getMonth() == currentMonth) {
            todayDate = today.getDate();
            let currentMonthDate = document.querySelectorAll('.dates .current');
            currentMonthDate[todayDate -1].classList.add('today');
        }
    }

    // 이전달로 이동
    $('.big_black_left_arrow').on('click', function() {
        thisMonth = new Date(currentYear, currentMonth - 1, 1);
        renderCalender(thisMonth);
    });

    // 다음달로 이동
    $('.big_black_right_arrow').on('click', function() {
        thisMonth = new Date(currentYear, currentMonth + 1, 1);
        renderCalender(thisMonth); 
    });
}
	
	
	
	
	
	
	
	
	
	
	
	//상품비교함 배열
	$("#compare_in > div:nth-child(1) >div:nth-child(2) > button:nth-child(1)").click(function() {
		$("#compare_in").hide();
		$("#div_fullscreen_grey").hide();
	});
	
	const btn = document.querySelector('.btn-select');
	const list = document.querySelector('.list-member');
	btn.addEventListener('click', () => {
	  btn.classList.toggle('on');
	});
	list.addEventListener('click', (event) => {
	  if (event.target.nodeName === "BUTTON") {
	    btn.innerText = event.target.innerText;
	    btn.classList.remove('on');
	  }
	});
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
});