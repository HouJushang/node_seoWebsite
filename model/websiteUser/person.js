const Sequelize = require('sequelize');
const sequelize = _loadSequelize();
const User = require('../websiteUser/user');
const person = sequelize.define('person', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    name: { type: Sequelize.STRING, allowNull: true },
    idcard: { type: Sequelize.STRING, allowNull: true },
    sex:{ type: Sequelize.INTEGER, allowNull: true },
    address: { type: Sequelize.STRING, allowNull: true },
    avatar: { type: Sequelize.STRING, allowNull: true },
});
person.belongsTo(User);
module.exports = person;
