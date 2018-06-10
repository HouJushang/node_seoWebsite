const router = require('../router');
const getPersonByUserId = _loadQuery('user', 'getPersonByUserId')
const updatePersonByUserId = _loadQuery('user', 'updatePersonByUserId')
const updateCompanyByUserId = _loadQuery('user', 'updateCompanyByUserId')
const addPerson = _loadQuery('user', 'addPerson')
const updateUserById = _loadQuery('user', 'updateUserById')
const getResumeListWithPage = _loadQuery('user', 'getResumeListWithPage')
const getCompanyByUserId = _loadQuery('user', 'getCompanyByUserId')
const getProductListWithPage = _loadQuery('user', 'getProductListWithPage')
const Sequelize = require('sequelize')
const Op = Sequelize.Op
const productModel = _loadModel('websiteUser', 'product')
const jobModel = _loadModel('websiteUser', 'job')
const serviceModel = _loadModel('websiteUser', 'service')
const addProduct = _loadQuery('user', 'addProduct')
const addJob = _loadQuery('user', 'addJob')
const addService = _loadQuery('user', 'addService')
const addResume = _loadQuery('user', 'addResume')
const updateResumeById = _loadQuery('user', 'updateResumeById')
const getResumeById = _loadQuery('user', 'getResumeById')
const resumeMode = _loadModel('websiteUser', 'resume')
const updateProductById = _loadQuery('user', 'updateProductById')
const getProductById = _loadQuery('user', 'getProductById')
const getJobById = _loadQuery('user', 'getJobById')
const getServiceById = _loadQuery('user', 'getServiceById')
const updateServiceById = _loadQuery('user', 'updateServiceById')
const updateJobById = _loadQuery('user', 'updateJobById')
router.all('/account', async (ctx, next) => {
    console.log(11111)
    if(ctx.session.homeLogin == null){
        ctx.redirect('/')
    }else {
        await next()
    }
})

router.get('/account/info', async (ctx) => {
    if(ctx.session.homeLogin && ctx.session.homeLogin.type == 1){
        const psersonInfo = await getCompanyByUserId(ctx.session.homeLogin.id)
        ctx.body = await ctx.render('home/account/companyInfo', {
            homeLogin: ctx.session.homeLogin,
            psersonInfo,
        })
    }else if (ctx.session.homeLogin && ctx.session.homeLogin.type == 0){
        const psersonInfo = await getPersonByUserId(ctx.session.homeLogin.id)
        ctx.body = await ctx.render('home/account/personInfo', {
            homeLogin: ctx.session.homeLogin,
            psersonInfo,
        })
    }else{
        ctx.redirect('/')
    }
})

router.get('/account/modify', async (ctx) => {
    const psersonInfo = await getPersonByUserId(ctx.session.homeLogin.id)
    ctx.body = await ctx.render('home/account/personModify.swig', {
        homeLogin: ctx.session.homeLogin,
        psersonInfo,
    })
})
router.get('/account/modifyC', async (ctx) => {
    const psersonInfo = await getCompanyByUserId(ctx.session.homeLogin.id)
    ctx.body = await ctx.render('home/account/companyModify.swig', {
        homeLogin: ctx.session.homeLogin,
        psersonInfo,
    })
})

