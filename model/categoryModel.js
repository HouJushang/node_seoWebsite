const Sequelize = require('sequelize');
const sequelize = _loadSequelize();
const webSite = require('./webSiteModel')
const categoryModel = sequelize.define('category', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    name: { type: Sequelize.STRING, allowNull: false },
    level: {type: Sequelize.INTEGER, allowNull: false },
    child_ids: { type: Sequelize.STRING, allowNull: true },
    description: { type: Sequelize.STRING, allowNull: false },
    keywords: { type: Sequelize.STRING, allowNull: false },
    position: { type: Sequelize.STRING, allowNull: true },
    type: { type: Sequelize.STRING, allowNull: true },
    websiteId: {
        type: Sequelize.INTEGER,
        references: {
            model: webSite,
            key: 'id',
        }
    }
});
module.exports = categoryModel;
