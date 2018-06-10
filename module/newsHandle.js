const categoryQuery = _loadQuery('categoryQuery')
const webInfoQuery = _loadQuery('webInfoQuery')
module.exports = class {
    static async list(websiteId, categoryId, page) {
        const webInfo = webInfoQuery.getWebInfo(websiteId)
        const topCategory = categoryQuery.allTopCategory(websiteId)

        return {
            template: 'newsList',
            data: {
                websiteId,
                webInfo: await webInfo,
                topCategory: await topCategory,
                categoryId: categoryId
            }
        }
    }
}