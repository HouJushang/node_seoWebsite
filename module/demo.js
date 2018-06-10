const router = require('../router');
const newsModel = _loadModel('news');
router.get('/admin/menu', async (ctx) => {
    try {
        const result = await newsModel.create({
            title: '111',
            thumb: '2222',
            news_data: {
                body: '111',
            },
        }, {
            include: [newsModel.NewsData],
        });
        if (result) {
            ctx.body = _successResponse('添加成功', {
                result
            })
        }else{
            ctx.body = _errorResponse('添加失败');
        }
    } catch(e) {
        ctx.body = _errorResponse('后台错误');
    };
})