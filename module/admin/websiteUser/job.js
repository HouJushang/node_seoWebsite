/**
 * Created by hou on 2018/4/15.
 */
const router = require('../../router');
const getJobListWithPage = _loadQuery('user', 'getJobListWithPage')
const getJobById = _loadQuery('user', 'getJobById')
const addJob = _loadQuery('user', 'addJob')
const delJobById = _loadQuery('user', 'delJobById');
const updateJobById = _loadQuery('user', 'updateJobById');
const jobModel = _loadModel('websiteUser', 'job')

router.post('/admin/listJob', async (ctx) => {
    try {
        const result = await getJobListWithPage({}, ctx.request.body.pageInfo);
        ctx.body = _successResponse('列表获取成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.get('/admin/getOneJob', async (ctx) => {
    try {
        const result = await getJobById(ctx.query.id);
        ctx.body = _successResponse('内容获取成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.post('/admin/job', async (ctx) => {
    try {
        ctx.request.body.status = 1;
        const result = await addJob(ctx.request.body);
        ctx.body = _successResponse('内容添加成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.put('/admin/job', async (ctx) => {
    try {
        var result = await updateJobById(ctx.request.body.id, ctx.request.body)
        if (result) {
            ctx.body = _successResponse('内容更新成功', result);
        } else {
            ctx.body = _errorResponse('内容更新失败');
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.delete('/admin/job', async (ctx) => {
    try {
        const result = await delJobById(ctx.request.query.id);
        if (result) {
            ctx.body = _successResponse('删除成功', result);
        } else {
            ctx.body = _errorResponse('删除失败');
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})

router.put('/admin/checkJob', async (ctx) => {
    try {
        var result = await jobModel.update({status:  ctx.request.body.status}, {where: {id: ctx.request.body.id}})
        if (result) {
            ctx.body = _successResponse('内容更新成功', result);
        } else {
            ctx.body = _errorResponse('内容更新失败');
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})