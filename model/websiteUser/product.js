const Sequelize = require('sequelize');
const sequelize = _loadSequelize();
const Company = require('../websiteUser/company');
const Product = sequelize.define('product', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    title: {type: Sequelize.STRING, allowNull: false},
    jiage: {type: Sequelize.STRING, allowNull: true},
    guige: {type: Sequelize.STRING, allowNull: true},
    chandi: {type: Sequelize.STRING, allowNull: true},
    link: {type: Sequelize.STRING, allowNull: true},
    image: {type: Sequelize.STRING, allowNull: true},
    content: {type: Sequelize.TEXT, allowNull: true},
    status: {type: Sequelize.INTEGER, allowNull: false},  // [待审核，审核通过，未通过]
    isShow: {type: Sequelize.INTEGER, allowNull: true, defaultValue: 0} //['不显示', '显示']
});
Product.belongsTo(Company);
module.exports = Product;
