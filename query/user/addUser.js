const userModel = _loadModel('websiteUser', 'user')
module.exports = function (data) {
    return userModel.create(data);
}