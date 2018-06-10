/**
 * Created by hou on 2018/4/15.
 */
const router = require('../../router');
const getProductListWithPage = _loadQuery('user', 'getProductListWithPage')
const getProductById = _loadQuery('user', 'getProductById')
const addProduct = _loadQuery('user', 'addProduct')
const delProductById = _loadQuery('user', 'delProductById');
const updateProductById = _loadQuery('user', 'updateProductById');
const productModel = _loadModel('websiteUser', 'product')

router.post('/admin/listProduct', async (ctx) => {
    try {
        const result = await getProductListWithPage({}, ctx.request.body.pageInfo);
        ctx.body = _successResponse('列表获取成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.get('/admin/getOneProduct', async (ctx) => {
    try {
        const result = await getProductById(ctx.query.id);
        ctx.body = _successResponse('内容获取成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.post('/admin/product', async (ctx) => {
    try {
        ctx.request.body.status = 1;
        const result = await addProduct(ctx.request.body);
        ctx.body = _successResponse('内容添加成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.put('/admin/product', async (ctx) => {
    try {
        var result = await updateProductById(ctx.request.body.id, ctx.request.body)
        if (result) {
            ctx.body = _successResponse('内容更新成功', result);
        } else {
            ctx.body = _errorResponse('内容更新失败');
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.delete('/admin/product', async (ctx) => {
    try {
        const result = await delProductById(ctx.request.query.id);
        if (result) {
            ctx.body = _successResponse('删除成功', result);
        } else {
            ctx.body = _errorResponse('删除失败');
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})

router.put('/admin/checkProduct', async (ctx) => {
    try {
        var result = await productModel.update({status:  ctx.request.body.status}, {where: {id: ctx.request.body.id}})
        if (result) {
            ctx.body = _successResponse('内容更新成功', result);
        } else {
            ctx.body = _errorResponse('内容更新失败');
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})