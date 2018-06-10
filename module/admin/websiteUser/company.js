/**
 * Created by hou on 2018/4/15.
 */
const router = require('../../router');
const getCompanyByUserId = _loadQuery('user', 'getCompanyByUserId')
const updateCompanyByUserId = _loadQuery('user', 'updateCompanyByUserId')
const getCompanyListWithPage = _loadQuery('user', 'getCompanyListWithPage')
const addCompany = _loadQuery('user', 'addCompany')

router.get('/admin/companyById/:userId', async (ctx) => {
    try {
        const result = await getCompanyByUserId(ctx.params.userId);
        ctx.body = _successResponse('企业信息获取成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})


router.post('/admin/companyList', async (ctx) => {
    try {
        const result = await getCompanyListWithPage({}, ctx.request.body.pageInfo);
        ctx.body = _successResponse('获取成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})

router.post('/admin/company/:userId', async (ctx) => {
    try {
        const comResult = await getCompanyByUserId(ctx.params.userId);
        if (comResult) {
            const result = updateCompanyByUserId(ctx.params.userId, ctx.request.body)
            if (result) {
                ctx.body = _successResponse('企业信息操作成功', result);
            } else {
                ctx.body = _errorResponse('企业信息操作失败', result);
            }
        } else {
            ctx.request.body.userId = ctx.params.userId;
            const result = addCompany(ctx.request.body);
            if (result) {
                ctx.body = _successResponse('企业信息操作成功', result);
            } else {
                ctx.body = _errorResponse('企业信息操作失败', result);
            }
        }

    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})

