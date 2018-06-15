const indexModel = _loadModel('indexInfoModel')
module.exports = class {
    static info (websiteId){
        return indexModel.findOne({
            where: {
                websiteId: websiteId
            },
        })
    }
}