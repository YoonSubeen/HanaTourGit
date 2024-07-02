

document.getElementById("menu_left").addEventListener("click", function() {
    // alert("menu_left 클릭");


    let smContainer = document.getElementById("sub_menu_container");

    if(smContainer.classList.contains("smc_hide")) {
        smContainer.classList.remove("smc_hide");
    } else {
        smContainer.classList.add("smc_hide");
    }

    let menuLeft = document.getElementById("menu_left");
    if(menuLeft.classList.contains("ml_border_change")) {
        menuLeft.classList.remove("ml_border_change");
    } else {
        menuLeft.classList.add("ml_border_change");
    }
   
})





