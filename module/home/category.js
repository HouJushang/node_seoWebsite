/**
 * Created by hou on 2018/5/1.
 */
const router = require('../router');
const getCategory = _loadQuery('category', 'getCategoryById')
const getContentList = _loadQuery('content', 'getContentList')
router.get('/category/:categoryId', async (ctx) => {
    const categoryResult = await getCategory(ctx.params.categoryId);
    const list = getContentList(categoryResult.model, {categoryId: categoryResult.id, status: 1}, {pageSize: 8});
    const pageData = {
        category: categoryResult,
        list: await list,
        homeLogin: ctx.session.homeLogin,
    }
    ctx.body = ctx.body = await ctx.render(`home/${categoryResult.template}List`, pageData)
})