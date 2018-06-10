const path = require('path')
const config = require('../config/app')
global._loadModel = function(name) {
    return require(path.join(config.appPath, 'model', name))
}
global._loadQuery = function(name) {
    return require(path.join(config.appPath, 'query', name))
}
global._loadSequelize = function() {
    return require(path.join(config.appPath, 'bin', 'sequelize'))
}
