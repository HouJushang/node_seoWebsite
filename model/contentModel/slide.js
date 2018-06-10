/**
 * Created by hou on 2018/4/16.
 */
const Sequelize = require('sequelize');
const sequelize = _loadSequelize();
const category = require('../content/category')
const Slide = sequelize.define('slide', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    title: {type: Sequelize.STRING, allowNull: false},
    link: {type: Sequelize.STRING, allowNull: true},
    image: {type: Sequelize.STRING, allowNull: true},
    status: {type: Sequelize.INTEGER, allowNull: false},  // [待审核，审核通过，未通过]
    sysadd: {type: Sequelize.INTEGER, allowNull: false},  // [后台人员，网站用户]
    addname: {type: Sequelize.STRING, allowNull: false},
});
Slide.belongsTo(category);
module.exports = Slide;
