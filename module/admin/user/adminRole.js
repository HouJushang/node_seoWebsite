/**
 * Created by hou on 2018/4/15.
 */
const router = require('../../router');
const Sequelize = require('sequelize')
const Op = Sequelize.Op
const adminRoleModel = _loadModel('userPermission', 'adminRole');
const adminModel = _loadModel('userPermission', 'admin');
const roleModel = _loadModel('userPermission', 'role');
const defaultUrl = '/admin/adminRole';
router.get(defaultUrl, async (ctx) => {
    try {
        const result = await adminRoleModel.findAll({include: [adminModel, roleModel]});
        ctx.body = _successResponse('管理员角色列表获取成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.post(defaultUrl, async (ctx) => {
    try {
        var result = await adminRoleModel.count({where: {adminId: ctx.request.body.adminId}});
        if(result > 0){
            ctx.body = _errorResponse('该管理员已经绑定', result);
            return false;
        }
        var result = await adminRoleModel.create(ctx.request.body);
        ctx.body = _successResponse('绑定成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.put(defaultUrl, async (ctx) => {
    try {
        var result = await adminRoleModel.update(ctx.request.body, {where: {id: ctx.request.body.id, adminId: ctx.request.body.adminId}})
        if(result) {
            ctx.body = _successResponse('分配更新成功', result);
        }else{
            ctx.body = _errorResponse('分配更新失败');
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.delete(defaultUrl, async (ctx) => {
    try {
        const result = await adminRoleModel.destroy({where: ctx.request.query})
        if(result) {
            ctx.body = _successResponse('管理员删除成功', result);
        }else{
            ctx.body = _errorResponse('管理员删除失败');
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})

