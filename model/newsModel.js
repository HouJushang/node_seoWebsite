const Sequelize = require('sequelize');
const sequelize = _loadSequelize();
const categoryModel = require('./categoryModel')
const webSite = require('./webSiteModel')
const newsModel = sequelize.define('news', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    title: { type: Sequelize.STRING, allowNull: false },
    description: { type: Sequelize.STRING, allowNull: true },
    keywords: { type: Sequelize.STRING, allowNull: true },
    content: { type: Sequelize.TEXT, allowNull: true },
    thumb: { type: Sequelize.STRING, allowNull: true },
    position: { type: Sequelize.STRING, allowNull: true },
    categoryId: {
        type: Sequelize.INTEGER,
        references: {
            model: categoryModel,
            key: 'id',
        }
    },
    websiteId: {
        type: Sequelize.INTEGER,
        references: {
            model: webSite,
            key: 'id',
        }
    }
});
module.exports = newsModel;
