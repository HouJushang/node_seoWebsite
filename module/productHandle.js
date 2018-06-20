const categoryQuery = _loadQuery('categoryQuery')
const webInfoQuery = _loadQuery('webInfoQuery')
const bannerQuery = _loadQuery('bannerQuery')
const productQuery = _loadQuery('productQuery')
const indexQuery = _loadQuery('indexQuery')
const newsQuery = _loadQuery('newsQuery')

module.exports = async function (websiteId, categoryId, page) {
    const topCategory = categoryQuery.allTopCategory(websiteId)
    const banner = bannerQuery.allBanner(websiteId, 'product')
    const productCategory = categoryQuery.allProductCategory(websiteId)
    const currentCategory = await categoryQuery.getDetail(categoryId)
    const tjNews = newsQuery.getTjNews(websiteId)
    const tjProduct = productQuery.topList(websiteId)

    let productList
    if (currentCategory.child_ids) {
        const catArr = currentCategory.child_ids.split(',')
        catArr.push(categoryId)
        productList = productQuery.getAllProduct(catArr, {currentPage:1 , pageSize: 10})
    } else {
        productList = productQuery.getAllProductByCategoty(categoryId, {currentPage:1 , pageSize: 10})
    }
    const webInfo = await webInfoQuery.getWebInfo(websiteId)

    const result = {
        template:`${webInfo.template}/productList`,
        data: {
            websiteId,
            currentCategory,
            banner: await banner,
            webInfo: webInfo,
            tjNews: await tjNews,
            tjProduct: await tjProduct,
            topCategory: await topCategory,
            productCategory: await productCategory,
            productList: await productList,
            categoryId,
        }
    }
    return result
}