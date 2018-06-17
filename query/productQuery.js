const Sequelize = require('sequelize')
const Op = Sequelize.Op
const productModel = _loadModel('productModel')
module.exports = class {
    //推荐产品
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

    //获取某栏目下的所有产品
    static allList (categoryId){
        return productModel.findAll({
            where: {
                categoryId,
            }
        })
    }

    //获取顶级栏目下面的产品
    static allList2 (websiteId){
        return productModel.findAll({
            where: {
                websiteId,
            }
        })
    }

    static async getAllProductByCategoty(categoryId, pageInfo) {
        return productModel.findAndCountAll({
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

    static getAllProduct(categoryIdArr, pageInfo) {
        return productModel.findAndCountAll({
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

    static getDetail(id) {
        return productModel.findOne({
            where: {
                id
            }
        })
    }

}