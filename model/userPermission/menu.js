const Sequelize = require('sequelize');
const sequelize = _loadSequelize();
const Menu = sequelize.define('menus', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    name: { type: Sequelize.STRING, allowNull: false },
    parentid: { type: Sequelize.INTEGER, allowNull: false },
    router: { type: Sequelize.STRING, allowNull: true },
    listorder: {type: Sequelize.INTEGER, allowNull: true, defaultValue: 0}
});
module.exports = Menu;
