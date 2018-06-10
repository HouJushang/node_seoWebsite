const Sequelize = require('sequelize');
const sequelize = _loadSequelize();
const categoryModel = require('./categoryModel')
const newsModel = sequelize.define('news', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    image: { type: Sequelize.STRING, allowNull: true },
    title: { type: Sequelize.STRING, allowNull: false },
    brand: { type: Sequelize.STRING, allowNull: false },
    price: { type: Sequelize.DECIMAL(18, 2) , allowNull: true },
    description: { type: Sequelize.STRING, allowNull: false },
    content: { type: Sequelize.TEXT, allowNull: false },
    position: { type: Sequelize.STRING, allowNull: false },
    categoryId: {
        type: Sequelize.INTEGER,
        references: {
            model: categoryModel,
            key: 'id',
        }
    }
});
module.exports = newsModel;
