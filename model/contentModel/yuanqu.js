/**
 * Created by hou on 2018/4/16.
 */
const Sequelize = require('sequelize');
const sequelize = _loadSequelize();
const category = require('../content/category')
const Yuanqu = sequelize.define('yuanqu', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    title: {type: Sequelize.STRING, allowNull: false},
    thumb: {type: Sequelize.STRING, allowNull: true},
    mianji: {type: Sequelize.STRING, allowNull: true},
    address: {type: Sequelize.STRING, allowNull: true},
    peitao: {type: Sequelize.STRING, allowNull: true},
    concatPeople: {type: Sequelize.STRING, allowNull: true},
    phone: {type: Sequelize.STRING, allowNull: true},
    fuwu: {type: Sequelize.TEXT, allowNull: true},
    youshi: {type: Sequelize.TEXT, allowNull: true},
    tiaojian: {type: Sequelize.TEXT, allowNull: true},
    status: {type: Sequelize.INTEGER, allowNull: false},
    sysadd: {type: Sequelize.INTEGER, allowNull: false},  // [后台人员，网站用户]
    addname: {type: Sequelize.STRING, allowNull: false},
});
Yuanqu.belongsTo(category);
module.exports = Yuanqu;