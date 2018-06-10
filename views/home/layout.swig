<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta http-equiv="Expires" content="-1">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Pragma" content="no-cache">
    <meta charset="utf-8">
    <title>安徽省电子商务公共服务平台</title>
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
    {% include './header2.swig' %}
    {% block content %}{% endblock %}
    {% include './footer.swig' %}
</section>
{% include './user_login.swig' %}
{% include './sidebar.swig' %}
{% include './js.swig' %}
{% block bottomScript %}
{% endblock %}
<script type="text/javascript">
    $(function(){
        $(".index_news_left").each(function(){
            var l=$(this).find(".index_news_left_ul li").length;
            if(l>1){
                if(/(iphone|ipad|android|windows phone)/.test(navigator.userAgent.toLowerCase())){
                    TouchSlide({ slideCell:"#index_news_left",mainCell:".index_news_left_ul",effect:"left",autoPlay:true,titCell:".hd",autoPage:"<li></li>",interTime:5000});
                }else{
                    jQuery(".index_news_left").slide({mainCell:".index_news_left_ul",autoPlay:true,titCell:".hd",autoPage:"<li></li>",startFun:function( i,c ){$(".index_news_left_ul li").eq(i).addClass("on").siblings("li").removeClass("on")}});
                };
            };
        });

        $(".index_end_tab .tab .list").click(function(){
            var index = $(this).index();
            $(this).addClass("on").siblings(".list").removeClass("on");
            $(".product_list .list").eq(index).show().siblings(".list").hide();
        }).eq(0).trigger('click');

    });
</script>
</body>
</html>





