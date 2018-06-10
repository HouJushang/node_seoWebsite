const Sequelize = require('sequelize');
const sequelize = _loadSequelize();
const jiaoyu = sequelize.define('jiaoyu', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    startTime: { type: Sequelize.STRING, allowNull: true },
    endTime: { type: Sequelize.STRING, allowNull: true },
    school:{ type: Sequelize.STRING, allowNull: true },
    zhuanye: { type: Sequelize.STRING, allowNull: true },
    xueli: { type: Sequelize.STRING, allowNull: true },
});
module.exports = jiaoyu;
