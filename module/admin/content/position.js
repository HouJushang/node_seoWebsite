/**
 * Created by hou on 2018/4/15.
 */
const router = require('../../router');
const Sequelize = require('sequelize')
const Op = Sequelize.Op
const positionModel = _loadModel('content', 'position');
const defaultUrl = '/admin/position';
router.get(defaultUrl, async (ctx) => {
    try {
        const result = await positionModel.findAll({where: ctx.request.query});
        ctx.body = _successResponse('管理员列表获取成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.post(defaultUrl, async (ctx) => {
    try {
        var result = await positionModel.create(ctx.request.body);
        ctx.body = _successResponse('管理员添加成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.put(defaultUrl, async (ctx) => {
    try {
        var result = await positionModel.update(ctx.request.body, {where: {id: ctx.request.body.id}})
        ctx.body = _successResponse('管理员更新成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.delete(defaultUrl, async (ctx) => {
    try {
        const result = await positionModel.destroy({where: ctx.request.query})
        ctx.body = _successResponse('管理员删除成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})

