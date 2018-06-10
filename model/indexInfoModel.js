const Sequelize = require('sequelize');
const sequelize = _loadSequelize();
const webSite = require('./webSiteModel')
const indexInfoModel = sequelize.define('indexInfo', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    image1: { type: Sequelize.STRING, allowNull: false },
    image2: { type: Sequelize.STRING, allowNull: false },
    image3: { type: Sequelize.STRING, allowNull: false },
    img_1: { type: Sequelize.STRING, allowNull: false },
    img_2: { type: Sequelize.STRING, allowNull: false },
    img_3: { type: Sequelize.STRING, allowNull: false },
    img_4: { type: Sequelize.STRING, allowNull: false },
    aboutImg: { type: Sequelize.STRING, allowNull: false },
    aboutInfo: { type: Sequelize.TEXT, allowNull: false },
    websiteId: {
        type: Sequelize.INTEGER,
        references: {
            model: webSite,
            key: 'id',
        }
    }
});
module.exports = indexInfoModel;
