const router = require('./router');
const newsHandle = require('./newsHandle')
const indexHandle = require('./indexHandle')
const newsDetailHandle = require('./newsDetailHandle')
router.get('/:webSite/index.html', async (ctx) => {
    try {
        const webSiteId = ctx.params.webSite.split('-')[1];
        const result =await indexHandle(webSiteId, 'index')
        ctx.body = await ctx.render(result.template, result.data)
    } catch (e) {
        ctx.body = await ctx.render('error')
    }
})

router.get('/:webSite/*.html', async (ctx) => {
    try {
        const webSiteId = ctx.params.webSite.split('-')[1];
        const pathInfo = ctx.originalUrl.split('/')[2].split('.')[0].split('-');

        if (pathInfo[0]  === 'newsl'){
            const page = pathInfo[2] || 1;
            const result =await newsHandle(webSiteId, 'news', pathInfo[1], page)
            ctx.body = await ctx.render(result.template, result.data)
            return
        }
        if(pathInfo[0] === 'newsd'){
            const page = pathInfo[2] || 1;
            const result =await newsDetailHandle(webSiteId, 'news', pathInfo[1])
            ctx.body = await ctx.render(result.template, result.data)
            return
        }
        ctx.body = await ctx.render('error')
    } catch (e) {
        console.log(e)
        ctx.body = await ctx.render('error')
    }

})