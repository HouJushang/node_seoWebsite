const router = require('../router');
const findProductWithPage = _loadQuery('home', 'findProductWithPage')
const findProductById = _loadQuery('home', 'findProductById')

router.get('/product', async (ctx) => {
    const pageData = {
        list: await findProductWithPage(),
        homeLogin: ctx.session.homeLogin
    }
    ctx.body = await ctx.render('home/productList', pageData)
})
router.get('/productDetail/:id', async (ctx) => {
    const pageData = {
        detail: await findProductById(ctx.params.id),
        homeLogin: ctx.session.homeLogin
    }
    ctx.body = await ctx.render('home/productDetail', pageData)
})