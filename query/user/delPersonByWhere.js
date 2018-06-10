const userModel = _loadModel('websiteUser', 'person')
module.exports = function (where) {
    return userModel.destroy({where: where})
}