const categoryQuery = _loadQuery('categoryQuery')
const webInfoQuery = _loadQuery('webInfoQuery')
const bannerQuery = _loadQuery('bannerQuery')
const productQuery = _loadQuery('productQuery')
const indexQuery = _loadQuery('indexQuery')
const linkQuery = _loadQuery('linkQuery')
const newsQuery = _loadQuery('newsQuery')

module.exports = async function (websiteId, type, categoryId, page) {
    const webInfo = webInfoQuery.getWebInfo(websiteId)
    const topCategory = categoryQuery.allTopCategory(websiteId)
    const banner = bannerQuery.allBanner(websiteId, type)
    const topProduct = productQuery.topList(websiteId)
    const link = linkQuery.getAllLink(websiteId)
    const currentCategory = categoryQuery.getDetail(categoryId)
    const allCategory = categoryQuery.allList(websiteId)
    const topNewsCategory = categoryQuery.topNewsCategory(websiteId)
    const newsList = newsQuery.getNewsByCategoty(categoryId, {currentPage:1 , pageSize: 10})

    const result = {
        template: 'newsList',
        data: {
            websiteId,
            currentCategory: await currentCategory,
            allCategory: await allCategory,
            topProduct: await topProduct,
            link: await link,
            banner: await banner,
            webInfo: await webInfo,
            topCategory: await topCategory,
            topNewsCategory: await topNewsCategory,
            newsList: await newsList,
            categoryId,
        }
    }
    return result
}