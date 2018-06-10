<div class="nav_top">
    {% if psersonInfo.logo %}
        <img src="{{ psersonInfo.logo }}" width="100%" height="100%" />
    {% else %}
        <img src="/homeStatic/images/zjzk_03.jpg" width="100%" height="100%" />
    {% endif %}
    <p>{{ psersonInfo.companyName }}</p>
</div>