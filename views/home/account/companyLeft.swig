{% macro companyLeft(active) %}
<div class="nav_list">
    <div class="list {% if active > 0 && active < 4 %} on{% endif %}">
        <div class="tit">基本资料</div>
        <dl>
            <dd {% if active == 1 %} class="on" {% endif %}>
                <a href="/account/info">账号信息</a>
            </dd>
            <dd {% if active == 2 %} class="on"{% endif %}>
                <a href="/account/modifyC">修改密码</a>
            </dd>
            <dd {% if active == 3 %} class="on"{% endif %}>
                <a href="/account/mation">企业信息</a>
            </dd>
        </dl>
    </div>
    <div class="list {% if active > 3 && active < 7 %} on{% endif %}">
        <div class="tit">商品展示</div>
        <dl>
            <dd {% if active == 4 %} class="on" {% endif %}>
                <a href="/account/addProduct">发布商品信息</a>
            </dd>
            <dd {% if active == 5 %} class="on" {% endif %}>
                <a href="/account/productShenhe">审核中的商品</a>
            </dd>
            <dd {% if active == 6 %} class="on" {% endif %}>
                <a href="/account/productZhanshi">展示中的商品</a>
            </dd>
        </dl>
    </div>
    <div class="list {% if active > 6 && active < 10 %} on{% endif %}">
        <div class="tit">电商服务</div>
        <dl>
            <dd {% if active == 7 %} class="on" {% endif %}>
                <a href="/account/addService">发布电商服务</a>
            </dd>
            <dd {% if active == 8 %} class="on" {% endif %}>
                <a href="/account/serviceShenhe">审核中的服务</a>
            </dd>
            <dd {% if active == 9 %} class="on" {% endif %}>
                <a href="/account/serviceZhanshi">展示中的服务</a>
            </dd>
        </dl>
    </div>
    <div class="list {% if active > 9 && active < 13 %} on{% endif %}">
        <div class="tit">招聘信息</div>
        <dl>
            <dd {% if active == 10 %} class="on" {% endif %}>
                <a href="/account/addJob">发布招聘信息</a>
            </dd>
            <dd {% if active == 11 %} class="on" {% endif %}>
                <a href="/account/jobShenhe">审核中的招聘</a>
            </dd>
            <dd {% if active == 12 %} class="on" {% endif %}>
                <a href="/account/jobZhanshi">展示中的招聘</a>
            </dd>
        </dl>
    </div>
</div>
{% endmacro %}