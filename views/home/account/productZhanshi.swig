{% extends '../layout.swig' %}
{% block content %}

    <div class="list_wrap">
        <div class="w1200 clr">
            <div class="fl personnel_nav">
                {% include './avatarC.swig' %}
                {% include './companyLeft.swig' %}
                {{ companyLeft(6) }}
            </div>
            <div class="list_text">
                <div class="list_cont">
                    <div class="list_title"><i>展示中的商品</i></div>
                    <div class="list_personal">
                        {#<div class="clr condition">#}
                            {#<div class="fl state clr">#}
                                {#<div class="name fl">状态：</div>#}
                                {#<div class="text">#}
                                    {#<select>#}
                                        {#<option>全部</option>#}
                                    {#</select>#}
                                {#</div>#}
                            {#</div>#}
                            {#<div class="fr time clr">#}
                                {#<div class="name fl">发布日期：</div>#}
                                {#<div class="text clr">#}
                                    {#<input type="text" id="start_time"#}
                                           {#onclick="WdatePicker({maxDate:'#F{$dp.$D(\'end_time\')}'})" class="fl">#}
                                    {#<em class="fl">~</em>#}
                                    {#<input type="text" id="end_time"#}
                                           {#onclick="WdatePicker({minDate:'#F{$dp.$D(\'start_time\')}'})" class="fl">#}
                                {#</div>#}
                            {#</div>#}
                        {#</div>#}
                        <div class="table">
                            <table>
                                <tr>
                                    <th width="5%">序号</th>
                                    <th width="40%">产品名称</th>
                                    <th width="20%">创建时间</th>
                                    <th width="10%">状态</th>
                                    <th width="25%">操作</th>
                                </tr>
                                {% for key,val in list %}
                                <tr>
                                    <td>{{ key+1 }}</td>
                                    <td>{{ val.title }}</td>
                                    <td>{{ val['createdAt'] | date('Y-m-d') }}</td>
                                    <td>{{ ['停用', '展示'][val.isShow] }}</td>
                                    <td>
                                        <a class="btn-toolbar isShowBtn" href="javascript:;" idvalue="{{ val.id }}" isShow="{{ val.isShow }}">{{ ['启用', '禁用'][val.isShow] }}</a>
                                        <a class="btn-toolbar red delBtn" href="javascript:;" idvalue="{{ val.id }}">删除</a>
                                    </td>
                                </tr>
                                {% endfor %}
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
{% endblock %}
{% block bottomScript %}
    <script type="text/javascript">
        $(function () {
            $(".nav_list .list .tit").click(function () {
                $(this).siblings("dl").slideDown().parents(".list").siblings(".list").find("dl").slideUp();
            });

            $('.isShowBtn').click(function(){
                $.ajax({
                    url: "/account/checkProduct",
                    type: "POST",
                    dataType: "json",
                    data: {
                        id: $(this).attr('idvalue'),
                        isShow:  $(this).attr('isShow') == 0 ? 1 : 0,
                    },
                    success: function (e) {
                        if(e.code == "success"){
                            window.history.go(0)
                        }else{
                            alert(e.message);
                        }
                    }
                })
            })

            $('.delBtn').click(function(){
                var isClick = confirm("是否确认删除!");
                if(!isClick){
                    return false;
                }
                $.ajax({
                    url: "/account/delProduct",
                    type: "POST",
                    dataType: "json",
                    data: {
                        id: $(this).attr('idvalue'),
                    },
                    success: function (e) {
                        if(e.code == "success"){
                            window.history.go(0)
                        }else{
                            alert(e.message);
                        }
                    }
                })
            })

        });
    </script>
{% endblock %}





