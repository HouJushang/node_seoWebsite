const Sequelize = require('sequelize');
const sequelize = _loadSequelize();
const Admin = require('./admin')
const Role = require('./role')
const AdminRole = sequelize.define('admin_role', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true}
});
AdminRole.belongsTo(Admin);
AdminRole.belongsTo(Role);
module.exports = AdminRole;
