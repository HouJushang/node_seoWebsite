/**
 * Created by hou on 2018/4/16.
 */
const router = require('../router');
const fs = require('fs');
const koaBody = require('koa-body');
const path = require('path');
router.post('/upload', koaBody({ multipart: true }), async (ctx) => {
    try {
        const file = ctx.request.body.files.file;
        const extensionName = file.name.split('.')[1];
        const reader = fs.createReadStream(file.path);
        const fileName = Math.random().toString() + '.' + extensionName;
        const stream = fs.createWriteStream(path.join(__dirname, '../../public/upload/', fileName));
        reader.pipe(stream);
        ctx.body = _successResponse('上传成功', {url: 'upload/' + fileName})
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})

const ueditor = require('../../nodeModules/koa2-ueditor')
router.all('/editor/controller', ueditor('public'))
