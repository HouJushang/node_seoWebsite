/**
 * Created by hou on 2018/5/1.
 */
const router = require('../router');
const getContentById = _loadQuery('content', 'getContentById')
const getCategory = _loadQuery('category', 'getCategoryById')

router.get('/content/:categoryId/:id', async (ctx) => {
    const categoryResult = await getCategory(ctx.params.categoryId);
    const content = await getContentById(categoryResult.model, ctx.params.id);
    const pageData = {
        categoryResult,
        content,
        homeLogin: ctx.session.homeLogin
    }
    ctx.body = ctx.body = await ctx.render(`home/${categoryResult.template}Content.swig`, pageData)
})