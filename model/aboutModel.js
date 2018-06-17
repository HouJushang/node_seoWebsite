const Sequelize = require('sequelize');
const sequelize = _loadSequelize();
const categoryModel = require('./categoryModel')
const webSite = require('./webSiteModel')
const aboutModel = sequelize.define('about', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    title: { type: Sequelize.STRING, allowNull: false },
    content: { type: Sequelize.TEXT, allowNull: true },
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
module.exports = aboutModel;
