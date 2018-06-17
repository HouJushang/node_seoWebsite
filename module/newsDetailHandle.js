const categoryQuery = _loadQuery('categoryQuery')
const webInfoQuery = _loadQuery('webInfoQuery')
const bannerQuery = _loadQuery('bannerQuery')
const productQuery = _loadQuery('productQuery')
const indexQuery = _loadQuery('indexQuery')
const linkQuery = _loadQuery('linkQuery')
const newsQuery = _loadQuery('newsQuery')

module.exports = async function (websiteId, type, newsId) {
    const webInfo = webInfoQuery.getWebInfo(websiteId)
    const topCategory = categoryQuery.allTopCategory(websiteId)
    const banner = bannerQuery.allBanner(websiteId, type)
    const topProduct = productQuery.topList(websiteId)
    const link = linkQuery.getAllLink(websiteId)
    const allCategory = categoryQuery.allList(websiteId)
    const topNewsCategory = categoryQuery.topNewsCategory(websiteId)
    const newsDetail = await newsQuery.getDetail(newsId)
    const tjNews = newsQuery.getTjNews(websiteId)



    const currentCategory = categoryQuery.getDetail(newsDetail.categoryId)

    const result = {
        template: 'newsDetail',
        data: {
            websiteId,
            newsDetail,
            currentCategory: await currentCategory,
            allCategory: await allCategory,
            topProduct: await topProduct,
            link: await link,
            tjNews: await tjNews,
            banner: await banner,
            webInfo: await webInfo,
            topCategory: await topCategory,
            topNewsCategory: await topNewsCategory,
            currentCategory: await currentCategory
        }
    }
    return result
}