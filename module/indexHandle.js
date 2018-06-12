const categoryQuery = _loadQuery('categoryQuery')
const webInfoQuery = _loadQuery('webInfoQuery')
const bannerQuery = _loadQuery('bannerQuery')
const productQuery = _loadQuery('productQuery')

module.exports = async function (websiteId, type) {
    const webInfo = webInfoQuery.getWebInfo(websiteId)
    const topCategory = categoryQuery.allTopCategory(websiteId)
    const productCategory = categoryQuery.allIndexProductCategory(websiteId)
    const banner = bannerQuery.allBanner(websiteId, type)
    const topProduct = productQuery.topList(websiteId)
    return {
        template: 'index',
        data: {
            websiteId,
            topProduct: await topProduct,
            banner: await banner,
            webInfo: await webInfo,
            productCategory: await productCategory,
            topCategory: await topCategory,
            categoryId: 'index'
        }
    }
}
