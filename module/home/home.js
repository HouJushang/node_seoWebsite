/**
 * Created by hou on 2018/4/10.
 */
const router = require('../router');
const getContentList = _loadQuery('content', 'getContentList')
const getPositionContent = _loadQuery('content', 'getPositionContent')
const positionContentForHome = _loadQuery('user', 'positionContentForHome')
const getServiceListWithPage = _loadQuery('user', 'getServiceListWithPage')
const getCompanyListWithPage = _loadQuery('user', 'getCompanyListWithPage')
const getProductListWithPage = _loadQuery('user', 'getProductListWithPage')
const getResumeListWithPage = _loadQuery('user', 'getResumeListWithPage')
const getJobListWithPage = _loadQuery('user', 'getJobListWithPage')
router.get('/', async (ctx) => {
    const category1 = getContentList('news', {categoryId: 1, status: 1}, {pageSize: 6});
    const category2 = getContentList('news', {categoryId: 2, status: 1}, {pageSize: 6});
    const category3 = getContentList('news', {categoryId: 3, status: 1}, {pageSize: 6});
    const category4 = getContentList('news', {categoryId: 4, status: 1}, {pageSize: 6});
    const category7 = getContentList('news', {categoryId: 7, status: 1}, {pageSize: 6});

    const slide10 = getContentList('slide', {categoryId: 10, status: 1});
    const slide11 = getContentList('slide', {categoryId: 11, status: 1});
    const slide12 = getContentList('slide', {categoryId: 12, status: 1});
    const slide13 = getContentList('slide', {categoryId: 13, status: 1});
    const slide14 = getContentList('slide', {categoryId: 14, status: 1});
    const slide15 = getContentList('slide', {categoryId: 15, status: 1});

    const servicePosition4 = positionContentForHome(4);
    const servicePosition5 = positionContentForHome(5);
    const servicePosition6 = positionContentForHome(6);
    const servicePosition7 = positionContentForHome(7);
    const servicePosition8 = positionContentForHome(8);
    const servicePosition9 = positionContentForHome(9);

    const yuanqu = getContentList('yuanqu', {categoryId: 17, status: 1}, {pageSize: 5});
    const qiye = getContentList('qiye', {categoryId: 18, status: 1}, {pageSize: 5});

    const position1 = getPositionContent(1);

    const category19 = getContentList('slide', {categoryId: 19, status: 1}, {pageSize: 6});
    const category17 = getContentList('yuanqu', {categoryId: 17, status: 1}, {pageSize: 5});
    const category18 = getContentList('qiye', {categoryId: 18, status: 1}, {pageSize: 5});
    const category26 = getContentList('news', {categoryId: 26, status: 1}, {pageSize: 7});
    const category20 = getContentList('news', {categoryId: 20, status: 1}, {pageSize: 4})

    const hotDs = positionContentForHome(12)


    const category23 = getContentList('expert', {categoryId: 23, status: 1}, {pageSize: 3})
    const serviceList4 = getServiceListWithPage({leibie: '金融服务'}, {pageSize: 6})
    const serviceList5 = getServiceListWithPage({leibie: '电商代运营'}, {pageSize: 6})
    const serviceList6 = getServiceListWithPage({leibie: '营销推广'}, {pageSize: 6})
    const serviceList7 = getServiceListWithPage({leibie: '设计摄影'}, {pageSize: 6})
    const serviceList8 = getServiceListWithPage({leibie: '物流服务'}, {pageSize: 6})
    const serviceList9 = getServiceListWithPage({leibie: 'IT互联网服务'}, {pageSize: 6})

    const companyList = getCompanyListWithPage({}, {pageSize: 6});
    const productList = getProductListWithPage({}, {pageSize: 5});
    const resumeList = getResumeListWithPage({status: 1, isShow: 1}, {pageSize: 6})
    const jobList = getJobListWithPage({status: 1, isShow: 1}, {pageSize: 4})

    var pageData = {
        homeLogin: ctx.session.homeLogin,
        slide10: await slide10,
        slide11: await slide11,
        slide12: await slide12,
        slide13: await slide13,
        slide14: await slide14,
        slide15: await slide15,
        category1: await category1,
        category2: await category2,
        category3: await category3,
        category4: await category4,
        category7: await category7,
        hotDs: await hotDs,
        yuanqu: await yuanqu,
        qiye: await qiye,
        position1: await position1,
        category19: await category19,
        category18: await category18,
        category17: await category17,
        category26: await category26,
        servicePosition4: await servicePosition4,
        servicePosition5: await servicePosition5,
        servicePosition6: await servicePosition6,
        servicePosition7: await servicePosition7,
        servicePosition8: await servicePosition8,
        servicePosition9: await servicePosition9,
        serviceList4: await serviceList4,
        serviceList5: await serviceList5,
        serviceList6: await serviceList6,
        serviceList7: await serviceList7,
        serviceList8: await serviceList8,
        serviceList9: await serviceList9,
        companyList: await companyList,
        productList: await productList,
        resumeList: await resumeList,
        jobList: await jobList,
        category23: await category23,
        category20: await category20
    }
    console.log(pageData.servicePosition4)
    Object.assign(pageData, {
        category1Top: pageData.category1.shift(),
        category2Top: pageData.category2.shift(),
        category3Top: pageData.category3.shift(),
        category4Top: pageData.category4.shift(),
        category7Top: pageData.category7.shift(),
        servicePosition4: pageData.servicePosition4[0],
        servicePosition5: pageData.servicePosition5[0],
        servicePosition6: pageData.servicePosition6[0],
        servicePosition7: pageData.servicePosition7[0],
        servicePosition8: pageData.servicePosition8[0],
        servicePosition9: pageData.servicePosition9[0],
    })
   ctx.body = await ctx.render('home/index', pageData)
})