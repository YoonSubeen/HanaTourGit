

// document.getElementById("menu_left").addEventListener("click", function() {
//     // alert("menu_left 클릭");


//     let smContainer = document.getElementById("sub_menu_container");

//     if(smContainer.classList.contains("smc_hide")) {
//         smContainer.classList.remove("smc_hide");
//     } else {
//         smContainer.classList.add("smc_hide");
//     }

//     let menuLeft = document.getElementById("menu_left");
//     if(menuLeft.classList.contains("ml_border_change")) {
//         menuLeft.classList.remove("ml_border_change");
//     } else {
//         menuLeft.classList.add("ml_border_change");
//     }
   
// })





$(function() {


    $("#menu_left").click(function() {
        let smContainer = $("#sub_menu_container");

        if( smContainer.hasClass("smc_hide") ) {
            smContainer.removeClass("smc_hide");
        } else {
            smContainer.addClass("smc_hide");
        }
        

        let menuLeft = $("#menu_left");
        if( menuLef.hasClass("ml_border_change") ) {
            menuLeft.removeClass("ml_border_change");
        } else {
            menuLeft.addClass("ml_border_change");
        }

    })




    if( !( $(".header1_logout").hasClass("header1_hidden") ) ) {
        $(".mypage_item3_hover2").removeClass("mypage_item3_hover_active");
        $(".mypage_item3_hover1").addClass("mypage_item3_hover_active");
    } else {
        $(".mypage_item3_hover1").removeClass("mypage_item3_hover_active");
        $(".mypage_item3_hover2").addClass("mypage_item3_hover_active");
    }


    $(".mypage_item3").on("mouseenter", function() {
        $(".mypage_item3_hover_active").css("display", "block");
    });

    // $(".mypage_item3").on("mouseleave", function() {
    //     $(".mypage_item3_hover_active").css("display", "none");
    // });

    $(".mypage_item3_hover_active ").on("mouseenter", function() {
        $(".mypage_item3_hover_active").css("display", "block");
    });

    $(".mypage_item3_hover_active ").on("mouseleave", function() {
        $(".mypage_item3_hover_active").css("display", "none");
    });

    


})











