const router = require('../../router');
const menuModel = _loadModel('userPermission', 'menu');
const roleModel = _loadModel('userPermission', 'role');
const roleMenuModel = _loadModel('userPermission', 'roleMenu');

router.get('/admin/roleMenu/:roleId', async (ctx) => {
    try {
        const result = await roleMenuModel.findAll({
            where:{
                roleId: ctx.params.roleId
            },
            include: [roleModel, menuModel]
        });
        ctx.body = _successResponse('菜单列表获取成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.post('/admin/roleMenu', async (ctx) => {
    try {
        const result = await roleMenuModel.create(ctx.request.body);
        ctx.body = _successResponse('菜单添加成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.delete('/admin/roleMenu', async (ctx) => {
    try {
        const result = await roleMenuModel.destroy({where: ctx.request.query})
        if(result) {
            ctx.body = _successResponse('菜单删除成功', result);
        }else{
            ctx.body = _errorResponse('菜单删除失败');
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
