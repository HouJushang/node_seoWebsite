{% extends 'layout.swig'  %}
{% block content %}
            <div class="list_wrap">
                <div class="w1200 clr">
                    {#<div class="crumbs">#}
                        {#当前位置：<a href="index.html">首页</a> &gt; <a href="recommend.html">电商优选</a> &gt; 电商企业#}
                    {#</div>#}
                    <div class="details_brief recommend_brief clr">
                        <div class="details_brief_left clr">
                            <div class="img dsqy_img fl">
                                <img src="{{ detail.logo }}" width="100%" height="100%">
                            </div>
                            <div class="text">
                                <h2>{{ detail.companyName }}</h2>
                                <p>联系人：{{ detail.lxrname }}</p>
                                <p>电　话：{{ detail.lxrphone }}</p>
                                <p>邮   箱：{{ detail.lxremail }}</p>
                                <p>手　机：{{ detail.user.phone }}</p>
                                <p>地　址：{{ detail.txdz }}</p>
                                <a href="{{ detail.gswz }}" target="_blank" class="more">进入官网</a>
                            </div>
                        </div>
                    </div>
                    <div class="details_cont">
                        <div class="details_tab clr">
                            <div class="list on">公司简介</div>
                        </div>
                        <div class="content_list">
                            <div class="content">
                                {% autoescape %}{{ detail.qyjj }}{% endautoescape %}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
{% endblock %}






