const webInfoModel = _loadModel('webInfoModel')
module.exports = class {
    static getWebInfo (websiteId){
        return webInfoModel.findOne({
            where: {
                websiteId: websiteId
            },
        })
    }
}