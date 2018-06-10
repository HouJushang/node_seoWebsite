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
                        <li class="on">
                            <a href="/job">企业招聘</a>
                        </li>
                        <li>
                            <a href="/category/26">人才政策</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="list_text">
                <div class="list_cont">
                    <div class="list_title"><i>企业招聘</i></div>
                    <div class="list_con">
                        {#<div class="information_search clr">#}
                            {#<div class="fl clr sort">#}
                                {#<div class="list multiple">综合排序</div>#}
                                {#<div class="list time">按时间排序</div>#}
                            {#</div>#}
                            {#<div class="fr search_cont clr">#}
                                {#<div class="clr fl search_input">#}
                                    {#<select class="fl">#}
                                        {#<option>全文</option>#}
                                        {#<option>公司</option>#}
                                        {#<option>岗位</option>#}
                                    {#</select>#}
                                    {#<input type="text" placeholder="请输入关键词">#}
                                {#</div>#}
                                {#<div class="fl search">搜索</div>#}
                            {#</div>#}
                        {#</div>#}
                        <div class="news_list">
                            <div class="list_table">
                                <dl class="clr">
                                    {% for key,val in list.rows %}
                                    <dd>
                                        <a href="/job/{{ val.id }}">
                                            <div class="title">{{ val.title }}</div>
                                            <div class="dl_list clr">
                                                <div class="dd">工作地点：{{ val.address }}</div>
                                                <div class="dd">性质：{{ val.xingzhi }}</div>
                                                <div class="dd">学历要求：{{ val.xueli }}</div>
                                                <div class="dd">年龄要求：{{ val.nianling }}</div>
                                                <div class="dd">薪资：{{ val.xinchou }}</div>
                                            </div>
                                        </a>
                                    </dd>
                                    {% endfor %}
                                </dl>
                            </div>
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





