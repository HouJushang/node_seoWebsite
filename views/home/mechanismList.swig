{% extends 'layout.swig'  %}
{% block content %}
<div class="list_wrap">
    <div class="w1200 clr">
        <div class="fl list_nav">
            <div class="list_top">
                <img src="/homeStatic/images/kcpx.png" width="100%" height="100%">
                <div class="pos">
                    <h2>培训课程</h2>
                    <p>电商运营知识点，一网打尽</p>
                </div>
            </div>
            <div class="list_end">
                {% include './leftMenu2.swig' %}
            </div>
        </div>
        <div class="list_text">
            <div class="list_cont">
                <div class="list_title"><i>电商培训机构</i></div>
                <div class="list_con">
                    <div class="service_list">
                        <ul class="recommend_ul">
                            {% for key, val in list %}
                                <li class="clr">
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