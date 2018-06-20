const Sequelize = require('sequelize')
const Op = Sequelize.Op
const thostModel = _loadModel('thostModel')
module.exports = class {
    static getAllAbout(categoryId) {
        return thostModel.findAll({
            where: {
                categoryId
            },
            order: [
                ['id', 'DESC'],
            ],
        })
    }

    static getDetail(id) {
        return thostModel.findOne({
            where: {
                id
            }
        })
    }
}