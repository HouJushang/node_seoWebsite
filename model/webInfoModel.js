const Sequelize = require('sequelize');
const sequelize = _loadSequelize();
const webSite = require('./webSiteModel')
const webInfoModel = sequelize.define('webInfo', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    title: { type: Sequelize.STRING, allowNull: false },
    description: { type: Sequelize.STRING, allowNull: false },
    keywords: { type: Sequelize.STRING, allowNull: false },
    logoImg: { type: Sequelize.STRING, allowNull: false },
    phoneImg: { type: Sequelize.STRING, allowNull: false },
    phone: { type: Sequelize.STRING, allowNull: false },
    email: { type: Sequelize.STRING, allowNull: false },
    copyRight: { type: Sequelize.STRING, allowNull: false },
    company: { type: Sequelize.STRING, allowNull: false },
    concatImg: { type: Sequelize.STRING, allowNull: false },
    address: { type: Sequelize.STRING, allowNull: false },
    web: { type: Sequelize.STRING, allowNull: false },
    fax: { type: Sequelize.STRING, allowNull: false },
    websiteId: {
        type: Sequelize.INTEGER,
        references: {
            model: webSite,
            key: 'id',
        }
    }
});
module.exports = webInfoModel;
