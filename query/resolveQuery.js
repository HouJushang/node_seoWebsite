const Sequelize = require('sequelize')
const Op = Sequelize.Op
const resolveModel = _loadModel('resolveModel')
module.exports = class {
    static getAllAbout(categoryId) {
        return resolveModel.findAll({
            where: {
                categoryId
            },
            order: [
                ['id', 'DESC'],
            ],
        })
    }

    static getDetail(id) {
        return resolveModel.findOne({
            where: {
                id
            }
        })
    }
}