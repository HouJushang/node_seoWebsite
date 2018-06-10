const categoryModel = _loadModel('categoryModel')
module.exports = class {
    static async allTopCategory (websiteId){
        return categoryModel.findAll({
            where: {
                level: 1,
                websiteId: websiteId
            }
        })
    }
}