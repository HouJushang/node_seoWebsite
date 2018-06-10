/**
 * Created by hou on 2018/4/15.
 */
const router = require('../../router');
const Sequelize = require('sequelize')
const Op = Sequelize.Op
const adminModel = _loadModel('userPermission', 'admin');
const defaultUrl = '/admin/admin';
router.get(defaultUrl, async (ctx) => {
    try {
        const result = await adminModel.findAll();
        ctx.body = _successResponse('管理员列表获取成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.post(defaultUrl, async (ctx) => {
    try {
        var result = await adminModel.count({where: {username: ctx.request.body.username}});
        if(result > 0){
            ctx.body = _errorResponse('该管理员已经存在', result);
            return false;
        }
        var result = await adminModel.create(ctx.request.body);
        ctx.body = _successResponse('管理员添加成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.put(defaultUrl, async (ctx) => {
    try {
        var result = await adminModel.count({where: {username: ctx.request.body.username, id: {[Op.ne]: ctx.request.body.id}}});
        if(result > 0){
            ctx.body = _errorResponse('该管理员已经存在', result);
            return false;
        }
        var result = await adminModel.update(ctx.request.body, {where: {id: ctx.request.body.id}})
        if(result) {
            ctx.body = _successResponse('管理员更新成功', result);
        }else{
            ctx.body = _errorResponse('管理员更新失败');
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.delete(defaultUrl, async (ctx) => {
    try {
        const result = await adminModel.destroy({where: ctx.request.query})
        if(result) {
            ctx.body = _successResponse('管理员删除成功', result);
        }else{
            ctx.body = _errorResponse('管理员删除失败');
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})

