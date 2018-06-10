/**
 * Created by hou on 2018/4/16.
 */
const Sequelize = require('sequelize');
const sequelize = _loadSequelize();
const category = require('../content/category')
const News = sequelize.define('news', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    title: {type: Sequelize.STRING, allowNull: false},
    description: {type: Sequelize.STRING, allowNull: true},
    author: {type: Sequelize.STRING, allowNull: true},
    origin: {type: Sequelize.STRING, allowNull: true},
    thumb: {type: Sequelize.STRING, allowNull: true},
    content: {type: Sequelize.TEXT, allowNull: true},
    status: {type: Sequelize.INTEGER, allowNull: false},
    sysadd: {type: Sequelize.INTEGER, allowNull: false},  // [后台人员，网站用户]
    addname: {type: Sequelize.STRING, allowNull: false},
});
News.belongsTo(category);
module.exports = News;