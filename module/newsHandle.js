const categoryQuery = _loadQuery('categoryQuery')
const webInfoQuery = _loadQuery('webInfoQuery')
const bannerQuery = _loadQuery('bannerQuery')
// const productQuery = _loadQuery('productQuery')
const indexQuery = _loadQuery('indexQuery')
const linkQuery = _loadQuery('linkQuery')
const newsQuery = _loadQuery('newsQuery')

module.exports = async function (websiteId, type, categoryId, page) {
    const webInfo = webInfoQuery.getWebInfo(websiteId)
    const topCategory = categoryQuery.allTopCategory(websiteId)
    const banner = bannerQuery.allBanner(websiteId, type)
    const link = linkQuery.getAllLink(websiteId)
    const allCategory = categoryQuery.allList(websiteId)
    const topNewsCategory = categoryQuery.topNewsCategory(websiteId)
    const currentCategory = await categoryQuery.getDetail(categoryId)
    const tjNews = newsQuery.getTjNews(websiteId)

    let newsList = null;
    if (currentCategory.child_ids) {
        const catArr = currentCategory.child_ids.split(',')
        catArr.push(categoryId)
        newsList = newsQuery.getAllNews(catArr, {currentPage:1 , pageSize: 10})
    } else {
        newsList = newsQuery.getNewsByCategoty(categoryId, {currentPage:1 , pageSize: 10})
    }



    const result = {
        template: 'newsList',
        data: {
            websiteId,
            currentCategory: await currentCategory,
            allCategory: await allCategory,
            link: await link,
            banner: await banner,
            tjNews: await tjNews,
            webInfo: await webInfo,
            topCategory: await topCategory,
            topNewsCategory: await topNewsCategory,
            newsList: await newsList,
            categoryId,
        }
    }
    return result
}