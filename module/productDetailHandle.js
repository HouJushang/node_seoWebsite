const categoryQuery = _loadQuery('categoryQuery')
const webInfoQuery = _loadQuery('webInfoQuery')
const bannerQuery = _loadQuery('bannerQuery')
const productQuery = _loadQuery('productQuery')
const indexQuery = _loadQuery('indexQuery')
const newsQuery = _loadQuery('newsQuery')

module.exports = async function (websiteId, type, productId) {
    const webInfo = webInfoQuery.getWebInfo(websiteId)
    const topCategory = categoryQuery.allTopCategory(websiteId)
    const banner = bannerQuery.allBanner(websiteId, type)
    const topProduct = productQuery.topList(websiteId)
    const allCategory = categoryQuery.allList(websiteId)
    const topNewsCategory = categoryQuery.topNewsCategory(websiteId)
    const productCategory = categoryQuery.allProductCategory(websiteId)
    const productDetail = await productQuery.getDetail(productId)
    const tjNews = newsQuery.getTjNews(websiteId)


    const currentCategory = categoryQuery.getDetail(productDetail.categoryId)

    const result = {
        template: 'productDetail',
        data: {
            websiteId,
            productDetail,
            productCategory: await productCategory,
            currentCategory: await currentCategory,
            allCategory: await allCategory,
            topProduct: await topProduct,
            banner: await banner,
            tjNews: await tjNews,
            webInfo: await webInfo,
            topCategory: await topCategory,
            topNewsCategory: await topNewsCategory,
        }
    }
    return result
}