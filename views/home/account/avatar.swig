<div class="nav_top">
    {% if psersonInfo.avatar %}
        <img src="{{ psersonInfo.avatar }}" width="100%" height="100%" />
    {% else %}
        <img src="/homeStatic/images/zjzk_03.jpg" width="100%" height="100%" />
    {% endif %}
    <p>{{ psersonInfo.name }}</p>
</div>