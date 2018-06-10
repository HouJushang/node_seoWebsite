{% extends 'layout.swig'  %}
{% block content %}
<div class="list_wrap">
    <div class="w1200 clr">
        {#<div class="crumbs">#}
            {#当前位置：<a href="index.html">首页</a> &gt; <a href="recommend.html">示范创建</a> &gt; 电商示范企业#}
        {#</div>#}
        <div class="details_brief recommend_brief clr">
            <div class="details_brief_left clr">
                <div class="img dsqy_img fl">
                    <img src="{{ content.thumb }}" width="100%" height="100%">
                </div>
                <div class="text">
                    <h2>{{ content.title }}</h2>
                    <p>联系人：{{ content.concatPeople }}</p>
                    <p>电　话：{{ content.phone }}</p>
                    <p>邮   箱：{{ content.email }}</p>
                    <p>手　机：{{ content.mobile }}</p>
                    <p>地　址：{{ content.address }}</p>
                    <a href="{{ content.website }}" target="_blank" class="more">进入官网</a>
                </div>
            </div>
        </div>
        <div class="details_cont">
            <div class="details_tab clr">
                <div class="list on">公司简介</div>
            </div>
            <div class="content_list">
                <div class="content">
                    {% autoescape %}{{ content.content }}{% endautoescape %}
                </div>
            </div>
        </div>
    </div>
</div>
{% endblock %}
{% block bottomScript %}
    <script type="text/javascript">
        $(function(){
            $(".details_tab .list").click(function(){
                var index = $(this).index();
                $(this).addClass("on").siblings(".list").removeClass("on");
                $(".content_list .content").eq(index).show().siblings(".content").hide();
            }).eq(0).trigger('click');
        });
    </script>
{% endblock %}