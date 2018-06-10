const companyMode = _loadModel('websiteUser', 'company')
const userMode = _loadModel('websiteUser', 'user')

module.exports = function (filter, pageInfo = {currentPage: 1, pageSize: 10}, order = [['id', 'DESC']]) {
    const newPageInfo = Object.assign({currentPage: 1, pageSize: 10}, pageInfo)
    return companyMode.findAndCountAll({
        where: filter,
        offset: (newPageInfo.currentPage - 1) * newPageInfo.pageSize,
        limit: newPageInfo.pageSize,
        order: order,
        include: [{
            model: userMode
        }]
    });
}