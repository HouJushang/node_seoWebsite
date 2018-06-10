const Sequelize = require('sequelize');
const sequelize = require('../bin/sequelize')
const NewsData = sequelize.define('news_data', {
    body: { type: Sequelize.TEXT, allowNull: false },
});
module.exports = NewsData;
