const userModel = _loadModel('websiteUser', 'company')
module.exports = function (where) {
    return userModel.destroy({where: where})
}