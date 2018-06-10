/**
 * Created by hou on 2018/4/15.
 */
const router = require('../../router');
const Sequelize = require('sequelize')
const getCategory = _loadQuery('category', 'getCategoryById')
const getContentListWithPage = _loadQuery('content', 'getContentListWithPage')
const getContentById = _loadQuery('content', 'getContentById')
router.post('/admin/listContent/:categoryId', async (ctx) => {
    try {
        const categoryResult = await getCategory(ctx.params.categoryId);
        const result = await getContentListWithPage(categoryResult.model, {categoryId: ctx.params.categoryId}, ctx.request.body.pageInfo);
        ctx.body = _successResponse('栏目列表获取成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.get('/admin/getOneContent', async (ctx) => {
    try {
        const categoryResult = await getCategory(ctx.query.categoryId);
        const result = await getContentById(categoryResult.model, ctx.query.id);
        ctx.body = _successResponse('内容获取成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.post('/admin/content/:categryId', async (ctx) => {
    try {
        const categoryResult = await getCategory(ctx.params.categryId);
        Object.assign(ctx.request.body, {
            status : 1,
            sysadd : 0, //网站后台人员
            addname: ctx.session.loginInfo.adminResult.username,
        })
        console.log(ctx.request.body)
        const contentModel = _loadModel('contentModel', categoryResult.model)
        const contentResult = await contentModel.create(ctx.request.body);
        ctx.body = _successResponse('内容添加成功', contentResult);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.put('/admin/content/:categryId', async (ctx) => {
    try {
        const categoryResult = await getCategory(ctx.params.categryId);
        const contentModel = _loadModel('contentModel', categoryResult.model);
        var result = await contentModel.update(ctx.request.body, {where: {id: ctx.request.body.id}})
        if (result) {
            ctx.body = _successResponse('内容更新成功', result);
        } else {
            ctx.body = _errorResponse('内容更新失败');
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.put('/admin/checkContent/:categryId', async (ctx) => {
    try {
        const categoryResult = await getCategory(ctx.params.categryId);
        const contentModel = _loadModel('contentModel', categoryResult.model);
        var result = await contentModel.update({status:  ctx.request.body.status}, {where: {id: ctx.request.body.id}})
        if (result) {
            ctx.body = _successResponse('内容更新成功', result);
        } else {
            ctx.body = _errorResponse('内容更新失败');
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.delete('/admin/content/:categryId', async (ctx) => {
    try {
        const categoryResult = await getCategory(ctx.params.categryId);
        const contentModel = _loadModel('contentModel', categoryResult.model);
        const result = await contentModel.destroy({where: {id: ctx.request.query.id}})
        if (result) {
            ctx.body = _successResponse('删除成功', result);
        } else {
            ctx.body = _errorResponse('删除失败');
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})

