/**
 * Created by hou on 2018/4/16.
 */
const Sequelize = require('sequelize');
const sequelize = _loadSequelize();
const category = require('../content/category')
const Qiye = sequelize.define('qiye', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    title: {type: Sequelize.STRING, allowNull: false},
    thumb: {type: Sequelize.STRING, allowNull: true},
    address: {type: Sequelize.STRING, allowNull: true},
    concatPeople: {type: Sequelize.STRING, allowNull: true},
    phone: {type: Sequelize.STRING, allowNull: true},
    mobile: {type: Sequelize.STRING, allowNull: true},
    website: {type: Sequelize.STRING, allowNull: true},
    email: {type: Sequelize.STRING, allowNull: true},
    content: {type: Sequelize.TEXT, allowNull: true},
    status: {type: Sequelize.INTEGER, allowNull: false},
    sysadd: {type: Sequelize.INTEGER, allowNull: false},  // [后台人员，网站用户]
    addname: {type: Sequelize.STRING, allowNull: false},
});
Qiye.belongsTo(category);
module.exports = Qiye;