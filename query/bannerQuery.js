const bannerModel = _loadModel('bannerModel')
module.exports = class {
    static allBanner (websiteId, type){
        return bannerModel.findAll({
            where: {
                type, websiteId
            }
        })
    }
}