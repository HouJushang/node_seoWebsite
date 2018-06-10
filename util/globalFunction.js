const path = require('path')
const config = require('../config/app')
global._loadModel = function(module, name) {
    return require(path.join(config.appPath, 'model', module, name))
}
global._loadQuery = function(module, name) {
    return require(path.join(config.appPath, 'query', module, name))
}
global._loadSequelize = function() {
    return require(path.join(config.appPath, 'bin', 'sequelize'))
}
global._successResponse = function(message = '操作成功', data = {}){
    return {
        code: 'success',
        data,
        message
    }
}
global._errorResponse = function(message = '操作失败', data = {}){
    return {
        code: 'error',
        data,
        message
    }
}
global._authErrorResponse = function(message = '操作失败', data = {}){
    return {
        code: 'authError',
        data,
        message
    }
}
