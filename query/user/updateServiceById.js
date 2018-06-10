const serviceMode = _loadModel('websiteUser', 'service')
module.exports = function (id, data) {
    return serviceMode.update(data, {where: {id: id}})
}