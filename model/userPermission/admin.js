const Sequelize = require('sequelize');
const sequelize = _loadSequelize();
const Admin = sequelize.define('admin', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    username: { type: Sequelize.STRING, allowNull: false },
    password: { type: Sequelize.STRING, allowNull: false },
});
module.exports = Admin;
