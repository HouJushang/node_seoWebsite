const router = require('../router');
const svgCaptcha = require('svg-captcha');
router.get('/captcha', async (ctx) => {
    try {
        var captcha = svgCaptcha.create({
            width: 100,
            height: 30,
            fontSize: 48
        });
        ctx.session.captcha = captcha.text;
        ctx.body = _successResponse('验证码获取成功', {
            captcha: captcha.data
        });
    } catch (e) {
        ctx.body = _errorResponse(e.message);
    }
})