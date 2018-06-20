const categoryQuery = _loadQuery('categoryQuery')
const webInfoQuery = _loadQuery('webInfoQuery')
const bannerQuery = _loadQuery('bannerQuery')
const productQuery = _loadQuery('productQuery')
const indexQuery = _loadQuery('indexQuery')
const newsQuery = _loadQuery('newsQuery')
const jobQuery = _loadQuery('jobQuery')

module.exports = async function (websiteId, categoryId) {
    const topCategory = categoryQuery.allTopCategory(websiteId)
    const banner = bannerQuery.allBanner(websiteId, 'about')
    const tjNews = newsQuery.getTjNews(websiteId)
    const allAbout = jobQuery.getAllAbout(categoryId)


    const currentCategory = categoryQuery.getDetail(categoryId)
    const webInfo = await webInfoQuery.getWebInfo(websiteId)

    const result = {
        template:`${webInfo.template}/about`,
        data: {
            websiteId,
            currentCategory: await currentCategory,
            banner: await banner,
            tjNews: await tjNews,
            webInfo: webInfo,
            allAbout: await allAbout,
            topCategory: await topCategory,
        }
    }
    return result
}