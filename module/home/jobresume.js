const router = require('../router');
const getJobListWithPage = _loadQuery('user', 'getJobListWithPage')
const getResumeListWithPage = _loadQuery('user', 'getResumeListWithPage')
const getJobById = _loadQuery('user', 'getJobById')
const getResumeById = _loadQuery('user', 'getResumeById')
router.get('/job', async (ctx) => {
    const pageData = {
        homeLogin: ctx.session.homeLogin,
        list: await getJobListWithPage({
            status: 1,
            isShow: 1
        })
    }
    ctx.body = ctx.body = await ctx.render(`home/job`, pageData)
})
router.get('/resume', async (ctx) => {
    const pageData = {
        homeLogin: ctx.session.homeLogin,
        list: await getResumeListWithPage({
            status: 1,
            isShow: 1
        })
    }
    ctx.body = ctx.body = await ctx.render(`home/resume`, pageData)
})
router.get('/job/:id', async (ctx) => {
    const pageData = {
        homeLogin: ctx.session.homeLogin,
        detail: await getJobById(ctx.params.id)
    }
    ctx.body = ctx.body = await ctx.render(`home/jobContent`, pageData)
})
router.get('/resume/:id', async (ctx) => {
    const pageData = {
        homeLogin: ctx.session.homeLogin,
        detail: await getResumeById(ctx.params.id)
    }
    ctx.body = ctx.body = await ctx.render(`home/resumeContent`, pageData)
})