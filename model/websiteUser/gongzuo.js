const Sequelize = require('sequelize');
const sequelize = _loadSequelize();
const gongzuo = sequelize.define('gongzuo', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    startTime: { type: Sequelize.STRING, allowNull: true },
    endTime: { type: Sequelize.STRING, allowNull: true },
    gangwei:{ type: Sequelize.STRING, allowNull: true },
    companyName: { type: Sequelize.STRING, allowNull: true },
});
module.exports = gongzuo;
