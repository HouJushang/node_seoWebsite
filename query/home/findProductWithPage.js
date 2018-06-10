const ProductMode = _loadModel('websiteUser', 'product')
const companyMode = _loadModel('websiteUser', 'company')

module.exports = function (filter, pageInfo = {currentPage: 1, pageSize: 10}, order = [['id', 'DESC']]) {
    const newPageInfo = Object.assign({currentPage: 1, pageSize: 10}, pageInfo)
    return ProductMode.findAndCountAll({
        where: filter,
        offset: (newPageInfo.currentPage - 1) * newPageInfo.pageSize,
        limit: newPageInfo.pageSize,
        order: order,
        include: [{
            model: companyMode
        }]
    });
}