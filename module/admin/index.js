/**
 * Created by hou on 2018/4/15.
 */
const router = require('../../router');
router.get('/:webSite/:path', async (ctx) => {
    try {
        console.log(1)
        ctx.body = _successResponse('栏目详情', categoryResult);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})


