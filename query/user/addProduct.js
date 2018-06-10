const productModel = _loadModel('websiteUser', 'product')
module.exports = function (data) {
    return productModel.create(data);
}