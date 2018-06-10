{% extends 'layout.swig'  %}
{% block content %}
<div class="list_wrap">
    <div class="w1200 clr">
        <div class="fl list_nav">
            <div class="list_top">
                <img src="/homeStatic/images/sfcjt.png" width="100%" height="100%">
                <div class="pos">
                    <h2>示范创建</h2>
                    <p>一站式资源查询</p>
                </div>
            </div>
            <div class="list_end">
                {% include './leftMenu.swig' %}
            </div>
        </div>
        <div class="list_text">
            <div class="list_cont">
                <div class="list_title"><i>电商产业园区</i></div>
                <div class="list_con">
                    <div class="news_list">
                        <ul class="park_ul clr">
                            {% for key, val in list %}
                                <li>
                                    <a href="{{ '/content/' + category.id + '/' + val.id }}">
                                        <div class="img">
                                            <img src="{{ val.thumb }}" width="100%" height="100%">
                                        </div>
                                        <div class="con">
                                            <h2>{{ val.title }}</h2>
                                            <div class="p1">面积：{{ val.mianji }}</div>
                                            <div class="p2">地址：{{ val.address }}</div>
                                        </div>
                                    </a>
                                </li>
                            {% endfor %}
                        </ul>
                    </div>
                    {#<div class="pages">#}
                        {#<a href="#" class="a_prve">上一页</a>#}
                        {#<span class="num">#}
                                        {#<a href="#" class="a_cur">1</a>#}
                                        {#<a href="#">2</a>#}
                                        {#<a href="#">3</a>#}
                                        {#<a href="#">4</a>#}
                                        {#...#}
                                        {#<a href="#">15</a>#}
                                        {#<a href="#">16</a>#}
                                    {#</span>#}
                        {#<a href="#" class="a_next">下一页</a>#}
                    {#</div>#}
                </div>
            </div>
        </div>
    </div>
</div>
{% endblock %}