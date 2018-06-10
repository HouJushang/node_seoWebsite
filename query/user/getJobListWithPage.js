const jobModel = _loadModel('websiteUser', 'job')
const companyModel = _loadModel('websiteUser', 'company')
module.exports = function (filter = {},  pageInfo = {currentPage: 1, pageSize: 10}, order = [['id', 'DESC']]) {
    const newPageInfo = Object.assign({currentPage: 1, pageSize: 10}, pageInfo)
    return jobModel.findAndCountAll({
        where: filter,
        offset: (newPageInfo.currentPage - 1) * newPageInfo.pageSize,
        limit: newPageInfo.pageSize,
        order: order,
        include: [companyModel]
    });
}