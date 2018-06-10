$(document).ready(function() {
    var num;
    $('.WeChat-main>li[id]').hover(function() {
        /*下拉框出现*/
        var Obj = $(this).attr('id');
        num = Obj.substring(3, Obj.length);
        //alert(num);
        $('#box-' + num).stop(true, true).slideDown(600);
        //$('#box-' + num).show();
    }, function() {
        /*下拉框消失*/
        //$('#box-' + num).hide();
        $('#box-' + num).slideUp(400);
    });
    $('.hidden-box').hover(function() {
        $(this).show();
    }, function() {
        $(this).slideUp(100);
    });
});