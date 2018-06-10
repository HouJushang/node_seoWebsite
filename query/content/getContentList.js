module.exports = function (model, filter = {},  pageInfo = {currentPage: 1, pageSize: 10}, order = [['id', 'DESC']]) {
    const contentMode = _loadModel('contentModel', model)
    const newPageInfo = Object.assign({currentPage: 1, pageSize: 10}, pageInfo)
    return contentMode.findAll({
        where: filter,
        offset: (newPageInfo.currentPage - 1) * newPageInfo.pageSize,
        limit: newPageInfo.pageSize,
        order: order,
    });
}