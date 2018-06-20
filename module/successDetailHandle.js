const categoryQuery = _loadQuery('categoryQuery')
const webInfoQuery = _loadQuery('webInfoQuery')
const bannerQuery = _loadQuery('bannerQuery')
const productQuery = _loadQuery('productQuery')
const indexQuery = _loadQuery('indexQuery')
const newsQuery = _loadQuery('newsQuery')
const successQuery = _loadQuery('successQuery')

module.exports = async function (websiteId, detailId) {
    const topCategory = categoryQuery.allTopCategory(websiteId)
    const banner = bannerQuery.allBanner(websiteId, 'about')
    const tjNews = newsQuery.getTjNews(websiteId)

    const aboutDetail = await successQuery.getDetail(detailId)

    const allAbout = successQuery.getAllAbout(aboutDetail.categoryId)
    const currentCategory = categoryQuery.getDetail(aboutDetail.categoryId)
    const webInfo = await webInfoQuery.getWebInfo(websiteId)

    const result = {
        template:`${webInfo.template}/aboutDetail`,
        data: {
            aboutDetail,
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