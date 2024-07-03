
$(function() {

    // 메인1_유형1 이미지 슬라이더 bx slider
    $('.bxslider').bxSlider({
        auto: true,
        autoControls: true,
        stopAutoOnClick: true,
        pager: true,
        slideWidth: 600
    });
    

    // 메인1_유형1 검색창 탭
    $(".main1_type1_search_tab > div").click(function() {

        let index = $(this).index();

        $(this).parent().find(".main1_type1_search_tab_active").removeClass("main1_type1_search_tab_active");
        $(this).addClass("main1_type1_search_tab_active");
    

        $(".main1_type1_search_setting").find(".main1_type1_search_tab_active").removeClass("main1_type1_search_tab_active");
        $(".main1_type1_search_setting").children().eq(index).addClass("main1_type1_search_tab_active");

    });




    // 메인1_유형1 항공탭 변경
    $(".main1_type1_search_airline_tab > div").click(function() {
        let index = $(this).index();
        console.log(index);
        $(this).parent().find(".main1_type1_search_airline_active").removeClass("main1_type1_search_airline_active");
        $(this).addClass("main1_type1_search_airline_active");


        $(".main1_type1_search_airline_search_setting").find(".main1_type1_search_airline_active").removeClass("main1_type1_search_airline_active");
        $(".main1_type1_search_airline_search_setting").children().eq(index).addClass("main1_type1_search_airline_active");


    });


    // 메인1_유형1 항공 왕복 날짜 border 색
    $(".main1_type1_round_trip2 > div").click(function(e) {
        $(this).parent().find("div").css("border", "none");
        $(this).css("border", "1px solid rgb(94, 43, 184)");
        e.stopPropagation();
    });

    $(document).click(function(e) {
        $(".main1_type1_round_trip2 > div").css("border", "none");
    });


    // 메인1_유형1 항공 왕복 직항 버튼 
    $(".direct_flight_btn").click(function() {
        if( $(this).hasClass("direct_flight_active") ) {
            $(this).removeClass("direct_flight_active");
        } else {
            $(this).addClass("direct_flight_active");
        }
    });



});