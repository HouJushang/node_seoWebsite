{% extends 'layout.swig'  %}
{% block content %}
<div class="list_wrap">
    <div class="w1200 clr">
        {#<div class="crumbs">#}
            {#当前位置：<a href="index.html">首页</a> &gt; <a href="establish.html">示范创建</a> &gt; 电商产业园区#}
        {#</div>#}
        <div class="details_brief clr">
            <div class="details_brief_left clr">
                <div class="img fl">
                    <img src="{{ content.thumb }}" width="100%" height="100%">
                </div>
                <div class="text">
                    <h2>{{ content.title }}</h2>
                    <p>面积： {{ content.mianji }}</p>
                    <p>地址： {{ content.address }}</p>
                    <p>配套： {{ content.peitao }}</p>
                    <p>联系人：{{ content.concatPeople }}</p>
                    <p>联系电话：{{ content.phone }}</p>
                </div>
            </div>
        </div>
        <div class="details_cont">
            <div class="details_tab clr">
                <div class="list on">园区服务</div>
                <div class="list">园区优势</div>
                <div class="list">入园条件</div>
            </div>
            <div class="content_list">
                <div class="content">
                    {{ content.fuwu }}
                </div>
                <div class="content">
                    {{ content.youshi }}
                </div>
                <div class="content">
                    {{ content.tiaojian }}
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