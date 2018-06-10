const Sequelize = require('sequelize');
const sequelize = _loadSequelize();
const webSite = require('./webSiteModel')
const bannerModel = sequelize.define('banner', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    title: { type: Sequelize.STRING, allowNull: false },
    image: { type: Sequelize.STRING, allowNull: false },
    websiteId: {
        type: Sequelize.INTEGER,
        references: {
            model: webSite,
            key: 'id',
        }
    }
});
module.exports = bannerModel;
