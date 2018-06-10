const userModel = _loadModel('websiteUser', 'job')
module.exports = function (id) {
    return userModel.destroy({where: {id: id}})
}