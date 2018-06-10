const Sequelize = require('sequelize');
const sequelize = _loadSequelize();
const User = sequelize.define('user', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    phone: { type: Sequelize.STRING, allowNull: false },
    password: { type: Sequelize.STRING, allowNull: false },
    type: { type: Sequelize.INTEGER, allowNull: false }, //['个人用户'，'企业用户']
});
module.exports = User;
