const productModel = _loadModel('websiteUser', 'product')
module.exports = function (id) {
    return productModel.destroy({where: {id: id}})
}