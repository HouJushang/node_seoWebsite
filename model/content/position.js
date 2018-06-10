const Sequelize = require('sequelize');
const sequelize = _loadSequelize();
const Position = sequelize.define('position', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    title: { type: Sequelize.STRING, allowNull: false },
    model: { type: Sequelize.STRING, allowNull: false },
});
module.exports = Position;
