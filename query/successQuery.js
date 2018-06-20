const Sequelize = require('sequelize')
const Op = Sequelize.Op
const successModel = _loadModel('successModel')
module.exports = class {
    static getAllAbout(categoryId) {
        return successModel.findAll({
            where: {
                categoryId
            },
            order: [
                ['id', 'DESC'],
            ],
        })
    }

    static getDetail(id) {
        return successModel.findOne({
            where: {
                id
            }
        })
    }
}