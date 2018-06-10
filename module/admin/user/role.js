/**
 * Created by hou on 2018/4/15.
 */
const router = require('../../router');
const Sequelize = require('sequelize')
const Op = Sequelize.Op
const roleModel = _loadModel('userPermission', 'role');
const defaultUrl = '/admin/role';
router.get(defaultUrl, async (ctx) => {
    try {
        const result = await roleModel.findAll();
        ctx.body = _successResponse('角色列表获取成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.post(defaultUrl, async (ctx) => {
    try {
        var result = await roleModel.count({where: {name: ctx.request.body.name}});
        if(result > 0){
            ctx.body = _errorResponse('该角色已经存在', result);
            return false;
        }
        var result = await roleModel.create(ctx.request.body);
        ctx.body = _successResponse('角色添加成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.put(defaultUrl, async (ctx) => {
    try {
        var result = await roleModel.count({where: {name: ctx.request.body.name, id: {[Op.ne]: ctx.request.body.id}}});
        if(result > 0){
            ctx.body = _errorResponse('该角色已经存在', result);
            return false;
        }
        var result = await roleModel.update(ctx.request.body, {where: {id: ctx.request.body.id}})
        if(result) {
            ctx.body = _successResponse('角色更新成功', result);
        }else{
            ctx.body = _errorResponse('角色更新失败');
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.delete(defaultUrl, async (ctx) => {
    try {
        const result = await roleModel.destroy({where: ctx.request.query})
        if(result) {
            ctx.body = _successResponse('角色删除成功', result);
        }else{
            ctx.body = _errorResponse('角色删除失败');
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})

