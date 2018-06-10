{% extends 'layout.swig'  %}
{% block content %}

            <div class="list_wrap">
                <div class="w1200 clr">
                    <div class="fl list_nav">
                        <div class="list_top">
                            <img src="/homeStatic/images/rcfw.png" width="100%" height="100%">
                            <div class="pos">
                                <h2>人才服务</h2>
                                <p>帮助您快速找到工作</p>
                            </div>
                        </div>
                        <div class="list_end">
                            <ul>
                                <li>
                                    <a href="/resume">人才信息</a>
                                </li>
                                <li>
                                    <a href="/job">企业招聘</a>
                                </li>
                                <li class="on">
                                    <a href="/category/26">人才政策</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="list_text">
                        <div class="list_cont">
                            <div class="list_title"><i>人才政策</i></div>
                            <div class="list_con">
                                <div class="news_list">
                                    <ul>
                                        {% for key,val in list %}
                                        <li>
                                            <a href="/content/26/{{ val.id }}" class="clr">
                                                <div class="text_picture">
                                                    <div class="title">{{ val.title }}</div>
                                                    <div class="time">{{ val['createdAt'] | date('Y-m-d') }}</div>
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






