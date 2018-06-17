const Sequelize = require('sequelize')
const Op = Sequelize.Op
const aboutModel = _loadModel('aboutModel')
module.exports = class {
    static getAllAbout(categoryId) {
        return aboutModel.findAll({
            where: {
                categoryId
            },
            order: [
                ['id', 'DESC'],
            ],
        })
    }

    static getDetail(id) {
        return aboutModel.findOne({
            where: {
                id
            }
        })
    }
}