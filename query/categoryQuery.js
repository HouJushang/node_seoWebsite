const Sequelize = require('sequelize')
const Op = Sequelize.Op
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
    static allIndexProductCategory(websiteId) {
        return categoryModel.findAll({
            where: {
                type: 'product',
                websiteId: websiteId,
                position: {
                    [Op.like]: '%1%'
                },
                // level: {
                //     [Op.ne]: 1,
                // }
            }
        })
    }
}