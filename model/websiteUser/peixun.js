const Sequelize = require('sequelize');
const sequelize = _loadSequelize();
const peixun = sequelize.define('peixun', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    startTime: { type: Sequelize.STRING, allowNull: true },
    endTime: { type: Sequelize.STRING, allowNull: true },
    kecheng:{ type: Sequelize.STRING, allowNull: true },
    jigou: { type: Sequelize.STRING, allowNull: true },
    content: { type: Sequelize.TEXT, allowNull: true },
});
module.exports = peixun;
