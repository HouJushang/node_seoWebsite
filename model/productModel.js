const Sequelize = require('sequelize');
const sequelize = _loadSequelize();
const categoryModel = require('./categoryModel')
const webSite = require('./webSiteModel')
const productModel = sequelize.define('product', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    image: { type: Sequelize.STRING, allowNull: true,
        get: function() {
            const imgValue = this.getDataValue('image')
            if(imgValue){
                const result = imgValue.split(',')
                console.log(result)
                return result
            } else {
                return []
            }
        }
    },
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
    },
    websiteId: {
        type: Sequelize.INTEGER,
        references: {
            model: webSite,
            key: 'id',
        }
    }
});
module.exports = productModel;
