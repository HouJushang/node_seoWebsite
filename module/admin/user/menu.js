const router = require('../../router');
const roleMenuModel = _loadModel('userPermission', 'roleMenu')
const menuModel = _loadModel('userPermission', 'menu');
const roleModel = _loadModel('userPermission', 'role');

router.get('/admin/menu', async (ctx) => {
    try {
        console.log(ctx.session.loginInfo.adminRoleResult);
        const result = await menuModel.findAll();
        ctx.body = _successResponse('菜单列表获取成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.get('/admin/shoRoleMenu', async (ctx) => {
    try {
        const result = await roleMenuModel.findAll({
            where:{
                roleId: ctx.session.loginInfo.adminRoleResult.roleId
            },
            include: [roleModel, menuModel]
        });
        const data = []
        result.forEach(e => {
            data.push(e.menu)
        })
        ctx.body = _successResponse('菜单列表获取成功', data);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.post('/admin/menu', async (ctx) => {
    try {
        const result = await menuModel.create(ctx.request.body);
        ctx.body = _successResponse('菜单添加成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.put('/admin/menu', async (ctx) => {
    console.log(ctx.request.body, {id: ctx.request.body.id})
    try {
        const result = await menuModel.update(ctx.request.body, {where: {id: ctx.request.body.id}})
        if(result) {
            ctx.body = _successResponse('菜单更新成功', result);
        }else{
            ctx.body = _errorResponse('菜单更新失败');
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.delete('/admin/menu', async (ctx) => {
    try {
        const result = await menuModel.destroy({where: ctx.request.query})
        if(result) {
            ctx.body = _successResponse('菜单删除成功', result);
        }else{
            ctx.body = _errorResponse('菜单删除失败');
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
