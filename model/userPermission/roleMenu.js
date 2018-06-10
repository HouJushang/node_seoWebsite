const Sequelize = require('sequelize');
const sequelize = _loadSequelize();
const menuModel = _loadModel('userPermission', 'menu');
const roleModel = _loadModel('userPermission', 'role');
const RoleMenu = sequelize.define('role_menu', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
});
RoleMenu.belongsTo(menuModel);
RoleMenu.belongsTo(roleModel);
module.exports = RoleMenu;
