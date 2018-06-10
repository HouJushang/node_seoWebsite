{% extends 'layout.swig'  %}
{% block content %}
            <div class="list_wrap">
                <div class="w1200 clr">
                    <div class="fl list_nav">
                        <div class="list_top">
                            <img src="/homeStatic/images/dsfw.png" width="100%" height="100%">
                            <div class="pos">
                                <h2>电商服务</h2>
                                <p>您的满意，是我们的追求</p> 
                            </div>
                        </div>
                        <div class="list_end">
                            <ul>
                                <li {% if category == '金融服务' %} class="on" {% endif %}>
                                    <a href="/service/金融服务">金融服务</a>
                                </li>
                                <li {% if category == '电商代运营' %} class="on" {% endif %}>
                                    <a href="/service/电商代运营">电商代运营</a>
                                </li>
                                <li {% if category == '营销推广' %} class="on" {% endif %}>
                                    <a href="/service/营销推广">营销推广</a>
                                </li>
                                <li {% if category == '设计摄影' %} class="on" {% endif %}>
                                    <a href="/service/设计摄影">设计摄影</a>
                                </li>
                                <li {% if category == '物流服务' %} class="on" {% endif %}>
                                    <a href="/service/物流服务">物流服务</a>
                                </li>
                                <li {% if category == 'IT互联网服务' %} class="on" {% endif %}>
                                    <a href="/service/IT互联网服务">IT/互联网服务</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="list_text">
                        <div class="list_cont">
                            <div class="list_title"><i>{{ category }}</i></div>
                            <div class="list_con">
                                <div class="service_list">
                                    <ul>
                                        {% for key, val in list.rows %}
                                            <li class="clr">
                                                <div class="fl img">
                                                    <img src="{{ val.image }}" width="100%" height="100%">
                                                </div>
                                                <div class="text">
                                                    <a href="/serviceContent/{{ val.id }}" class="title">{{ val.title }}</a>
                                                    <div class="brief">
                                                        {{ val.description }}
                                                    </div>
                                                    <a href="/serviceContent/{{ val.id }}" class="more">查看详情</a>
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