router.get('/account/auth', async (ctx) => {
    const psersonInfo = await getPersonByUserId(ctx.session.homeLogin.id)
    ctx.body = await ctx.render('home/account/auth.swig', {
        homeLogin: ctx.session.homeLogin,
        psersonInfo,
    })
})
router.get('/account/resume', async (ctx) => {
    const psersonInfo = await getPersonByUserId(ctx.session.homeLogin.id)
    ctx.body = await ctx.render('home/account/personalResume.swig', {
        homeLogin: ctx.session.homeLogin,
        psersonInfo,
    })
})
router.get('/account/resumeM', async (ctx) => {
    const psersonInfo = await getPersonByUserId(ctx.session.homeLogin.id)
    const result = await getResumeListWithPage({personId: psersonInfo.id},{pageSize: 1000});
    ctx.body = await ctx.render('home/account/personalResumeM.swig', {
        homeLogin: ctx.session.homeLogin,
        psersonInfo,
        list: result
    })
})
router.post('/account/save/:userId', async (ctx) => {
    try {
        const comResult = await getPersonByUserId(ctx.params.userId);
        if (comResult) {
            const result = updatePersonByUserId(ctx.params.userId, ctx.request.body)
            if (result) {
                ctx.body = _successResponse('个人信息操作成功', result);
            } else {
                ctx.body = _errorResponse('个人信息操作失败', result);
            }
        } else {
            ctx.request.body.userId = ctx.params.userId;
            const result = addPerson(ctx.request.body);
            if (result) {
                ctx.body = _successResponse('个人信息操作成功', result);
            } else {
                ctx.body = _errorResponse('个人信息操作失败', result);
            }
        }

    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.get('/account/mation', async (ctx) => {
    const psersonInfo = await getCompanyByUserId(ctx.session.homeLogin.id)
    ctx.body = await ctx.render('home/account/companyMation.swig', {
        homeLogin: ctx.session.homeLogin,
        psersonInfo,
    })
})
router.post('/account/saveCompany/:userId', async (ctx) => {
    try {
        const comResult = await getCompanyByUserId(ctx.params.userId);
        if (comResult) {
            const result = updateCompanyByUserId(ctx.params.userId, ctx.request.body)
            if (result) {
                ctx.body = _successResponse('信息操作成功', result);
            } else {
                ctx.body = _errorResponse('信息操作失败', result);
            }
        } else {
            ctx.request.body.userId = ctx.params.userId;
            const result = addPerson(ctx.request.body);
            if (result) {
                ctx.body = _successResponse('个人信息操作成功', result);
            } else {
                ctx.body = _errorResponse('个人信息操作失败', result);
            }
        }

    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})

router.post('/account/savePassWord', async (ctx) => {
    try {
        if(ctx.request.body.oldPass != ctx.session.homeLogin.password){
            ctx.body = _errorResponse('原密码不正确');
            return false;
        }

        var result = await updateUserById({
            password: ctx.request.body.password
        }, ctx.session.homeLogin.id);


        if(result) {
            ctx.session.homeLogin.password = ctx.request.body.password
            ctx.body = _successResponse('用户更新成功', result);
        }else{
            ctx.body = _errorResponse('用户更新失败');
        }

    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})


router.post('/account/addResume', async (ctx) => {
    try {
        //简历不需要审核
        const psersonInfo = await getPersonByUserId(ctx.session.homeLogin.id)
        ctx.request.body.status = 1;
        ctx.request.body.personId = psersonInfo.id;
        if(ctx.request.body.id){
            const result = await updateResumeById(ctx.request.body.id, ctx.request.body);
            ctx.body = _successResponse('更新成功', result);
        }else{
            const result = await addResume(ctx.request.body);
            ctx.body = _successResponse('添加成功', result);
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.post('/account/checkResume', async (ctx) => {
    try {
        const result = await resumeMode.update(ctx.request.body, { where: {id: ctx.request.body.id} })
        ctx.body = _successResponse('成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})

router.post('/account/delResume', async (ctx) => {
    try {
        const result = await resumeMode.destroy({where: {id: ctx.request.body.id}})
        ctx.body = _successResponse('成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})

router.get('/account/editResume/:id', async (ctx) => {
    const pageData = {
        homeLogin: ctx.session.homeLogin,
        detail: await getResumeById(ctx.params.id)
    }
    ctx.body = await ctx.render('home/account/personalResume.swig', pageData)
})


router.get('/account/addProduct', async (ctx) => {
    const psersonInfo = await getCompanyByUserId(ctx.session.homeLogin.id)
    ctx.body = await ctx.render('home/account/addProduct.swig', {
        homeLogin: ctx.session.homeLogin,
        psersonInfo,
    })
})

router.get('/account/editProduct/:id', async (ctx) => {
    const pageData = {
        homeLogin: ctx.session.homeLogin,
        detail: await getProductById(ctx.params.id)
    }
    ctx.body = await ctx.render('home/account/addProduct.swig', pageData)
})

router.post('/account/delProduct', async (ctx) => {
    try {
        const result = await productModel.destroy({where: {id: ctx.request.body.id}})
        ctx.body = _successResponse('成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.post('/account/addProduct', async (ctx) => {

    try {
        const comInfo = await getCompanyByUserId(ctx.session.homeLogin.id)
        //需要审核
        ctx.request.body.status = 0;
        ctx.request.body.companyId = comInfo.id;

        if(ctx.request.body.id){
            const result = await updateProductById(ctx.request.body.id, ctx.request.body);
            ctx.body = _successResponse('更新成功', result);
        }else{
            const result = await addProduct(ctx.request.body);
            ctx.body = _successResponse('添加成功', result);
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})

router.post('/account/checkProduct', async (ctx) => {

    try {
        const result = await updateProductById(ctx.request.body.id, ctx.request.body);
        ctx.body = _successResponse('更新成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})

router.get('/account/productShenhe', async (ctx) => {
    const psersonInfo = await getCompanyByUserId(ctx.session.homeLogin.id)
    const list = await productModel.findAll({
        where: {
            status: {
                [Op.ne]: 1,
            },
            companyId: psersonInfo.id
        }
    })
    ctx.body = await ctx.render('home/account/productShenhe.swig', {
        homeLogin: ctx.session.homeLogin,
        psersonInfo,
        list
    })
})

router.get('/account/productZhanshi', async (ctx) => {
    const psersonInfo = await getCompanyByUserId(ctx.session.homeLogin.id)
    const list = await productModel.findAll({
        where: {
            status: 1,
            companyId: psersonInfo.id
        }
    })
    ctx.body = await ctx.render('home/account/productZhanshi.swig', {
        homeLogin: ctx.session.homeLogin,
        psersonInfo,
        list
    })
})
router.get('/account/addJob', async (ctx) => {
    const psersonInfo = await getCompanyByUserId(ctx.session.homeLogin.id)
    ctx.body = await ctx.render('home/account/addJob.swig', {
        homeLogin: ctx.session.homeLogin,
        psersonInfo,
    })
})
router.post('/account/delJob', async (ctx) => {
    try {
        const result = await jobModel.destroy({where: {id: ctx.request.body.id}})
        ctx.body = _successResponse('成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.get('/account/editJob/:id', async (ctx) => {
    const pageData = {
        homeLogin: ctx.session.homeLogin,
        detail: await getJobById(ctx.params.id)
    }
    ctx.body = await ctx.render('home/account/addJob.swig', pageData)
})

router.post('/account/checkJob', async (ctx) => {

    try {
        const result = await updateJobById(ctx.request.body.id, ctx.request.body);
        ctx.body = _successResponse('更新成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.post('/account/addJob', async (ctx) => {
    try {

        if(ctx.request.body.id){
            const result = await updateJobById(ctx.request.body.id, ctx.request.body);
            ctx.body = _successResponse('更新成功', result);
        }else{
            const comInfo = await getCompanyByUserId(ctx.session.homeLogin.id)
            ctx.request.body.status = 0;
            ctx.request.body.companyId = comInfo.id;
            const result = addJob(ctx.request.body);
            ctx.body = _successResponse('内容添加成功', result);
        }


    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})

router.get('/account/jobShenhe', async (ctx) => {
    const psersonInfo = await getCompanyByUserId(ctx.session.homeLogin.id)
    const list = await jobModel.findAll({
        where: {
            status: {
                [Op.ne]: 1,
            },
            companyId: psersonInfo.id
        }
    })
    ctx.body = await ctx.render('home/account/jobShenhe.swig', {
        homeLogin: ctx.session.homeLogin,
        psersonInfo,
        list
    })
})

router.get('/account/jobZhanshi', async (ctx) => {
    const psersonInfo = await getCompanyByUserId(ctx.session.homeLogin.id)
    const list = await jobModel.findAll({
        where: {
            status: 1,
            companyId: psersonInfo.id
        }
    })
    ctx.body = await ctx.render('home/account/jobZhanshi.swig', {
        homeLogin: ctx.session.homeLogin,
        psersonInfo,
        list
    })
})
router.post('/account/delService', async (ctx) => {
    try {
        const result = await serviceModel.destroy({where: {id: ctx.request.body.id}})
        ctx.body = _successResponse('成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.post('/account/checkService', async (ctx) => {
    try {
        const result = await serviceModel.update(ctx.request.body, { where: {id: ctx.request.body.id} })
        ctx.body = _successResponse('成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.get('/account/editService/:id', async (ctx) => {
    const pageData = {
        homeLogin: ctx.session.homeLogin,
        detail: await getServiceById(ctx.params.id)
    }
    ctx.body = await ctx.render('home/account/addService.swig', pageData)
})
router.get('/account/addService', async (ctx) => {
    const psersonInfo = await getCompanyByUserId(ctx.session.homeLogin.id)
    ctx.body = await ctx.render('home/account/addService.swig', {
        homeLogin: ctx.session.homeLogin,
        psersonInfo,
    })
})
router.post('/account/addService', async (ctx) => {
    try {
        if(ctx.request.body.id){
            const result = await updateServiceById(ctx.request.body.id, ctx.request.body);
            ctx.body = _successResponse('更新成功', result);
        }else{
            const comInfo = await getCompanyByUserId(ctx.session.homeLogin.id)
            ctx.request.body.status = 0;
            ctx.request.body.companyId = comInfo.id;
            const result = addService(ctx.request.body);
            ctx.body = _successResponse('添加成功', result);
        }

    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})

router.get('/account/serviceShenhe', async (ctx) => {
    const psersonInfo = await getCompanyByUserId(ctx.session.homeLogin.id)
    const list = await serviceModel.findAll({
        where: {
            status: {
                [Op.ne]: 1,
            },
            companyId: psersonInfo.id
        }
    })
    ctx.body = await ctx.render('home/account/serviceShenhe.swig', {
        homeLogin: ctx.session.homeLogin,
        psersonInfo,
        list
    })
})

router.get('/account/serviceZhanshi', async (ctx) => {
    const psersonInfo = await getCompanyByUserId(ctx.session.homeLogin.id)
    const list = await serviceModel.findAll({
        where: {
            status: 1,
            companyId: psersonInfo.id
        }
    })
    ctx.body = await ctx.render('home/account/serviceZhanshi.swig', {
        homeLogin: ctx.session.homeLogin,
        psersonInfo,
        list
    })
})

