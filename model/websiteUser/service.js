const Sequelize = require('sequelize');
const sequelize = _loadSequelize();
const Company = require('../websiteUser/company');
const Service = sequelize.define('service', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    title: {type: Sequelize.STRING, allowNull: false},
    description: {type: Sequelize.STRING, allowNull: true},
    fanshi: {type: Sequelize.STRING, allowNull: true},
    duixiang: {type: Sequelize.STRING, allowNull: true},
    leibie: {type: Sequelize.STRING, allowNull: true},
    jiage: {type: Sequelize.STRING, allowNull: true},
    fanwei: {type: Sequelize.STRING, allowNull: true},
    lianxi: {type: Sequelize.STRING, allowNull: true},
    image: {type: Sequelize.STRING, allowNull: true},
    content: {type: Sequelize.TEXT, allowNull: true},
    status: {type: Sequelize.INTEGER, allowNull: false},  // [待审核，审核通过，未通过]
    isShow: {type: Sequelize.INTEGER, allowNull: true, defaultValue: 0} //['不显示', '显示']
});
Service.belongsTo(Company);
module.exports = Service;
