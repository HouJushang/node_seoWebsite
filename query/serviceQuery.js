const Sequelize = require('sequelize')
const Op = Sequelize.Op
const serviceModel = _loadModel('serviceModel')
module.exports = class {
    static getAllAbout(categoryId) {
        return serviceModel.findAll({
            where: {
                categoryId
            },
            order: [
                ['id', 'DESC'],
            ],
        })
    }

    static getDetail(id) {
        return serviceModel.findOne({
            where: {
                id
            }
        })
    }
}