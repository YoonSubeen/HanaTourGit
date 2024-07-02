

$(function() {


    // 항공 검색창 탭 선택
    $(".airline_search_top > div:not(:nth-child(4)) > a").click(function(e) {
        
        e.preventDefault();

        $(this).parent().parent().find(".airline_search_active").removeClass("airline_search_active");
        $(this).parent().addClass("airline_search_active");
        
        
        $(".airline_search_bottom").find(".airline_search_active").removeClass("airline_search_active");

        if( $(this).parent().hasClass("round_trip") ) {
            $(".airline_search_bottom").find(".round_trip").addClass("airline_search_active");
        } else if ( $(this).parent().hasClass("one_way") ) {
            $(".airline_search_bottom").find(".one_way").addClass("airline_search_active");
        } else {
            $(".airline_search_bottom").find(".multi_city").addClass("airline_search_active");
        }

    });

    // 출발지, 도착지 클릭시 공항 검색 팝업창 display:block;
    $(".input_airport").click(function() {
        $(this).find(".select_departure_airport").addClass("select_departure_airport_active");
    });


    // 공항 검색 팝업창 끄기
    $(".select_departure_airport1 > div:nth-child(2)").click(function(e) {
        e.stopPropagation();
        let select_departure_airport = $(".select_departure_airport");
        select_departure_airport.removeClass("select_departure_airport_active");
    });


    // 검색창 최근 출발지, 도착지 개별삭제
    $(".select_departure_airport2 > span > span:nth-child(2) > img").click(function() {
        $(this).parent().parent().remove();
    });


     // 검색창 최근 출발지, 도착지 전체삭제
    $(".select_departure_airport2 > span:last-child > span").click(function() {
        $(this).parent().siblings().remove();
    });




    // 출발지 도착치 공항 탭
    $(".airport_list_tab > div").click(function() {
        let index = $(this).index();
        console.log(index);
        
        $(this).parent().find(".airport_list_tab_active").removeClass("airport_list_tab_active");
        $(this).addClass("airport_list_tab_active");
        
        
        let airport_list_tab_list = $(".airport_list_tab_list_container > div");

        airport_list_tab_list.removeClass("airport_list_tab_active");
        airport_list_tab_list.eq(index).addClass("airport_list_tab_active");
    });
    
    








});