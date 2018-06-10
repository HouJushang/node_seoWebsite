const Sequelize = require('sequelize');
const sequelize = _loadSequelize();
const Company = require('../websiteUser/company');
const Job = sequelize.define('job', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    title: {type: Sequelize.STRING, allowNull: false},
    name: {type: Sequelize.STRING, allowNull: true},
    xingzhi: {type: Sequelize.STRING, allowNull: true},
    jingyan: {type: Sequelize.STRING, allowNull: true},
    renshu: {type: Sequelize.STRING, allowNull: true},
    xueli: {type: Sequelize.STRING, allowNull: true},
    nianling: {type: Sequelize.STRING, allowNull: true},
    xinchou: {type: Sequelize.STRING, allowNull: true},
    address: {type: Sequelize.STRING, allowNull: true},
    xiangqing: {type: Sequelize.TEXT, allowNull: true},
    status: {type: Sequelize.INTEGER, allowNull: false},  // [待审核，审核通过，未通过]
    isShow: {type: Sequelize.INTEGER, allowNull: true, defaultValue: 0} //['不显示', '显示']
});
Job.belongsTo(Company);
module.exports = Job;
