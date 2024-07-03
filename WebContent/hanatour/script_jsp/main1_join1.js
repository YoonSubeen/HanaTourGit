$(function() {

	const pathname = "/" + window.location.pathname.split("/")[1] + "/";
	const origin = window.location.origin;

	const contextPath = origin + pathname;

    $(".main1_join1_inner1 > div:nth-child(1) > div:nth-child(1)").click(function() {
        window.history.back();
    })

    $(".main1_join1_inner1 > div:nth-child(2)").click(function() {
        window.location.href = contextPath + "/hanatour/jsp/main1_home/main1_1.jsp";
    })


    $(".main1_join1_inner5").click(function() {
        window.location.href = contextPath + "/hanatour/jsp/main1_home/main1_join2.jsp";
    });

})