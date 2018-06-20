const router = require('./router');
const newsHandle = require('./newsHandle')
const indexHandle = require('./indexHandle')
const newsDetailHandle = require('./newsDetailHandle')

const productHandle = require('./productHandle')
const productDetailHandle = require('./productDetailHandle')

const resolveHandle = require('./resolveHandle')
const resolveDetailHandle = require('./resolveDetailHandle')

const serviceHandle = require('./serviceHandle')
const serviceDetailHandle = require('./serviceDetailHandle')

const successHandle = require('./successHandle')
const successDetailHandle = require('./successDetailHandle')

const thostHandle = require('./thostHandle')
const thostDetailHandle = require('./thostDetailHandle')

const jobDetailHandle = require('./jobDetailHandle')
const jobHandle = require('./jobHandle')

const aboutHandle = require('./aboutHandle')
const aboutDetailHandle = require('./aboutDetailHandle')

router.get('/', async (ctx) => {
    ctx.body = await ctx.render('seo')
})

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
            const result =await newsDetailHandle(webSiteId, 'news', pathInfo[1])
            ctx.body = await ctx.render(result.template, result.data)
            return
        }
        if(pathInfo[0] === 'productl'){
            const page = pathInfo[2] || 1;
            const result =await productHandle(webSiteId, pathInfo[1], page)
            ctx.body = await ctx.render(result.template, result.data)
            return
        }
        if(pathInfo[0] === 'productd'){
            const page = pathInfo[2] || 1;
            const result =await productDetailHandle(webSiteId, 'product', page)
            ctx.body = await ctx.render(result.template, result.data)
            return
        }
        if(pathInfo[0] === 'aboutl'){
            const result =await aboutHandle(webSiteId, pathInfo[1])
            ctx.body = await ctx.render(result.template, result.data)
            return
        }

        if(pathInfo[0] === 'aboutd'){
            const result =await aboutDetailHandle(webSiteId, pathInfo[1])
            ctx.body = await ctx.render(result.template, result.data)
            return
        }

        //--------------------------
        if(pathInfo[0] === 'successl'){
            const result =await successHandle(webSiteId, pathInfo[1])
            ctx.body = await ctx.render(result.template, result.data)
            return
        }

        if(pathInfo[0] === 'successd'){
            const result =await serviceDetailHandle(webSiteId, pathInfo[1])
            ctx.body = await ctx.render(result.template, result.data)
            return
        }

        if(pathInfo[0] === 'jobl'){
            const result =await jobHandle(webSiteId, pathInfo[1])
            ctx.body = await ctx.render(result.template, result.data)
            return
        }

        if(pathInfo[0] === 'jobd'){
            const result =await jobDetailHandle(webSiteId, pathInfo[1])
            ctx.body = await ctx.render(result.template, result.data)
            return
        }

        if(pathInfo[0] === 'resolvel'){
            const result =await resolveHandle(webSiteId, pathInfo[1])
            ctx.body = await ctx.render(result.template, result.data)
            return
        }

        if(pathInfo[0] === 'resolved'){
            const result =await resolveDetailHandle(webSiteId, pathInfo[1])
            ctx.body = await ctx.render(result.template, result.data)
            return
        }

        if(pathInfo[0] === 'thostl'){
            const result =await thostHandle(webSiteId, pathInfo[1])
            ctx.body = await ctx.render(result.template, result.data)
            return
        }

        if(pathInfo[0] === 'thostd'){
            const result =await thostDetailHandle(webSiteId, pathInfo[1])
            ctx.body = await ctx.render(result.template, result.data)
            return
        }

        if(pathInfo[0] === 'servicel'){
            const result =await serviceHandle(webSiteId, pathInfo[1])
            ctx.body = await ctx.render(result.template, result.data)
            return
        }

        if(pathInfo[0] === 'serviced'){
            const result =await serviceDetailHandle(webSiteId, pathInfo[1])
            ctx.body = await ctx.render(result.template, result.data)
            return
        }

        ctx.body = await ctx.render('error')
    } catch (e) {
        console.log(e)
        ctx.body = await ctx.render('error')
    }

})