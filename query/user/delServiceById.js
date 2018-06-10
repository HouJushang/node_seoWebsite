const serviceModel = _loadModel('websiteUser', 'service')
module.exports = function (id) {
    return serviceModel.destroy({where: {id: id}})
}