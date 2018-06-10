/**
 * Created by hou on 2018/5/1.
 */
const Sequelize = require('sequelize');
const sequelize = _loadSequelize();
const category = require('../content/category')
const Expert = sequelize.define('expert', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    title: {type: Sequelize.STRING, allowNull: false},
    description: {type: Sequelize.STRING, allowNull: true},
    company: {type: Sequelize.STRING, allowNull: true},
    thumb: {type: Sequelize.STRING, allowNull: true},
    content: {type: Sequelize.TEXT, allowNull: true},
    status: {type: Sequelize.INTEGER, allowNull: false},
    sysadd: {type: Sequelize.INTEGER, allowNull: false},  // [后台人员，网站用户]
    addname: {type: Sequelize.STRING, allowNull: false},
});
Expert.belongsTo(category);
module.exports = Expert;