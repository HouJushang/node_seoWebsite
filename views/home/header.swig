<header class="header">
    <div class="w1200 clr">
        <a href="/" class="logo clr">
            <img src="/homeStatic/images/logo.png" width="auto" height="100%" alt="logo" class="fl">
            <div class="text">
                <h2>安徽省电子商务公共服务平台</h2>
                <p>ANHUI PROVINCE-COMMERCE PUBLIC SERVICE CENTER</p>
            </div>
        </a>
        <div class="menu">
            <i></i>
            <i></i>
            <i></i>
        </div>
        <div class="nav clr">
            <div class="nav_list">
                <p class="nav_a">首页</p>
            </div>
            <div class="nav_list">
                <p class="nav_a">示范创建</p>
                <div class="nav_list_con">
                    <a href="/category/19">电商公共服务中心</a>
                    <a href="/category/17">电商产业园区</a>
                    <a href="/category/18">电商示范企业</a>
                </div>
            </div>
            <div class="nav_list">
                <p class="nav_a">电商服务</p>
                <div class="nav_list_con">
                    <a href="/service/金融服务">金融服务</a>
                    <a href="/service/电商代运营">电商代运营</a>
                    <a href="/service/营销推广">营销推广</a>
                    <a href="/service/设计摄影">设计摄影</a>
                    <a href="/service/物流服务">物流服务</a>
                    <a href="/service/IT互联网服务">IT互联网服务</a>
                </div>
            </div>
            <div class="nav_list">
                <p class="nav_a">电商优选</p>
                <div class="nav_list_con">
                    <a href="/companyds">电商企业</a>
                    <a href="/product">商品展示</a>
                </div>
            </div>
            <div class="nav_list">
                <p class="nav_a">人才服务</p>
                <div class="nav_list_con">
                    <a href="/resume">人才信息</a>
                    <a href="/job">企业招聘</a>
                    <a href="/category/26">人才政策</a>
                </div>
            </div>
            <div class="nav_list">
                <p class="nav_a">课程培训</p>
                <div class="nav_list_con">
                    <a href="/category/20">精品课程</a>
                    <a href="/companyps">电商培训机构</a>
                    <a href="/category/23">专家智库</a>
                </div>
            </div>
        </div>
        {#<div class="show_search">#}
            {#<div class="cont">#}
                {#<input type="text" placeholder="请输入搜索内容" />#}
                {#<i></i>#}
            {#</div>#}
        {#</div>#}
        <div class="search clr">
            {#<a href="javascript:void(0)" class="url"></a>#}
            {% if homeLogin %}
                <a href="/account/info">{{ homeLogin.phone }}</a> <a href="/register/loginOut" style="margin-left: 10px;">退出</a>
            {% else %}
                <a href="javascript:void(0)" class="login">登录</a><em>|</em><a href="javascript:void(0)" class="register">注册</a>
            {% endif %}
        </div>
    </div>
</header>