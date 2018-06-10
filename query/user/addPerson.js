const personModel = _loadModel('websiteUser', 'person')
module.exports = function (data) {
    return personModel.create(data);
}