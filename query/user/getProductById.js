const productMode = _loadModel('websiteUser', 'product')
module.exports = function (id) {
    return productMode.findOne({
        where: {
            id: id
        },
    });
}