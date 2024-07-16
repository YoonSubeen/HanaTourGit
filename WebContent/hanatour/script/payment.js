$(function() {
    // 가격 단위에 쉼표 찍어주기
    $(".comma").each(function() {
        let text = $(this).text();
        let formattedText = text.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        $(this).text(formattedText);
    });

// 결제 방법을 안넣으면 넘어가기 막기 
	$("#pay_button").click(function(e) {
		let radio = $("#kakao");
		let price = $("#price_parameter").attr("price").trim();
		let reservationIdx = $("#reservation_parameter").attr("reservationIdx");
		alert(price);
		alert(reservationIdx);
		
		
		if( !(radio).is(":checked") ) {
			e.preventDefault();
			alert("결제 방식을 선택해주세요");
		} else {
			location.href = "payment_sub.jsp?price=" +price+ "&reservation="+reservationIdx;
		}
	});
	
	
});