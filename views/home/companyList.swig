{% extends 'layout.swig'  %}
{% block content %}
            <div class="list_wrap">
                <div class="w1200 clr">
                    <div class="fl list_nav">
                        <div class="list_top">
                            <img src="/homeStatic/images/mytj.png" width="100%" height="100%">
                            <div class="pos">
                                <h2>名优推荐</h2>
                                <p>全省最好资源都在这里</p> 
                            </div>
                        </div>
                        <div class="list_end">
                            <ul>
                                <li class="on">
                                    <a href="/companyds">电商企业</a>
                                </li>
                                <li>
                                    <a href="/product">商品展示</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="list_text">
                        <div class="list_cont">
                            <div class="list_title"><i>电商企业111</i></div>
                            <div class="list_con">
                                <div class="service_list">
                                    <ul class="recommend_ul">
                                        {% for key, val in list %}
                                            <li class="clr dsqy_li">
                                                <div class="fl img">
                                                    <img src="{{ val.logo }}" width="100%" height="100%">
                                                </div>
                                                <div class="text">
                                                    <a href="/companyContent/{{ val.id }}" class="title">{{ val.companyName }}</a>
                                                    <div class="brief">
                                                        {{ val.description }}
                                                    </div>
                                                    <a href="/companyContent/{{ val.id }}" class="more">查看详情</a>
                                                </div>
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






