const categoryQuery = _loadQuery('categoryQuery')
const webInfoQuery = _loadQuery('webInfoQuery')
const bannerQuery = _loadQuery('bannerQuery')
const productQuery = _loadQuery('productQuery')
const indexQuery = _loadQuery('indexQuery')
const linkQuery = _loadQuery('linkQuery')
const newsQuery = _loadQuery('newsQuery')

module.exports = async function (websiteId, categoryId, page) {
    const webInfo = webInfoQuery.getWebInfo(websiteId)
    const topCategory = categoryQuery.allTopCategory(websiteId)
    const banner = bannerQuery.allBanner(websiteId, 'product')
    const productCategory = categoryQuery.allProductCategory(websiteId)
    const link = linkQuery.getAllLink(websiteId)
    const currentCategory = categoryQuery.getDetail(categoryId)

    let productList
    if (currentCategory.level == 1){
         productList = productQuery.allList2(websiteId)
    } else {
         productList = productQuery.allList(categoryId)
    }
    const result = {
        template: 'productList',
        data: {
            websiteId,
            currentCategory: await currentCategory,
            link: await link,
            banner: await banner,
            webInfo: await webInfo,
            topCategory: await topCategory,
            productCategory: await productCategory,
            productList: await productList,
            categoryId,
        }
    }
    return result
}