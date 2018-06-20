const categoryQuery = _loadQuery('categoryQuery')
const webInfoQuery = _loadQuery('webInfoQuery')
const bannerQuery = _loadQuery('bannerQuery')
const productQuery = _loadQuery('productQuery')
const indexQuery = _loadQuery('indexQuery')
const linkQuery = _loadQuery('linkQuery')
const newsQuery = _loadQuery('newsQuery')

module.exports = async function (websiteId, type) {
    const topCategory = categoryQuery.allTopCategory(websiteId)
    const productCategory = categoryQuery.allIndexProductCategory(websiteId)
    const banner = bannerQuery.allBanner(websiteId, type)
    const topProduct = productQuery.topList(websiteId)
    const indexInfo = indexQuery.info(websiteId);
    const link = linkQuery.getAllLink(websiteId)
    const allIndexNewsCategory = await categoryQuery.allIndexNewsCategory(websiteId)
    allIndexNewsCategory.forEach(async item => {
        item.newsList = await newsQuery.getNewsByCategoty(item.id, {
            currentPage: 1,
            pageSize: 9
        })
        item.firstNews = item.newsList.shift()
    })
    const webInfo = await webInfoQuery.getWebInfo(websiteId)
    const result = {
        template:`${webInfo.template}/index`,
        data: {
            websiteId,
            allIndexNewsCategory,
            indexInfo: await indexInfo,
            topProduct: await topProduct,
            link: await link,
            banner: await banner,
            webInfo: webInfo,
            productCategory: await productCategory,
            topCategory: await topCategory,
            categoryId: 'index'
        }
    }
    return result
}
