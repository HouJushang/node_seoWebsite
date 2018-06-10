const app = require('./bin/app')

const router = require('./module/router');
const session = require('./bin/session')

const config = require('./config/www')
var bodyParser = require('koa-bodyparser');
const cors = require('koa2-cors');
const serve = require('koa-static');
const co = require('co');
const path = require('path')
const render = require('koa-swig');
require('./util/globalFunction')


app.use(serve(path.join(__dirname, '/public')));
app.context.render = co.wrap(render({
    root: path.join(__dirname, 'views'),
    autoescape: true,
    cache: false, //'memory', // disable, set to false
    ext: 'swig',
    writeBody: false
}));

app.use(cors({credentials: true, origin: 'http://localhost:8080'}));


app.keys = ['some secret hurr'];
app.use(session.module(session.config, app))

// var Router = require('koa-router');
// var router2 = new Router();
// const ueditor = require('./nodeModules/koa2-ueditor')
// router2.all('/editor/controller', ueditor('public'))
// app.use(router2.routes()).use(router2.allowedMethods());
app.use(async (ctx, next) => {
    if (ctx.path === '/upload') ctx.disableBodyParser = true;
    await next();
});
app.use(bodyParser({ multipart: true }));

require('./module');
app.use(router.routes()).use(router.allowedMethods());

app.listen(config.port);
