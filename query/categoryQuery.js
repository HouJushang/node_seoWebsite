const Sequelize = require('sequelize')
const Op = Sequelize.Op
const categoryModel = _loadModel('categoryModel')
module.exports = class {
    static async allTopCategory(websiteId) {
        return categoryModel.findAll({
            where: {
                level: 1,
                websiteId: websiteId
            },
            order: [
                ['order', 'DESC'],
            ],
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

    static allProductCategory(websiteId) {
        return categoryModel.findAll({
            where: {
                type: 'product',
                websiteId: websiteId
            }
        })
    }


    static allIndexNewsCategory(websiteId) {
        return categoryModel.findAll({
            where: {
                type: 'news',
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



    static getDetail(categoryId) {
        return categoryModel.findOne({
            where: {
                id: categoryId
            }
        })
    }

    static allList(websiteId) {
        return categoryModel.findAll({
            where: {
                websiteId: websiteId,
                level: 2,
                type: 'news'
            }
        })
    }

    static topNewsCategory(websiteId) {
        return categoryModel.findOne({
            where: {
                websiteId: websiteId,
                level: 1,
                type: 'news'
            }
        })
    }
}