const Sequelize = require('sequelize')
const Op = Sequelize.Op
const newsModel = _loadModel('newsModel')
module.exports = class {
    static async getNewsByCategoty(categoryId, pageInfo) {
        return newsModel.findAll({
            where: {
                categoryId: categoryId
            },
            offset: (pageInfo.currentPage - 1) * pageInfo.pageSize,
            limit: pageInfo.pageSize,
            order: [
                ['id', 'DESC'],
            ],
        })
    }

    static getDetail(id) {
        return newsModel.findOne({
            where: {
                id
            }
        })
    }

}