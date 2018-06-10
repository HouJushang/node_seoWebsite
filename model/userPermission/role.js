const Sequelize = require('sequelize');
const sequelize = _loadSequelize();
const Role = sequelize.define('role', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    name: { type: Sequelize.STRING, allowNull: false }
});
module.exports = Role;
