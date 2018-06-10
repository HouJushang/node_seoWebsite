const categoryQuery = _loadQuery('categoryQuery')
const webInfoQuery = _loadQuery('webInfoQuery')
module.exports = async function (websiteId) {
    const webInfo = webInfoQuery.getWebInfo(websiteId)
    const topCategory = categoryQuery.allTopCategory(websiteId)
    return {
        template: 'index',
        data: {
            websiteId,
            webInfo: await webInfo,
            topCategory: await topCategory,
            categoryId: 'index'
        }
    }
}
