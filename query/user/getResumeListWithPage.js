const resumeModel = _loadModel('websiteUser', 'resume')
const gongzuoModel = _loadModel('websiteUser', 'gongzuo')
const jiaoyuModel = _loadModel('websiteUser', 'jiaoyu')
const peixunModel = _loadModel('websiteUser', 'peixun')
module.exports = function (filter = {},  pageInfo = {currentPage: 1, pageSize: 10}, order = [['id', 'DESC']]) {
    const newPageInfo = Object.assign({currentPage: 1, pageSize: 10}, pageInfo)
    return resumeModel.findAndCountAll({
        where: filter,
        offset: (newPageInfo.currentPage - 1) * newPageInfo.pageSize,
        limit: newPageInfo.pageSize,
        order: order,
        include: [
            {model: gongzuoModel, as: 'gongzuo'},
            {model: jiaoyuModel, as: 'jiaoyu'},
            {model: peixunModel, as: 'peixun'},
        ]
    });
}