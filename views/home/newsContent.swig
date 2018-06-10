{% extends 'layout.swig'  %}
{% block content %}
            <div class="list_wrap">
                <div class="w1200 clr">
                    {#<div class="crumbs">#}
                        {#当前位置：<a href="index.html">首页</a> &gt; 新闻详情#}
                    {#</div>#}
                    <div class="news_cont">
                        <div class="news_top">
                            <h2 class="title">{{ content.title }}</h2>
                            <div class="release">发布日期：{{ content.createdAt | date('Y-m-d') }} &nbsp; 作者：{{ content.author }} &nbsp; 来源：{{ content.origin }}</div>
                        </div>
                        <div class="content">
                            {% autoescape %}{{ content.content }}{% endautoescape %}
                        </div>

                    </div>
                </div>
            </div>
{% endblock %}





