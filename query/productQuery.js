const Sequelize = require('sequelize')
const Op = Sequelize.Op
const productModel = _loadModel('productModel')
module.exports = class {
    static topList (websiteId){
        return productModel.findAll({
            where: {
                websiteId: websiteId,
                position: {
                    [Op.like]: '%1%'
                },
            },
        })
    }
}