/**
 * Created by hou on 2018/4/15.
 */
const router = require('../../router');
const getPersonByUserId = _loadQuery('user', 'getPersonByUserId')
const updatePersonByUserId = _loadQuery('user', 'updatePersonByUserId')
const addPerson = _loadQuery('user', 'addPerson')
const getPersonListWithPage = _loadQuery('user', 'getPersonListWithPage')

router.get('/admin/personById/:userId', async (ctx) => {
    try {
        const result = await getPersonByUserId(ctx.params.userId);
        ctx.body = _successResponse('企业信息获取成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})

router.post('/admin/personList', async (ctx) => {
    try {
        const result = await getPersonListWithPage({}, ctx.request.body.pageInfo);
        ctx.body = _successResponse('企业信息获取成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})

router.post('/admin/person/:userId', async (ctx) => {
    try {
        const comResult = await getPersonByUserId(ctx.params.userId);
        if (comResult) {
            const result = updatePersonByUserId(ctx.params.userId, ctx.request.body)
            if (result) {
                ctx.body = _successResponse('个人信息操作成功', result);
            } else {
                ctx.body = _errorResponse('个人信息操作失败', result);
            }
        } else {
            ctx.request.body.userId = ctx.params.userId;
            const result = addPerson(ctx.request.body);
            if (result) {
                ctx.body = _successResponse('个人信息操作成功', result);
            } else {
                ctx.body = _errorResponse('个人信息操作失败', result);
            }
        }

    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})

