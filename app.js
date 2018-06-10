const app = require('./bin/app')

const router = require('./module/router');

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
app.use(bodyParser({ multipart: true }));

require('./module');
app.use(router.routes()).use(router.allowedMethods());

app.listen(config.port);
