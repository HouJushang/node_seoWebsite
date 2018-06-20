const sequelize = require('../bin/sequelize')

require('./bannerModel')
require('./categoryModel')
require('./indexInfoModel')
require('./linkModel')
require('./newsModel')
require('./productModel')
require('./webInfoModel')
require('./webSiteModel')
require('./jobModel')
require('./resolveModel')
require('./serviceModel')
require('./successModel')
require('./thostModel')

module.exports = sequelize;
