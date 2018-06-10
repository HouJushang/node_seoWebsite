const productMode = _loadModel('websiteUser', 'product')
module.exports = function (id, data) {
    return productMode.update(data, {where: {id: id}})
}