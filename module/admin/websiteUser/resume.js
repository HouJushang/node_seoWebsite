/**
 * Created by hou on 2018/4/15.
 */
const router = require('../../router');
const getResumeListWithPage = _loadQuery('user', 'getResumeListWithPage')
const getResumeById = _loadQuery('user', 'getResumeById')
const addResume = _loadQuery('user', 'addResume')
const delResumeById = _loadQuery('user', 'delResumeById');
const updateResumeById = _loadQuery('user', 'updateResumeById');
const resumeModel = _loadModel('websiteUser', 'resume')

router.post('/admin/listResume', async (ctx) => {
    try {
        const result = await getResumeListWithPage({}, ctx.request.body.pageInfo);
        ctx.body = _successResponse('列表获取成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.get('/admin/getOneResume', async (ctx) => {
    try {
        const result = await getResumeById(ctx.query.id);
        ctx.body = _successResponse('内容获取成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.post('/admin/resume', async (ctx) => {
    try {
        ctx.request.body.status = 1;
        const result = await addResume(ctx.request.body);
        ctx.body = _successResponse('内容添加成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.put('/admin/resume', async (ctx) => {
    try {
        var result = await updateResumeById(ctx.request.body.id, ctx.request.body)
        if (result) {
            ctx.body = _successResponse('内容更新成功', result);
        } else {
            ctx.body = _errorResponse('内容更新失败');
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.delete('/admin/resume', async (ctx) => {
    try {
        const result = await delResumeById(ctx.request.query.id);
        if (result) {
            ctx.body = _successResponse('删除成功', result);
        } else {
            ctx.body = _errorResponse('删除失败');
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})

router.put('/admin/checkResume', async (ctx) => {
    try {
        var result = await resumeModel.update({status:  ctx.request.body.status}, {where: {id: ctx.request.body.id}})
        if (result) {
            ctx.body = _successResponse('内容更新成功', result);
        } else {
            ctx.body = _errorResponse('内容更新失败');
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})