/**
 * Created by hou on 2018/4/15.
 */
const router = require('../router');
const adminModel = _loadModel('userPermission', 'admin');
const adminRoleModel = _loadModel('userPermission', 'adminRole');
const roleModel = _loadModel('userPermission', 'role');
router.post('/login', async (ctx) => {
    try {
        if(ctx.session.captcha.toLowerCase() !=  ctx.request.body.captcha.toLowerCase()){
            ctx.body = _errorResponse('验证码错误')
            return false
        }
        var adminResult = await adminModel.findOne({
            where: {
                username: ctx.request.body.username,
                password: ctx.request.body.password
            }
        });
        if (!adminResult) {
            ctx.body = _errorResponse('用户名密码错误');
            ctx.session.captcha = "";
            return false
        }
        var adminRoleResult = await adminRoleModel.findOne({where: {adminId: adminResult.id}, include: roleModel});
        if (!adminRoleResult) {
            ctx.body = _errorResponse('该用户角色未分配，联系管理员')
            return false
        }
        ctx.session.loginInfo = {adminResult, adminRoleResult};
        ctx.body = _successResponse('登录成功', {adminResult, adminRoleResult});
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.post('/loginOut', async (ctx) => {
    try {
        ctx.session.loginInfo = null
        ctx.body = _successResponse('退出登录成功');
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
});
