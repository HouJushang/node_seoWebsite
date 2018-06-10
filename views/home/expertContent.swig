{% extends 'layout.swig'  %}
{% block content %}
    <div class="list_wrap">
        <div class="w1200 clr">
            {#<div class="crumbs">#}
                {#当前位置：<a href="/">首页</a> &gt; <a>培训课程</a> &gt; 专家智库#}
            {#</div>#}
            <div class="details_brief expert_brief clr">
                <div class="details_brief_left clr">
                    <div class="img zj_img fl">
                        <img src="{{ content.thumb }}" width="100%" height="100%">
                    </div>
                    <div class="text">
                        <h5>{{ content.title }} | <i>{{ content.company }}</i></h5>
                        <div class="con">
                            <div class="tit"></div>
                            <div class="brief">
                                {{ content.description }}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="details_cont">
                <div class="details_tab clr">
                    <div class="list on">专家风采</div>
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