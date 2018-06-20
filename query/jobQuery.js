const Sequelize = require('sequelize')
const Op = Sequelize.Op
const jobModel = _loadModel('jobModel')
module.exports = class {
    static getAllAbout(categoryId) {
        return jobModel.findAll({
            where: {
                categoryId
            },
            order: [
                ['id', 'DESC'],
            ],
        })
    }

    static getDetail(id) {
        return jobModel.findOne({
            where: {
                id
            }
        })
    }
}