const userModel = _loadModel('websiteUser', 'user')
module.exports = function (where) {
    return userModel.destroy({where: where})
}