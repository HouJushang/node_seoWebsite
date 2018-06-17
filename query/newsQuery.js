const Sequelize = require('sequelize')
const Op = Sequelize.Op
const newsModel = _loadModel('newsModel')
module.exports = class {
    static async getNewsByCategoty(categoryId, pageInfo) {
        return newsModel.findAndCountAll({
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

    static getAllNews(categoryIdArr, pageInfo) {
        return newsModel.findAndCountAll({
            where: {
                categoryId: {
                    [Op.in]: categoryIdArr,
                }
            },
            offset: (pageInfo.currentPage - 1) * pageInfo.pageSize,
            limit: pageInfo.pageSize,
            order: [
                ['id', 'DESC'],
            ],
        })
    }

    static getTjNews(websiteId){
        return newsModel.findAll({
            where: {
                websiteId: websiteId,
                position: {
                    [Op.like]: '%1%'
                }
            },
            offset: 0,
            limit: 10,
            order: [
                ['id', 'DESC'],
            ],
        })
    }

}