const categoryQuery = _loadQuery('categoryQuery')
const webInfoQuery = _loadQuery('webInfoQuery')
const bannerQuery = _loadQuery('bannerQuery')
const productQuery = _loadQuery('productQuery')
const indexQuery = _loadQuery('indexQuery')
const newsQuery = _loadQuery('newsQuery')
const aboutQuery = _loadQuery('aboutQuery')

module.exports = async function (websiteId, categoryId) {
    const webInfo = webInfoQuery.getWebInfo(websiteId)
    const topCategory = categoryQuery.allTopCategory(websiteId)
    const banner = bannerQuery.allBanner(websiteId, 'about')
    const tjNews = newsQuery.getTjNews(websiteId)
    const allAbout = aboutQuery.getAllAbout(categoryId)


    const currentCategory = categoryQuery.getDetail(categoryId)

    const result = {
        template: 'about',
        data: {
            websiteId,
            currentCategory: await currentCategory,
            banner: await banner,
            tjNews: await tjNews,
            webInfo: await webInfo,
            allAbout: await allAbout,
            topCategory: await topCategory,
        }
    }
    return result
}