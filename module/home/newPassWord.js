const router = require('../router');
const userModel = _loadModel('websiteUser', 'user');

router.post('/newPassWord', async (ctx) => {
    try {
        if (ctx.request.body.code != ctx.session.smscode) {
            ctx.body = _errorResponse("非法操作!");
            return false;
        }
        const result = userModel.update({password: ctx.request.body.password}, {where: {phone: ctx.request.body.phone}})
        if (result) {
            ctx.body = _successResponse("成功");
            return false;
        } else {
            ctx.body = _errorResponse("失败");
            return false;
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message);
    }

})