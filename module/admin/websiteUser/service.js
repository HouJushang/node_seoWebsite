/**
 * Created by hou on 2018/4/15.
 */
const router = require('../../router');
const getServiceListWithPage = _loadQuery('user', 'getServiceListWithPage')
const getServiceById = _loadQuery('user', 'getServiceById')
const addService = _loadQuery('user', 'addService')
const delServiceById = _loadQuery('user', 'delServiceById');
const updateServiceById = _loadQuery('user', 'updateServiceById');
const serviceModel = _loadModel('websiteUser', 'service')

router.post('/admin/listService', async (ctx) => {
    try {
        const result = await getServiceListWithPage({}, ctx.request.body.pageInfo);
        ctx.body = _successResponse('列表获取成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.get('/admin/getOneService', async (ctx) => {
    try {
        const result = await getServiceById(ctx.query.id);
        ctx.body = _successResponse('内容获取成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.post('/admin/service', async (ctx) => {
    try {
        ctx.request.body.status = 1;
        const result = await addService(ctx.request.body);
        ctx.body = _successResponse('内容添加成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.put('/admin/service', async (ctx) => {
    try {
        var result = await updateServiceById(ctx.request.body.id, ctx.request.body)
        if (result) {
            ctx.body = _successResponse('内容更新成功', result);
        } else {
            ctx.body = _errorResponse('内容更新失败');
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.delete('/admin/service', async (ctx) => {
    try {
        const result = await delServiceById(ctx.request.query.id);
        if (result) {
            ctx.body = _successResponse('删除成功', result);
        } else {
            ctx.body = _errorResponse('删除失败');
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.put('/admin/checkService', async (ctx) => {
    try {
        var result = await serviceModel.update({status:  ctx.request.body.status}, {where: {id: ctx.request.body.id}})
        if (result) {
            ctx.body = _successResponse('内容更新成功', result);
        } else {
            ctx.body = _errorResponse('内容更新失败');
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
