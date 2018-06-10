//$(function(){
//var clearTimer = null;
//var SleepTime = 6000;   //停留时长，单位毫秒
//$("#singleImageList").jCarouselLite({
//    btnNext: "#singleImage_btn_focus_next",
//    btnPrev: "#singleImage_btn_focus_prev",
//	visible: 1,
//	scroll:1,
//	speed: 400,//滚动速度，单位毫秒
//	auto:3000,
//	mouseOver:true
//});
//});


$(document).ready(function() {
    var clearTimer = null;
    var SleepTime = 6000;   //停留时长，单位毫秒
    if ($("#singleImageList ul li").length >= 2) { //超过了2个才执行 这个js    工程案例
        $("#singleImageList").jCarouselLite({
        btnNext: "#singleImage_btn_focus_next",
        btnPrev: "#singleImage_btn_focus_prev",
            visible: 1,
            scroll: 1,
            speed: 400, //滚动速度，单位毫秒
            auto: 3000,
            mouseOver: true
        });
    }
});