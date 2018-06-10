const router = require('../router');
router.get('/list', async (ctx) => {
    ctx.body = ctx.body = await ctx.render('home/list')
})