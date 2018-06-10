{% extends 'layout.swig'  %}
{% block content %}
            <div class="list_wrap">
                <div class="w1200 clr">
                    <div class="fl list_nav">
                        <div class="list_top">
                            <img src="/homeStatic/images/news.png" width="100%" height="100%">
                            <div class="pos">
                                <h2>资讯中心</h2>
                                <p>快速掌握资讯动态</p>
                            </div>
                        </div>
                        <div class="list_end">
                            <ul>
                                <li  {% if category.id == 1 %} class="on" {% endif %}>
                                    <a href="/category/1">产业资讯</a>
                                </li>
                                <li {% if category.id == 2 %} class="on" {% endif %} >
                                    <a href="/category/2">最新政策</a>
                                </li>
                                <li {% if category.id == 3 %} class="on" {% endif %}>
                                    <a href="/category/3">通知公告</a>
                                </li>
                                <li {% if category.id == 4 %} class="on" {% endif %}>
                                    <a href="/category/4">研究报告</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="list_text">
                        <div class="list_cont">
                            <div class="list_title"><i>{{ category.name }}</i></div>
                            <div class="list_con">
                                <div class="news_list">
                                    <ul>
                                        {% for key, val in list %}
                                            <li>
                                                <a href="{{ '/content/' + category.id + '/' + val.id }}" class="clr">
                                                    <div class="text_picture">
                                                        <div class="title">{{ val.title }}</div>
                                                        <div class="time">{{ val.createdAt | date('Y-m-d') }}</div>
                                                        <div class="brief">
                                                            {{ val.description }}
                                                        </div>
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
                                        {#<a href="#">4</a> #}
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




