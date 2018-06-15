const Sequelize = require('sequelize')
const Op = Sequelize.Op
const linkModel = _loadModel('linkModel')
module.exports = class {
    static async getAllLink(websiteId) {
        return linkModel.findAll({
            where: {
                websiteId: websiteId
            }
        })
    }

}