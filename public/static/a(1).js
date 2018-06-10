$(function() {
    var $con = $('#gg'), $box = $con.find('#ggBox'), $btns = $con.find('#ggBtns'), i = 0, autoChange = function() {
        i += 1;
        if (i == $('.ggBox>a').size()) { i = 0; }
        $btns.find('a:eq(' + i + ')').addClass('ggOn').siblings().removeClass('ggOn');
        var curr = $box.find('a:eq(' + i + ')'), prev = curr.siblings();
        prev.css('z-index', 9);
        curr.css('z-index', 10).animate({
            'opacity': 1
        }, 600, function() {
            prev.css({
                'z-index': 1, 'opacity': 0
            });
        });
    }, loop = setInterval(autoChange, 4000);
    $con.hover(function() {
        clearInterval(loop);
    }, function() {
        loop = setInterval(autoChange, 4000);
    });
    $btns.find('a').click(function() {
        i = $(this).index() - 1;
        autoChange();
    });
});

//////下面为导航和百叶窗 当窗口缩小时 它的宽度最少设置，而不至于变形////////////
var pageminwidth=1000;  //页面最少宽度，这里宽度是网站整理多宽而设置多大小值
window.onresize = function () {
    setbannerwidth();
}
setbannerwidth();
function setbannerwidth()
{
    var winWidth=0;     //窗口大小
	if (window.innerWidth)
        winWidth = window.innerWidth;
    else if ((document.body) && (document.body.clientWidth))
        winWidth = document.body.clientWidth;
    if(winWidth>0 && winWidth<pageminwidth){
        //$('.menu').css("width",pageminwidth+"px");        $('.gg').css("width",pageminwidth+"px");
    }else{
        //$('.menu').css("width","100%");        $('.gg').css("width","100%");
    }
}
////////////////////////////////////end////////////////////////////