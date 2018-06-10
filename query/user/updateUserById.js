const userModel = _loadModel('websiteUser', 'user');
module.exports = function (data, id) {
    return userModel.update(data, {where: {id: id}})
}
