<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta http-equiv="Expires" content="-1">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Pragma" content="no-cache">
    <meta charset="utf-8">
    <title>{% block title %}安徽省电子商务公共服务平台{% endblock %}</title>
    <meta name="keywords" content="安徽省电子商务公共服务平台">
    <meta name="description" content="安徽省电子商务公共服务平台">
    {% block css %}
        <link href="/homeStatic/css/video-js.min.css" rel="stylesheet"/>
        <link href="/homeStatic/css/style.css" rel="stylesheet"/>
    {% endblock %}
    {% block topScript %}
        <!--[if lte IE 9]>
        <script src="/homeStatic/scripts/html5shiv.min.js"></script>
        <![endif]-->
    {% endblock %}
    {% include './js.swig' %}
</head>
<body>

<section class="body">
    {% include './header.swig' %}
    {% block content %}{% endblock %}
    {% include './footer.swig' %}
</section>
{% include './user_login.swig' %}
{% include './sidebar.swig' %}
<script type="text/javascript">
    $(function(){

        var page = '';
        if(page == undefined){
            page = 0;
        }else{
            page = urlParam.page;
        };

        jQuery(".body").slide({mainCell:".wapper",titCell:".nav .nav_list",defaultIndex:page,trigger:"click",effect:"left",startFun:function( i,c ){$(".wapper .index_wrap").eq(i).addClass("on").siblings(".index_wrap").removeClass("on");$(".body").scrollTop(0)}});

        $(".index_news_left").each(function(){
            var l=$(this).find(".index_news_left_ul li").length;
            if(l>1){
                if(/(iphone|ipad|android|windows phone)/.test(navigator.userAgent.toLowerCase())){
                    TouchSlide({ slideCell:"#index_news_left_1",mainCell:".index_news_left_ul",effect:"left",autoPlay:true,titCell:".hd",autoPage:"<li></li>",interTime:5000});
                    touch("#index_news_left_2");
                    touch("#index_news_left_3");
                    touch("#index_news_left_4");
                    touch("#index_news_left_5");
                    touch("#index_news_left_6");
                }else{
                    jQuery(".index_news_left").slide({mainCell:".index_news_left_ul",autoPlay:true,titCell:".hd",autoPage:"<li></li>",startFun:function( i,c ){$(".index_news_left_ul li").eq(i).addClass("on").siblings("li").removeClass("on")}});
                };
            };
        });

        $(".tab_list .list").click(function(){
            var index = $(this).index();
            $(this).addClass("on").siblings(".list").removeClass("on");
            $(".news_cont .list").eq(index).show().siblings(".list").hide();
        });

        tabs(".section_1 .index_end_tab .tab .list",".section_1 .product_list .list");
        tabs(".section_2 .index_end_tab .tab .list",".section_2 .product_list .list");
        tabs(".section_3 .index_end_tab .tab .list",".section_3 .product_list .list");
        tabs(".section_5 .index_end_tab .tab .list",".section_5 .product_list .list");
    });
    function tabs(x,y){
        $(x).click(function(){
            var index = $(this).index();
            $(this).addClass("on").siblings(".list").removeClass("on");
            $(y).eq(index).show().siblings(".list").hide();
        }).eq(0).trigger('click');
    };

    function touch(x){
        TouchSlide({ slideCell:x,mainCell:".index_news_left_ul",effect:"left",autoPlay:true,titCell:".hd",autoPage:"<li></li>",interTime:5000});
    };
</script>
{% block bottomScript %}
{% endblock %}
</body>
</html>





