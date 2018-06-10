const Sequelize = require('sequelize');
const sequelize = _loadSequelize();
const webSite = sequelize.define('webSite', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    name: { type: Sequelize.STRING, allowNull: false },
    template: { type: Sequelize.STRING, allowNull: false, defaultValue: 'default' }
});
module.exports = webSite;
