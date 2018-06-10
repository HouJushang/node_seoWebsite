const router = require('../router');
const findCompanyWithPage = _loadQuery('home', 'findCompanyWithPage')
const findCompanyById = _loadQuery('home', 'findCompanyById')
const getPositionContent = _loadQuery('content', 'getPositionContent2')
router.get('/company', async (ctx) => {
    const pageData = {
        list: await findCompanyWithPage(),
        homeLogin: ctx.session.homeLogin
    }
    ctx.body = await ctx.render('home/companyList', pageData)
})
router.get('/companyds', async (ctx) => {
    const pageData = {
        list: await getPositionContent(11, 'websiteUser'),
        homeLogin: ctx.session.homeLogin
    }
    console.log(pageData)
    ctx.body = await ctx.render('home/companyList', pageData)
})
router.get('/companyps', async (ctx) => {
    const pageData = {
        list: await getPositionContent(10, 'websiteUser'),
        homeLogin: ctx.session.homeLogin
    }
    console.log(pageData)
    ctx.body = await ctx.render('home/mechanismList', pageData)
})
router.get('/companyContent/:id', async (ctx) => {
    const pageData = {
        detail: await findCompanyById(ctx.params.id),
        homeLogin: ctx.session.homeLogin,
    }
    ctx.body = await ctx.render('home/companyDetail', pageData)
})