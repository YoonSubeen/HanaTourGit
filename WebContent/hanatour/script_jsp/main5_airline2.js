$(function() {


    // 항공권 조회 페이지 변경 버튼
    $(".airline_info_change_btn").click(function() {    

        if( $(".airline_search_page_header_inner2").hasClass("airline_info_change_active") ) {
            $(".airline_search_page_header_inner2").removeClass("airline_info_change_active");
            $(".airline_search_page_header").css("height", "464px");
        } else {
            $(".airline_search_page_header_inner2").addClass("airline_info_change_active");
            $(".airline_search_page_header").css("height", "150px");
        }
    });



    // 항공권 조회 페이지 필터링 열고 닫기
    $(".airline_filter > div:nth-child(1)").click(function() {

        let airline_filter_2nd_child = $(this).parent().children("div:nth-child(2)");

        if( airline_filter_2nd_child.hasClass("airline_filter_display_block") ) {
            airline_filter_2nd_child.removeClass("airline_filter_display_block");
        } else {
            airline_filter_2nd_child.addClass("airline_filter_display_block");
        }

    });

    
    // 모두펼침, 모두닫힘
    $(".airline_filter_open_all").click(function() {

        let airline_filter = $(".airline_filter").children("div:nth-child(2)");
        // console.log(airline_filter);

        if( $(this).text() == "모두펼침" ) { // 텍스트가 "모두펼침" 일때
            $(this).text("모두닫힘");
            airline_filter.addClass("airline_filter_display_block");
        } else { // 텍스트가 "모두닫힘" 일때
            $(this).text("모두펼침");
            airline_filter.removeClass("airline_filter_display_block");
        }

    });


    // 필터 개수
    let numberOfFilter = $(".airline_filter_list2").children().length;
    $(".airline_filter_list1 > span:nth-child(3)").text(numberOfFilter);


    // 필터 개별 삭제
    $(".airline_filter_list2 > span").click(function() {
        $(this).remove();
        let numberOfFilter = $(".airline_filter_list2").children().length;
        $(".airline_filter_list1 > span:nth-child(3)").text(numberOfFilter);
    });

    // 필터 전체 삭제
    $(".airline_filter_list3").click(function() {
        $(".airline_filter_list2").children().remove();
        let numberOfFilter = $(".airline_filter_list2").children().length;
        $(".airline_filter_list1 > span:nth-child(3)").text(numberOfFilter);
    });


    // 선택된 티켓






    // 항공권 정렬 글씨색
    $(".airline_ticket_order > span").click(function() {
        $(this).parent().find(".airline_ticket_order_active").removeClass("airline_ticket_order_active");
        $(this).addClass("airline_ticket_order_active");
    })
 

    // 공동운항 아이콘 없애기 - 미구현
    if ( $(".airline_ticket_codeshare > span:nth-child(1)").text().trim() === "" ) {
        // $(".airline_ticket_codeshare").find(".airline_ticket_codeshare_mark").remove();
        $(".airline_ticket_codeshare").find(".airline_ticket_codeshare_mark").remove();
    }



    // 항공권 선택
    $(".airline_ticket").find(".airline_ticket_inner").find(".airline_ticket4").on({
        "click": function() {
            let airlineTicket1 = $(this).parent().find(".airline_ticket1");
            let airlineTicket2 = $(this).parent().find(".airline_ticket2");
            let airlineTicket4 = $(this).parent().find(".airline_ticket4");
    
            let airlineTicketAirlineLogo = airlineTicket1.find(".airline_ticket_airline").children().eq(0).find("img").attr("src");
            let airlineTicketAirlineName = airlineTicket1.find(".airline_ticket_airline").children().eq(1).text();
            let airlineTicketFlightNumber = airlineTicket1.find(".airline_ticket_flight_number").children().eq(0).text();
            let airlineTicketFlightNumber2 = airlineTicket1.find(".airline_ticket_flight_number").children().eq(1).text();
            let airlineTicketCodeshare = airlineTicket1.find(".airline_ticket_codeshare").children().eq(0).text();
            let airlineTicketCodeshareHover = airlineTicket1.find(".airline_ticket_codeshare").children().eq(2).children().eq(1).text();
    
            let airlineTicketDepartureTime = airlineTicket2.children().eq(0).children().eq(0).text();
            let airlineTicketDepartureIata = airlineTicket2.children().eq(0).children().eq(1).text();
            let airlineTicketStop1 = airlineTicket2.children().eq(1).children().eq(0).text();
            let airlineTicketStop2 = airlineTicket2.children().eq(1).children().eq(2).text();
            let airlineTicketArrivalTime = airlineTicket2.children().eq(2).children().eq(0).text();
            let airlineTicketArrivalIata = airlineTicket2.children().eq(2).children().eq(1).text();
    
            let airlineTicketEmptySeats = airlineTicket4.children().eq(0).children().eq(1).children().eq(1).text();
            
            // selected_airline_ticket_container에 항공권 추가
            $(".selected_airline_ticket_container").append( 
               
                '<div class="selected_airline_ticket">'+
                    '<div class="selected_airline_ticket_header">' +
                        '<div>가는 편</div>' +
                        '<div>2024.09.12 (목) </div>' +
                    '</div>' +
    
                    '<div class="selected_airline_ticket_inner">' +
    
                        '<div class="selected_airline_ticket1">' +
                            '<div class="airline_ticket_airline">' +
                                '<div>' +
                                    '<img src="' + airlineTicketAirlineLogo + '" alt="">' +
                                '</div>' +
                                '<div>' + airlineTicketAirlineName + '</div>' +
                            '</div>' +
                        '</div>' +
                        '<div class="selected_airline_ticket2">' +
                            '<div class="airline_ticket_flight_number">' +
                                '<span>' + airlineTicketFlightNumber + '</span>' +
                                '<span>' + airlineTicketFlightNumber2 +'</span>' +
                            '</div>' +
                            '<div class="airline_ticket_codeshare">' +
                                '<span>' + airlineTicketCodeshare + '</span>' +
                                '<span class="airline_ticket_codeshare_mark"></span>' +
                                '<div class="airline_ticket_codeshare_hover">' +
                                    '<span>실제탑승&#58;</span>' +
                                    '<span>' + airlineTicketCodeshareHover + '</span>' + 
                                '</div>' +
                            '</div>' +
                        '</div>' +
                        '<div class="selected_airline_ticket3">' +
                            '<div class="airline_ticket_time">' +
                                '<div>' + airlineTicketDepartureTime + '</div>' +
                                '<div>' + airlineTicketDepartureIata + '</div>' +
                            '</div>' +
                            '<div class="airline_ticket_stop">' +
                                '<div>' + airlineTicketStop1 + '</div>' +
                                '<div class="airline_ticket_stop_line"></div>' +
                                '<div>' + airlineTicketStop2 + '</div>' +
                            '</div>' +
                            '<div class="airline_ticket_time">' +
                                '<div>' + airlineTicketArrivalTime + '</div>' +
                                '<div>' + airlineTicketArrivalIata + '</div>' +
                            '</div>' +
                        '</div>' +
                        '<div class="selected_airline_ticket4">' +
                            '<div class="airline_ticket_detail_schedule">' +
                                '상세일정 보기' +
                                '<div></div>' +
                            '</div>' +
                        '</div>' +
                        '<div class="selected_airline_ticket5">' +
                            '<a href="#">' +
                                '<div class="airline_ticket_select_btn">' +
                                    '변경' +
                                '</div>' +
                                '<div>' +
                                    '<span>잔여</span>' +
                                    '<span>' + airlineTicketEmptySeats + '</span>' +
                                    '<span>석</span>' +
                                '</div>' +
                            '</a>' +
                        '</div>' +
    
                    '</div>' +
                '</div>' 
    
            );


        }

    })
    

    
    /*
    $(".airline_ticket").find(".airline_ticket_inner").find(".airline_ticket4").click(function() {
        // console.log("click");

        let airlineTicket1 = $(this).parent().find(".airline_ticket1");
        let airlineTicket2 = $(this).parent().find(".airline_ticket2");
        let airlineTicket4 = $(this).parent().find(".airline_ticket4");

        let airlineTicketAirlineLogo = airlineTicket1.find(".airline_ticket_airline").children().eq(0).find("img").attr("src");
        let airlineTicketAirlineName = airlineTicket1.find(".airline_ticket_airline").children().eq(1).text();
        let airlineTicketFlightNumber = airlineTicket1.find(".airline_ticket_flight_number").children().eq(0).text();
        let airlineTicketFlightNumber2 = airlineTicket1.find(".airline_ticket_flight_number").children().eq(1).text();
        let airlineTicketCodeshare = airlineTicket1.find(".airline_ticket_codeshare").children().eq(0).text();
        let airlineTicketCodeshareHover = airlineTicket1.find(".airline_ticket_codeshare").children().eq(2).children().eq(1).text();

        let airlineTicketDepartureTime = airlineTicket2.children().eq(0).children().eq(0).text();
        let airlineTicketDepartureIata = airlineTicket2.children().eq(0).children().eq(1).text();
        let airlineTicketStop1 = airlineTicket2.children().eq(1).children().eq(0).text();
        let airlineTicketStop2 = airlineTicket2.children().eq(1).children().eq(2).text();
        let airlineTicketArrivalTime = airlineTicket2.children().eq(2).children().eq(0).text();
        let airlineTicketArrivalIata = airlineTicket2.children().eq(2).children().eq(1).text();

        let airlineTicketEmptySeats = airlineTicket4.children().eq(0).children().eq(1).children().eq(1).text();
        
        // selected_airline_ticket_container에 항공권 추가
        $(".selected_airline_ticket_container").append( 
           
            '<div class="selected_airline_ticket">'+
                '<div class="selected_airline_ticket_header">' +
                    '<div>가는 편</div>' +
                    '<div>2024.09.12 (목) </div>' +
                '</div>' +

                '<div class="selected_airline_ticket_inner">' +

                    '<div class="selected_airline_ticket1">' +
                        '<div class="airline_ticket_airline">' +
                            '<div>' +
                                '<img src="' + airlineTicketAirlineLogo + '" alt="">' +
                            '</div>' +
                            '<div>' + airlineTicketAirlineName + '</div>' +
                        '</div>' +
                    '</div>' +
                    '<div class="selected_airline_ticket2">' +
                        '<div class="airline_ticket_flight_number">' +
                            '<span>' + airlineTicketFlightNumber + '</span>' +
                            '<span>' + airlineTicketFlightNumber2 +'</span>' +
                        '</div>' +
                        '<div class="airline_ticket_codeshare">' +
                            '<span>' + airlineTicketCodeshare + '</span>' +
                            '<span class="airline_ticket_codeshare_mark"></span>' +
                            '<div class="airline_ticket_codeshare_hover">' +
                                '<span>실제탑승&#58;</span>' +
                                '<span>' + airlineTicketCodeshareHover + '</span>' + 
                            '</div>' +
                        '</div>' +
                    '</div>' +
                    '<div class="selected_airline_ticket3">' +
                        '<div class="airline_ticket_time">' +
                            '<div>' + airlineTicketDepartureTime + '</div>' +
                            '<div>' + airlineTicketDepartureIata + '</div>' +
                        '</div>' +
                        '<div class="airline_ticket_stop">' +
                            '<div>' + airlineTicketStop1 + '</div>' +
                            '<div class="airline_ticket_stop_line"></div>' +
                            '<div>' + airlineTicketStop2 + '</div>' +
                        '</div>' +
                        '<div class="airline_ticket_time">' +
                            '<div>' + airlineTicketArrivalTime + '</div>' +
                            '<div>' + airlineTicketArrivalIata + '</div>' +
                        '</div>' +
                    '</div>' +
                    '<div class="selected_airline_ticket4">' +
                        '<div class="airline_ticket_detail_schedule">' +
                            '상세일정 보기' +
                            '<div></div>' +
                        '</div>' +
                    '</div>' +
                    '<div class="selected_airline_ticket5">' +
                        '<a href="#">' +
                            '<div class="airline_ticket_select_btn">' +
                                '변경' +
                            '</div>' +
                            '<div>' +
                                '<span>잔여</span>' +
                                '<span>' + airlineTicketEmptySeats + '</span>' +
                                '<span>석</span>' +
                            '</div>' +
                        '</a>' +
                    '</div>' +

                '</div>' +
            '</div>' 

        );


    });
    */





    // 가는 편, 오는 편 텍스트 설정
    $(".selected_airline_ticket_container").children().eq(0).find(".selected_airline_ticket_header").children().eq(0).text("가는 편");
    $(".selected_airline_ticket_container").children().eq(1).find(".selected_airline_ticket_header").children().eq(0).text("오는 편");


    // selected_airline_ticket_container에 항공권이 2개 들어가면 선택결과창 출력
    if ( $(".selected_airline_ticket_container").children().length == 2 ) {
        $(".airline_ticket_container").css("display", "none");
        $(".airline_search_page_body_right_middle").css("display", "none");
        $(".airline_search_page_body_right_middle2").css("display", "none");
        $(".airline_ticket_select_result").addClass("airline_ticket_select_active");
    } else {
        // $(".airline_ticket_container").css("display", "block");
        // $(".airline_search_page_body_right_middle").css("display", "flex");
        // $(".airline_search_page_body_right_middle2").css("display", "flex");
        // $(".airline_ticket_select_result").removeClass("airline_ticket_select_active");
    }








    // 왕복) 선택 항공권 2개일시 항공권 목록 안보이게
    













    // 상세일정 보기 팝업
    $(".airline_ticket_detail_schedule").click(function() {
        console.log("click");
        $(".airline_ticket_detail_schedule_popup").addClass("airline_ticket_detail_schedule_popup_active");

    });

    // 상세일정 끄기
    $(".airline_ticket_detail_schedule_popup1 > div:nth-child(2)").click(function() {
        $(".airline_ticket_detail_schedule_popup").removeClass("airline_ticket_detail_schedule_popup_active");
    });










});