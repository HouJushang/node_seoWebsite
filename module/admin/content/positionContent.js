/**
 * Created by hou on 2018/4/15.
 */
const router = require('../../router');
const Sequelize = require('sequelize')
const Op = Sequelize.Op
const positionContentModel = _loadModel('content', 'positionContent');
const positionContentForId = _loadQuery('comm', 'positionContentForId')
const defaultUrl = '/admin/positionContent';
router.get(defaultUrl, async (ctx) => {
    try {
        const result = await positionContentModel.findAll({where: ctx.request.query});
        ctx.body = _successResponse('列表获取成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.post(defaultUrl, async (ctx) => {
    try {
        await  positionContentModel.destroy({where: {artId: ctx.request.body.id, model: ctx.request.body.model}});
        const insertArr = [];
        ctx.request.body.choose.forEach(e => {
            insertArr.push({
                positionId: e,
                artId: ctx.request.body.id,
                model:  ctx.request.body.model
            })
        })
        const result = await positionContentModel.bulkCreate(insertArr)
        ctx.body = _successResponse('添加成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.put(defaultUrl, async (ctx) => {
    try {
        var result = await positionContentModel.update(ctx.request.body, {where: {id: ctx.request.body.id}})
        ctx.body = _successResponse('更新成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.delete(defaultUrl, async (ctx) => {
    try {
        const result = await positionContentModel.destroy({where: {id: ctx.request.query.id }})
        ctx.body = _successResponse('删除成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})

router.get('/admin/positionContent/:id', async (ctx) => {
    try {
        const result = await positionContentForId(ctx.params.id);
        ctx.body = _successResponse('列表获取成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})


