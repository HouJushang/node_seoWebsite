/**
 * Created by hou on 2018/4/15.
 */
const router = require('../../router');
const Sequelize = require('sequelize')
const Op = Sequelize.Op
const categoryModel = _loadModel('content', 'category');
const getCategoryById = _loadQuery('category', 'getCategoryById')
const roleMode = _loadModel('userPermission', 'role');
const defaultUrl = '/admin/category';
router.get(defaultUrl, async (ctx) => {
    try {
        const result = await categoryModel.findAll({
            include: [
                {model: roleMode}
            ]
        });
        ctx.body = _successResponse('栏目列表获取成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.get('/admin/categoryById/:categoryId', async (ctx) => {
    try {
        const categoryResult = await getCategoryById(ctx.params.categoryId);
        ctx.body = _successResponse('栏目详情', categoryResult);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }

})
router.post(defaultUrl, async (ctx) => {
    try {
        var result = await categoryModel.count({where: {name: ctx.request.body.name}});
        if(result > 0){
            ctx.body = _errorResponse('该栏目已经存在', result);
            return false;
        }
        var result = await categoryModel.create(ctx.request.body);
        ctx.body = _successResponse('栏目添加成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.put(defaultUrl, async (ctx) => {
    try {
        var result = await categoryModel.count({where: {name: ctx.request.body.name, id: {[Op.ne]: ctx.request.body.id}}});
        if(result > 0){
            ctx.body = _errorResponse('该栏目已经存在', result);
            return false;
        }
        var result = await categoryModel.update(ctx.request.body, {where: {id: ctx.request.body.id}})
        if(result) {
            ctx.body = _successResponse('栏目更新成功', result);
        }else{
            ctx.body = _errorResponse('栏目更新失败');
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.delete(defaultUrl, async (ctx) => {
    try {
        const result = await categoryModel.destroy({where: ctx.request.query})
        if(result) {
            ctx.body = _successResponse('角色删除成功', result);
        }else{
            ctx.body = _errorResponse('角色删除失败');
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})

