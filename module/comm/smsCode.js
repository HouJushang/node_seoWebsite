var request = require('request');
const router = require('../router');
const countUserByWhere = _loadQuery('user', 'countUserByWhere');

function RndNum(n){
    var rnd="";
    for(var i=0;i<n;i++)
        rnd+=Math.floor(Math.random()*10);
    return rnd;
}
router.post('/smscode', async (ctx) => {
    if(ctx.session.captcha.toLowerCase() != ctx.request.body.code.toLowerCase()){
        ctx.body = _errorResponse("验证码错误");
        return
    }

    const mobile = ctx.request.body.phone;
    const code = RndNum(4);
    ctx.session.smscode = code;

    var result = await countUserByWhere({phone: mobile});
    if(result > 0){
        ctx.body = _errorResponse('该手机号码已经存在', result);
        return false;
    }

    try {
        const urlStr = `http://120.76.213.253:8888/sms.aspx?userid=1033&account=sqt&password=ctuiLdsp&mobile=${mobile}&content=验证码为${code}【安商】&action=send`;
        const sendPromise = new Promise((resolve, reject) => {
            request({
                url: encodeURI(urlStr),
                method: "POST",
                headers: {
                    "content-type": "application/json",
                },
            }, function(error, response, body) {
                if (!error && response.statusCode == 200) {
                    resolve("成功")
                }else{
                    reject("发送失败")
                }
            });
        })
        const result = await sendPromise;
        ctx.body = _successResponse(result,{});

    } catch (e) {
        ctx.body = _errorResponse(e.message);
    }
})
router.post('/smscode2', async (ctx) => {
    const mobile = ctx.request.body.phone;
    const code = RndNum(4);
    ctx.session.smscode = code;
    try {
        const urlStr = `http://120.76.213.253:8888/sms.aspx?userid=1033&account=sqt&password=ctuiLdsp&mobile=${mobile}&content=验证码为${code}【安商】&action=send`;
        const sendPromise = new Promise((resolve, reject) => {
            request({
                url: encodeURI(urlStr),
                method: "POST",
                headers: {
                    "content-type": "application/json",
                },
            }, function(error, response, body) {
                if (!error && response.statusCode == 200) {
                    resolve("成功")
                }else{
                    reject("发送失败")
                }
            });
        })
        const result = await sendPromise;
        ctx.body = _successResponse(result,{});

    } catch (e) {
        ctx.body = _errorResponse(e.message);
    }
})
router.post('/checkSmsCode', async (ctx) => {
    try {
        if (ctx.request.body.code == ctx.session.smscode) {
            ctx.body = _successResponse("发送成功");
        }else{
            ctx.body = _errorResponse("发送失败");
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message);
    }
})