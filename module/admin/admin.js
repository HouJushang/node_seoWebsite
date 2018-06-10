/**
 * Created by hou on 2018/4/19.
 */
const router = require('../router');
router.all('/admin/*', async (ctx, next) => {
    if(ctx.session && ctx.session.loginInfo && ctx.session.loginInfo.adminResult){
        await next()
    }else{
        ctx.body = _authErrorResponse('无登录信息')
    }
})