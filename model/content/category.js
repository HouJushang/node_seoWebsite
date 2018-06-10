/**
 * Created by hou on 2018/4/16.
 */
const Sequelize = require('sequelize');
const sequelize = _loadSequelize();
const roleModel = _loadModel('userPermission', 'role')
const Category = sequelize.define('category', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    name: { type: Sequelize.STRING, allowNull: false },
    model: { type: Sequelize.STRING, allowNull: false },
    template: { type: Sequelize.STRING, allowNull: false },
    description: { type: Sequelize.STRING, allowNull: false },
    keywords: { type: Sequelize.STRING, allowNull: false },
    image: { type: Sequelize.STRING, allowNull: false },
});
Category.belongsTo(roleModel);
module.exports = Category;
