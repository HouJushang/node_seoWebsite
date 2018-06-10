const sequelize = _loadSequelize();
const positionModel = _loadModel('content', 'position');
const modelDirMap = require('../../model/modelDirMap')
module.exports = async function(positionId) {
    const positionResult = await positionModel.findOne({where: {id : positionId}});
    const contentModel = _loadModel(modelDirMap[positionResult.model][0], modelDirMap[positionResult.model][1])
    const tableName = contentModel.getTableName();
    const sql = `SELECT ${tableName}.*, positionContents.* FROM ${tableName},positionContents  WHERE positionContents.positionId = ${positionId} AND positionContents.artId = ${tableName}.id `;
    return sequelize.query(sql, { type : sequelize.QueryTypes.SELECT })
}