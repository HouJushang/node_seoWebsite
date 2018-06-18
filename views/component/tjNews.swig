<div id="CategoryPage_Left1_CategoryPage_Recommend1_palclass">
    <div class="news_list_n l_bot box_shadow">
        <div class="block_title">
            <div class="name left_name">
                <a alt="推荐资讯" title="推荐资讯">推荐资讯</a></div>
        </div>
        <div class="news_list_n_box">
            <div>
                <ul id="categoryPageRecommend">
                    {% for item in tjNews %}
                    <li>
                        <a href="/newsd-{{ item.id }}.html" title="{{ item.title }}">
                            {{ item.title }}
                        </a>
                    </li>
                    {% endfor %}
                </ul>
            </div>
        </div>
    </div>

</div>