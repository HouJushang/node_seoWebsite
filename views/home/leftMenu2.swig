<ul>
    <li {% if category.id == 20 %} class="on" {% endif %}>
        <a href="/category/20">精品课程</a>
    </li>
    <li {% if category.id == 23 %} class="on" {% endif %}>
        <a href="/category/23">专家智库</a>
    </li>
    <li {% if category.id != 20 && category.id != 23 %} class="on" {% endif %}>
        <a href="/companyps">电商培训机构</a>
    </li>
</ul>