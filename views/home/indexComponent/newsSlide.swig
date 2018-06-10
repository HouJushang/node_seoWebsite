<div class="index_news_right">
    <div class="conts">
        <div class="news_tab clr">
            <div class="tab_list fl clr">
                <div class="list on">产业资讯</div>
                <div class="list">最新政策</div>
                <div class="list">通知公告</div>
                <div class="list">研究报告</div>
                {#<div class="list">活动专题</div>#}
            </div>
            <div class="more">
                <a href="/category/1">查看更多</a>
            </div>
        </div>
        <div class="news_cont">
            <div class="list">
                <div class="hot">
                    {% if category1Top %}
                        <a href="/content/1/{{ category1Top.id }}">
                            <h2 class="title">{{ category1Top['title'] }}</h2>
                            <div class="brief">
                                {{ category1Top['description'] }}
                            </div>
                        </a>
                    {% endif %}
                </div>
                <div class="hot_list">
                    <ul>
                        {% if category1.length > 0 %}
                            {% for item in category1 %}
                                <li class="clr">
                                    <a href="/content/1/{{ item.id }}">
                                        <div class="title">● {{ item['title'] }}</div>
                                        <div class="time">{{ item['createdAt'] | date('Y-m-d') }}</div>
                                    </a>
                                </li>
                            {% endfor %}
                        {% endif %}
                    </ul>
                </div>
            </div>

            <div class="list" style="display: none;">
                <div class="hot">
                    {% if category2Top %}
                        <a href="/content/2/{{ category2Top.id }}">
                            <h2 class="title">{{ category2Top['title'] }}</h2>
                            <div class="brief">
                                {{ category2Top['description'] }}
                            </div>
                        </a>
                    {% endif %}
                </div>
                <div class="hot_list">
                    <ul>
                        {% if category2.length > 0 %}
                            {% for item in category2 %}
                                <li class="clr">
                                    <a href="/content/2/{{ item.id }}">
                                        <div class="title">● {{ item['title'] }}</div>
                                        <div class="time">{{ item['createdAt'] | date('Y-m-d') }}</div>
                                    </a>
                                </li>
                            {% endfor %}
                        {% endif %}
                    </ul>
                </div>
            </div>

            <div class="list" style="display: none;">
                <div class="hot">
                    {% if category3Top %}
                        <a href="/content/2/{{ category3Top.id }}">
                            <h2 class="title">{{ category3Top['title'] }}</h2>
                            <div class="brief">
                                {{ category3Top['description'] }}
                            </div>
                        </a>
                    {% endif %}
                </div>
                <div class="hot_list">
                    <ul>
                        {% if category3.length > 0 %}
                            {% for item in category3 %}
                                <li class="clr">
                                    <a href="/content/2/{{ item.id }}">
                                        <div class="title">● {{ item['title'] }}</div>
                                        <div class="time">{{ item['createdAt'] | date('Y-m-d') }}</div>
                                    </a>
                                </li>
                            {% endfor %}
                        {% endif %}
                    </ul>
                </div>
            </div>

        <div class="list" style="display: none;">
            <div class="hot">
                {% if category4Top %}
                    <a href="/content/2/{{ category4Top.id }}">
                        <h2 class="title">{{ category4Top['title'] }}</h2>
                        <div class="brief">
                            {{ category4Top['description'] }}
                        </div>
                    </a>
                {% endif %}
            </div>
            <div class="hot_list">
                <ul>
                    {% if category4.length > 0 %}
                        {% for item in category4 %}
                            <li class="clr">
                                <a href="/content/2/{{ item.id }}">
                                    <div class="title">● {{ item['title'] }}</div>
                                    <div class="time">{{ item['createdAt'] | date('Y-m-d') }}</div>
                                </a>
                            </li>
                        {% endfor %}
                    {% endif %}
                </ul>
            </div>
        </div>
        {#<div class="list" style="display: none;">#}
            {#<div class="hot">#}
                {#{% if category7Top %}#}
                    {#<a href="news_details_index.html">#}
                        {#<h2 class="title">{{ category7Top['title'] }}</h2>#}
                        {#<div class="brief">#}
                            {#{{ category7Top['description'] }}#}
                        {#</div>#}
                    {#</a>#}
                {#{% endif %}#}
            {#</div>#}
            {#<div class="hot_list">#}
                {#<ul>#}
                    {#{% if category7.length > 0 %}#}
                        {#{% for item in category7 %}#}
                            {#<li class="clr">#}
                                {#<a href="news_details_index_1.html">#}
                                    {#<div class="title">● {{ item['title'] }}</div>#}
                                    {#<div class="time">{{ item['createdAt'] | date('Y-m-d') }}</div>#}
                                {#</a>#}
                            {#</li>#}
                        {#{% endfor %}#}
                    {#{% endif %}#}
                {#</ul>#}
            {#</div>#}
        </div>
    </div>
</div>