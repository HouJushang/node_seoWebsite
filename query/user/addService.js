const serviceModel = _loadModel('websiteUser', 'service')
module.exports = function (data) {
    return serviceModel.create(data);
}