const sequelize = require('../bin/sequelize')

require('./bannerModel')
require('./categoryModel')
require('./indexInfoModel')
require('./linkModel')
require('./newsModel')
require('./productModel')
require('./webInfoModel')
require('./webSiteModel')

module.exports = sequelize;
