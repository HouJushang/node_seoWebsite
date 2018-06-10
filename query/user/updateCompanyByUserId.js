const companyMode = _loadModel('websiteUser', 'company')
module.exports = function (userId, data) {
    return companyMode.update(data, {where: {userId: userId}})
}