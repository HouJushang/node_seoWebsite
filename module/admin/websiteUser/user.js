/**
 * Created by hou on 2018/4/15.
 */
const router = require('../../router');
const Sequelize = require('sequelize')
const Op = Sequelize.Op
const getUserListWithPage = _loadQuery('user', 'getUserListWithPage');
const countUserByWhere = _loadQuery('user', 'countUserByWhere');
const addUser = _loadQuery('user', 'addUser');
const addCompany = _loadQuery('user', 'addCompany');
const addPerson = _loadQuery('user', 'addPerson');
const delUserByWhere = _loadQuery('user', 'delUserByWhere');
const delPersonByWhere = _loadQuery('user', 'delPersonByWhere');
const delCompanyByWhere = _loadQuery('user', 'delCompanyByWhere');
const updateUserById = _loadQuery('user', 'updateUserById')
const defaultUrl = '/admin/websiteUser';
router.get(defaultUrl, async (ctx) => {
    try {
        const result = await getUserListWithPage();
        ctx.body = _successResponse('用户列表获取成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.post(defaultUrl, async (ctx) => {
    try {
        var result = await countUserByWhere({phone: ctx.request.body.phone});
        if(result > 0){
            ctx.body = _errorResponse('该手机号码已经存在', result);
            return false;
        }
        if(ctx.request.body.type == 0){
            var result = await addUser(ctx.request.body);
            await addPerson({userId: result.id})
            ctx.body = _successResponse('用户添加成功', result);
        }
        if(ctx.request.body.type == 1){
            var result = await addUser(ctx.request.body);
            await addCompany({userId: result.id})
            ctx.body = _successResponse('用户添加成功', result);
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.put(defaultUrl, async (ctx) => {
    try {
        var result = await countUserByWhere({phone: ctx.request.body.phone, id: {[Op.ne]: ctx.request.body.id}});
        if(result > 0){
            ctx.body = _errorResponse('该手机号已经存在', result);
            return false;
        }
        var result = await updateUserById(ctx.request.body, ctx.request.body.id)
        if(result) {
            ctx.body = _successResponse('用户更新成功', result);
        }else{
            ctx.body = _errorResponse('用户更新失败');
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.delete(defaultUrl, async (ctx) => {
    try {
        const result = await delUserByWhere({id: ctx.request.query.userId})
        const result2= await delPersonByWhere({id: ctx.request.query.id})
        if(result && result2) {
            ctx.body = _successResponse('用户删除成功', result);
        }else{
            ctx.body = _errorResponse('用户删除失败');
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})

router.delete('/admin/websiteUser2', async (ctx) => {
    try {
        const result = await delUserByWhere({id: ctx.request.query.userId})
        const result2= await delCompanyByWhere({id: ctx.request.query.id})
        if(result && result2) {
            ctx.body = _successResponse('用户删除成功', result);
        }else{
            ctx.body = _errorResponse('用户删除失败');
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})


