const personMode = _loadModel('websiteUser', 'person')
module.exports = function (userId, data) {
    return personMode.update(data, {where: {userId: userId}})
}