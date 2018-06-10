const router = require('../router');
const countUserByWhere = _loadQuery('user', 'countUserByWhere');
const addUser = _loadQuery('user', 'addUser');
const addCompany = _loadQuery('user', 'addCompany')
const getCompanyByUserId = _loadQuery('user', 'getCompanyByUserId')
const userModel = _loadModel('websiteUser', 'user')
const addPerson = _loadQuery('user', 'addPerson')
const personModel = _loadModel('websiteUser', 'person')
const companyModel = _loadModel('websiteUser', 'company')
router.post('/register/company', async (ctx) => {
    var result = await countUserByWhere({phone: ctx.request.body.phone});
    if(result > 0){
        ctx.body = _errorResponse('该手机号码已经存在', result);
        return false;
    }
    var result = await addUser({
        phone: ctx.request.body.phone,
        password: ctx.request.body.password,
        type: 1,
    });
    ctx.session.homeLogin = result
    var addResult = await addCompany({
        companyName: ctx.request.body.company_name,
        userId: result.id
    });
    if (result) {
        ctx.body = _successResponse('企业信息操作成功', addResult);
    } else {
        ctx.body = _errorResponse('企业信息操作失败', addResult);
    }
    ctx.body = _successResponse('添加成功', addResult);
})

router.post('/register/person', async (ctx) => {
    var result = await countUserByWhere({phone: ctx.request.body.phone});
    if(result > 0){
        ctx.body = _errorResponse('该手机号码已经存在', result);
        return false;
    }
    var result = await addUser({
        phone: ctx.request.body.phone,
        password: ctx.request.body.password,
        type: 0,
    });
    ctx.session.homeLogin = result
    await addPerson({userId: result.id});
    ctx.body = _successResponse('添加成功', result);
})
router.post('/register/login', async (ctx) => {
    if(ctx.session.captcha.toLowerCase() != ctx.request.body.code.toLowerCase()){
        ctx.body = _errorResponse("验证码错误");
        return false;
    }
    var result = await userModel.findOne({where: {phone: ctx.request.body.phone, password: ctx.request.body.password}});
    if(result){
        ctx.session.homeLogin = result
        ctx.body = _successResponse('登录成功', result);
    }else{
        ctx.body = _errorResponse('用户名或者密码错误', result);
    }

})
router.get('/register/loginOut', async (ctx) => {
    ctx.session.homeLogin = null
    ctx.redirect('/')
})